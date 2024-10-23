#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include "instruction.hpp"
#include "line.hpp"

#include <cstdint>
#include <fstream>
#include <string>
#include <vector>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

  std::vector<Line> lines;
  // an incomplete line, likely part of some data
  std::vector<uint8_t> leftover_bytes;

  void process_instruction (const Instruction &i, uint16_t location);
  void export_program (void);

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);

  void process_file (void);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
