#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include "addressing_mode.hpp"
#include "instruction.hpp"

#include <cstdint>
#include <fstream>
#include <string>
#include <vector>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

  void process_instruction (const Instruction &i, uint16_t location);
  // std::string format_arguments (const std::vector<uint8_t>& args);
  std::string format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args);
  std::string
  format_absolute_addr_arguments (const std::vector<uint8_t> &args);
  std::string format_zero_page_addr_arguments (const uint8_t &arg);

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);

  void process_file (void);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
