#include "disassembler.hpp"

#include <format>
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
}
