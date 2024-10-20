#include "instruction_lookup.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

const std::unordered_map<std::string, Instruction> &
get_table (void)
{
  /** @see: http://www.6502.org/tutorials/6502opcodes.html */
  static const std::unordered_map<std::string, Instruction> table
      = { { "AD", Instruction ("LDA", 0xAD, AM_ABSOLUTE, 3, 4) } };
  return table;
}
