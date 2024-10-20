#ifndef _6507_INSTRUCTION_LOOKUP_TABLE_HPP
#define _6507_INSTRUCTION_LOOKUP_TABLE_HPP

#include "instruction.hpp"

#include <string>
#include <unordered_map>

class InstructionLookupTable
{
public:
  static const std::unordered_map<std::string, Instruction> &get_table (void);
};

#endif /* _6507_INSTRUCTION_LOOKUP_TABLE_HPP */
