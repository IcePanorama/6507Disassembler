#ifndef _6507_INSTRUCTION_LOOKUP_TABLE_HPP
#define _6507_INSTRUCTION_LOOKUP_TABLE_HPP

#include "instruction.hpp"

#include <cstdint>
#include <unordered_map>

class InstructionLookupTable
{
public:
  static const std::unordered_map<uint8_t, Instruction> &get_table (void);
};

#endif /* _6507_INSTRUCTION_LOOKUP_TABLE_HPP */
