#ifndef _LINE_HPP_
#define _LINE_HPP_

#include "instruction.hpp"

#include <string>
#include <vector>

class Line
{
  uint16_t starting_addr;
  Instruction instruction;
  std::vector<uint8_t> arguments; // Max n arguments = 2
  /** The human-readable version of this instruction. */
  std::string assembly_instruction;
  std::string comment;

public:
  Line (void) = default;
};

#endif /* _LINE_HPP_ */
