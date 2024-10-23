#ifndef _LINE_HPP_
#define _LINE_HPP_

#include "instruction.hpp"

#include <array>
#include <cstdint>
#include <string>

#define MAX_NUM_ARGUMENTS (2)

class Line
{
  const uint16_t starting_addr_;
  const Instruction instruction_;
  const std::array<uint8_t, MAX_NUM_ARGUMENTS> arguments_;
  /** The human-readable version of this instruction. */
  const std::string assembly_instruction_;
  const std::string comment_;

public:
  Line (const uint16_t starting_addr, const Instruction instruction,
        const std::array<uint8_t, 2> arguments,
        const std::string assembly_instruction, const std::string comment);
};

#undef MAX_NUM_ARGUMENTS

#endif /* _LINE_HPP_ */
