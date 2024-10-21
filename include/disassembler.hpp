#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include "instruction.hpp"

#include <cstdint>
#include <fstream>
#include <string>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

  void process_instruction (const Instruction &i, uint16_t location);

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);

  void process_file (void);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
