#include "disassembler.hpp"
#include "instruction_lookup.hpp"
#include "time.hpp"

#include <cstdint>
#include <format>
#include <iostream>
#include <optional>
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

  this->create_file_header (input_filename);
}

void
Disassembler::create_file_header (const std::string &input_filename)
{
  constexpr const char *header_format
      = ";  Original filename: {}\n;  Generated {}\n;  Created using "
        "A2600Disassembler <IcePanorama/A2600Disassembler>\n";
  const std::string header
      = std::format (header_format, input_filename, get_current_time ());

  this->output_fptr.write (header.c_str (), header.length ());
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
      /*
       *  Line starting addr is in big endian form, whereas the label lookup
       *  table needs it in little endian form, hence this weird
       *  hackjob/conversion going on.
       *  TODO: Probably should get fixed eventually.
       */
      uint16_t le_start_addr = l.get_starting_addr ();
      le_start_addr = ((le_start_addr & 0xFF) << 0x8)
                      | ((le_start_addr & 0xFF00) >> 0x8);

      std::optional<Label> label = Label::find_label (le_start_addr);
      if (label.has_value () && label->get_num_usages () > 1)
        {
          const std::string label_str
              = std::format ("{}:\n", label->to_string ());
          this->output_fptr.write (label_str.c_str (), label_str.length ());
        }

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
