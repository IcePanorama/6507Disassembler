#include "instruction_lookup.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

const std::unordered_map<std::uint8_t, Instruction> &
InstructionLookupTable::get_table (void)
{
  /** @see: http://www.6502.org/tutorials/6502opcodes.html */
  static const std::unordered_map<uint8_t, Instruction> table
      = { { 0xAD, Instruction ("LDA", 0xAD, AM_ABSOLUTE, 3, 4) } };
  return table;
}
