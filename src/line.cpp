//  Copyright (C) 2024 IcePanorama
//
//  This file is a part of A2600Disassembler.
//
//  A2600Disassembler is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by the
//  Free Software Foundation, either version 3 of the License, or (at your
//  option) any later version.
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program.  If not, see <https://www.gnu.org/licenses/>.
#include "line.hpp"
#include "zero_page_lookup.hpp"

#include <cstdint>
#include <format>
#include <string>

#define RAW_BYTES_STR_LEN (8)
#define ASM_INSTRUCTION_STR_LEN (16)

Line::Line (const uint16_t starting_addr, const Instruction &instruction,
            const std::vector<uint8_t> arguments)
    : starting_addr_ (starting_addr), instruction_ (instruction),
      arguments_ (arguments)
{
  if (addressing_mode_is_absolute (this->instruction_.get_addressing_mode ()))
    this->abs_address.emplace ((this->arguments_.at (0) << 0x8)
                               | this->arguments_.at (1));
}

uint16_t
Line::get_starting_addr (void) const
{
  return this->starting_addr_;
}

uint8_t
Line::get_instruction_length (void) const
{
  // +1 for op code
  return this->instruction_.get_num_arguments () + 1;
}

std::string
Line::to_string (void)
{
  if (assembly_instruction.empty ())
    assembly_instruction = this->create_assembly_instruction_string ();
  if (comment.empty ())
    comment = this->create_comments (this->instruction_.get_addressing_mode (),
                                     this->arguments_);

  std::string raw_bytes
      = std::format ("{:02X} ", this->instruction_.get_opcode ());
  for (const auto &arg : this->arguments_)
    raw_bytes.append (std::format ("{:02X} ", arg));

  if (!raw_bytes.empty ())
    raw_bytes.pop_back ();

  raw_bytes.insert (raw_bytes.end (), RAW_BYTES_STR_LEN - raw_bytes.size (),
                    ' ');

  return std::format ("  {:04X}  {}  {}  {}", this->starting_addr_, raw_bytes,
                      assembly_instruction,
                      comment.empty () ? "" : "; " + comment);
}

std::string
Line::create_assembly_instruction_string (void)
{
  std::string output = std::format (
      "{} {}", this->instruction_.get_asm_instruction (),
      this->format_arguments (this->instruction_.get_addressing_mode (),
                              arguments_));

  output.insert (output.end (), ASM_INSTRUCTION_STR_LEN - output.size (), ' ');
  return output;
}

std::string
Line::format_arguments (const AddressingMode_e &am,
                        const std::vector<uint8_t> &args) const
{
  std::string output;
  switch (am)
    {
    case AM_ACCUMULATOR:
      return "A";
    case AM_ABSOLUTE:
      return this->format_absolute_addr_arguments ();
    case AM_ABSOLUTE_X_INDEXED:
      return this->format_absolute_addr_arguments () + ",X";
    case AM_ABSOLUTE_Y_INDEXED:
      return this->format_absolute_addr_arguments () + ",Y";
    case AM_IMMEDIATE:
      return std::format ("#${:02X}", args.at (0));
    case AM_INDIRECT:
      return std::format ("(${:02X}{:02X})", args.at (0), args.at (1));
    case AM_INDIRECT_X_INDEXED:
      return std::format ("(${:02X},X)", args.at (0));
    case AM_INDIRECT_Y_INDEXED:
      return std::format ("(${:02X}),Y", args.at (0));
    case AM_RELATIVE:
      // unsure how this should be formatted
      return std::format ("{:02X}", args.at (0));
    case AM_ZERO_PAGE:
      return this->format_zero_page_addr_arguments (args.at (0));
    case AM_ZERO_PAGE_Y_INDEXED:
      return this->format_zero_page_addr_arguments (args.at (0)) + ",Y";
    case AM_ZERO_PAGE_X_INDEXED:
      return this->format_zero_page_addr_arguments (args.at (0)) + ",X";
    case AM_IMPLIED:
    default:
      return "";
    }
}

std::string
Line::format_absolute_addr_arguments (void) const
{
  std::string output = "";

  if (this->abs_address->get_label ().get_num_usages () == 1)
    output.append (
        std::format ("${:04X}", this->abs_address->get_raw_address ()));
  else
    output.append (this->abs_address->get_label ().to_string ());

  return output;
}

std::string
Line::format_zero_page_addr_arguments (const uint8_t &arg) const
{
  return std::format ("${:02X}", arg);
}

std::string
Line::create_comments (const AddressingMode_e &am,
                       const std::vector<uint8_t> &args)
{
  std::string output = "";
  switch (am)
    {
    case AM_ABSOLUTE:
    case AM_ABSOLUTE_X_INDEXED:
    case AM_ABSOLUTE_Y_INDEXED:
      output.append (this->create_comments_for_absolute_addressing (args));
      break;
    case AM_ZERO_PAGE:
    case AM_ZERO_PAGE_X_INDEXED:
    case AM_ZERO_PAGE_Y_INDEXED:
      output.append (
          this->create_comments_for_zero_page_addressing (args.at (0)));
      break;
    default:
      break;
    }

  return output;
}

std::string
Line::create_comments_for_absolute_addressing (
    const std::vector<uint8_t> &args) const
{
  if (0xB0 <= args.at (1) && args.at (1) <= 0xBF)
    {
      return format_comments_for_mirrored_ROM_addresses (args, 0xB0);
    }
  if (0x70 <= args.at (1) && args.at (1) <= 0x7F) //
    {
      return format_comments_for_mirrored_ROM_addresses (args, 0x70);
    }
  else if (args.at (1) >= 0xF0) // 0xF0xx .. 0xFFFF
    {
      return format_comments_for_mirrored_ROM_addresses (args, 0xF0);
    }

  return "";
}

std::string
Line::format_comments_for_mirrored_ROM_addresses (
    const std::vector<uint8_t> &args, uint8_t mirror_start_hi) const
{
  return std::format ("ROM address ${:02X}{:02X} via mirror", args.at (0),
                      args.at (1) - mirror_start_hi);
}

std::string
Line::create_comments_for_zero_page_addressing (const uint8_t &arg) const
{
  static const auto &zp_table = ZeroPageLookupTable::get_table ();
  if (zp_table.find (arg) != zp_table.end ())
    return std::format ("{}", zp_table.at (arg));
  else if (arg <= 0x3F)
    return "in TIA Addresses";
  else if (0x80 <= arg)
    return "in RIOT RAM";
  return "";
}

#undef RAW_BYTES_STR_LEN
#undef ASM_INSTRUCTION_STR_LEN
