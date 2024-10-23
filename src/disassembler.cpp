#include "disassembler.hpp"
#include "addressing_mode.hpp"
#include "instruction_lookup.hpp"
#include "zero_page_lookup.hpp"

#include <cstddef>
#include <cstdint>
#include <format>
#include <iostream>
#include <stdexcept>
#include <string>

void
Disassembler::initialize (const std::string &input_filename,
                          const std::string &output_filename)
{
  this->input_fptr.open (input_filename, std::ios::binary);
  if (!this->input_fptr.is_open ())
    throw std::runtime_error (
        std::format ("Error opening input file, {}.\n", input_filename));

  this->output_fptr.open (output_filename, std::ios::binary);
  if (!this->output_fptr.is_open ())
    throw std::runtime_error (
        std::format ("Error opening output file, {}.\n", output_filename));

  const std::string file_header = std::format ("; {}\n", input_filename);
  this->output_fptr.write (file_header.c_str (), file_header.length ());
}

void
Disassembler::process_file (void)
{
  uint16_t location = 0;
  std::vector<uint8_t> raw_instruction;
  const auto &table = InstructionLookupTable::get_table ();

  char b;
  while (this->input_fptr.read (&b, sizeof (b)))
    {
      location = static_cast<uint16_t> (this->input_fptr.tellg ()) - 1;
      if (table.find (static_cast<uint8_t> (b)) != table.end ())
        {
          // std::cout << std::format ("{:04X} {:02X}\n", location, b);
          this->process_instruction (table.at (static_cast<uint8_t> (b)),
                                     location);
        }
      else
        {
          std::cout << std::format ("{:02X}\n", b);
          break;
        }
    }
}

void
Disassembler::process_instruction (const Instruction &i, uint16_t location)
{
  /* "[location]\t[raw instruction]\t[human-readable instruction]" */
  static constexpr const char *line_format = "{:04X}\t{}";

  std::vector<uint8_t> arguments (i.get_num_arguments ());
  input_fptr.read (reinterpret_cast<char *> (arguments.data ()),
                   arguments.size ());
  if (input_fptr.eof ())
    return;

  arguments.resize (static_cast<size_t> (input_fptr.gcount ()));

  std::string byte_string = std::format ("{:02X}", i.get_opcode ());
  for (const uint8_t &arg : arguments)
    byte_string.append (std::format (" {:02X}", arg));

  std::string line = std::format (line_format, location, byte_string);
  if (i.get_num_arguments () != 0 && i.get_num_arguments () % 2 == 0)
    line.append ("\t");
  else
    line.append ("\t\t");

  line.append (std::format ("{} ", i.get_asm_instruction ()));
  line.append (format_arguments (i.get_addressing_mode (), arguments));
  line.append (create_comments (i.get_addressing_mode (), arguments));
  line.append ("\n");

  output_fptr.write (line.c_str (), line.length ());
}

std::string
Disassembler::format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args)
{
  std::string output;
  switch (am)
    {
    case AM_ACCUMULATOR:
      return "A";
    case AM_ABSOLUTE:
      return this->format_absolute_addr_arguments (args);
    case AM_ABSOLUTE_X_INDEXED:
      return this->format_absolute_addr_arguments (args) + ",X";
    case AM_ABSOLUTE_Y_INDEXED:
      return this->format_absolute_addr_arguments (args) + ",Y";
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
Disassembler::format_absolute_addr_arguments (const std::vector<uint8_t> &args)
{
  std::string output = "$";
  for (const auto &arg : args)
    output += std::format ("{:02X}", arg);
  return output;
}

std::string
Disassembler::format_zero_page_addr_arguments (const uint8_t &arg)
{
  return std::format ("${:02X}", arg);
}

std::string
Disassembler::format_comments_for_mirrored_ROM_addresses (
    const std::vector<uint8_t> &args, uint8_t mirror_start_hi)
{
  return std::format ("\t; ROM address ${:02X}{:02X} via mirror", args.at (0),
                      args.at (1) - mirror_start_hi);
}

std::string
Disassembler::create_comments (const AddressingMode_e &am,
                               const std::vector<uint8_t> &args)
{
  // FIXME: this is a mess, clean up later.
  std::string output = "";
  switch (am)
    {
    case AM_ABSOLUTE:
    case AM_ABSOLUTE_X_INDEXED:
    case AM_ABSOLUTE_Y_INDEXED:
      output.append (format_absolute_addr_arguments (args));
      break;
    case AM_ZERO_PAGE:
      // For formatting/readability
      output.append ("\t");
      [[fallthrough]];
    case AM_ZERO_PAGE_X_INDEXED:
    case AM_ZERO_PAGE_Y_INDEXED:
      output.append (create_comments_for_zero_page_addressing (args.at (0)));
      break;
    default:
      break;
    }

  return output;
}

std::string
Disassembler::create_comments_for_absolute_addressing (
    const std::vector<uint8_t> &args)
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
Disassembler::create_comments_for_zero_page_addressing (const uint8_t &arg)
{
  static const auto &zp_table = ZeroPageLookupTable::get_table ();
  if (zp_table.find (arg) != zp_table.end ())
    return std::format ("\t; {}", zp_table.at (arg));
  else if (arg <= 0x3F)
    return "\t; in TIA Addresses";
  else if (0x80 <= arg)
    return "\t; in RIOT RAM";
  return "";
}
