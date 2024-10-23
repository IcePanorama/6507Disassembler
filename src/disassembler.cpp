#include "disassembler.hpp"
#include "instruction_lookup.hpp"

#include <format>
#include <iostream>
#include <stdexcept>

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
  const auto &table = InstructionLookupTable::get_table ();
  char b;
  while (this->input_fptr.read (&b, sizeof (b)))
    {
      if (table.find (b) == table.end ())
        throw std::runtime_error (std::format (
            "Error: instruction not found for op code, {:02X}\n", b));
      this->process_instruction (
          table.at (b), static_cast<uint16_t> (this->input_fptr.tellg ()) - 1);
    }
}

void
Disassembler::process_instruction (const Instruction &i, uint16_t location)
{
  std::vector<uint8_t> arguments (i.get_num_arguments ());
  input_fptr.read (reinterpret_cast<char *> (arguments.data ()),
                   arguments.size ());
  if (input_fptr.eof ())
    return; // "incomplete" line, likely part of some data

  arguments.resize (static_cast<size_t> (input_fptr.gcount ()));

  lines.push_back (Line (location, i, arguments));
  std::cout << lines.at (lines.size () - 1) << std::endl;
}
