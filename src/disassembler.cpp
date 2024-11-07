#include "disassembler.hpp"
#include "instruction_lookup.hpp"

#include <cstdint>
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

  export_program ();
}

void
Disassembler::process_instruction (const Instruction &i, uint16_t location)
{
  std::vector<uint8_t> arguments (i.get_num_arguments ());
  input_fptr.read (reinterpret_cast<char *> (arguments.data ()),
                   arguments.size ());
  if (input_fptr.eof ())
    {
      leftover_bytes.push_back (i.get_opcode ());
      return;
    }

  arguments.resize (static_cast<size_t> (input_fptr.gcount ()));

  lines.push_back (Line (location, i, arguments));
}

void
Disassembler::export_program (void)
{
  for (Line &l : this->lines)
    {
      const std::string curr_output = std::format ("{}\n", l.to_string ());
      this->output_fptr.write (curr_output.c_str (), curr_output.length ());
    }

  // Very hack-y, but it works
  std::string leftovers = std::format (
      "  {:04X}  ", this->lines.back ().get_starting_addr ()
                        + this->lines.back ().get_instruction_length ());
  for (const uint8_t &b : this->leftover_bytes)
    leftovers += std::format ("{:02X} ", b);
  if (!leftovers.empty ())
    leftovers.pop_back ();

  this->output_fptr.write (leftovers.c_str (), leftovers.length ());
}
