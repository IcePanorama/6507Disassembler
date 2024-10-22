#include "disassembler.hpp"
#include "addressing_mode.hpp"
#include "instruction_lookup.hpp"

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
  this->input_fptr.read (reinterpret_cast<char *> (arguments.data ()),
                         arguments.size ());
  if (this->input_fptr.eof ())
    return;

  arguments.resize (static_cast<size_t> (this->input_fptr.gcount ()));

  std::string byte_string = std::format ("{:02X}", i.get_opcode ());
  for (const uint8_t &arg : arguments)
    byte_string.append (std::format (" {:02X}", arg));

  std::string line = std::format (line_format, location, byte_string);
  // std::string line = std::format (line_format, location + 0xF000,
  // byte_string);
  if (i.get_num_arguments () != 0 && i.get_num_arguments () % 2 == 0)
    line.append ("\t");
  else
    line.append ("\t\t");

  line.append (std::format ("{} ", i.get_asm_instruction ()));
  line.append (this->format_arguments (i.get_addressing_mode (), arguments));
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
