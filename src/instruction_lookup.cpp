#include "instruction_lookup.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

/* clang-format off */
const std::unordered_map<uint8_t, Instruction> &
InstructionLookupTable::get_table (void)
{
  /** @see: http://www.6502.org/tutorials/6502opcodes.html */
  static const std::unordered_map<uint8_t, Instruction> table = {
    { 0x4C, Instruction ("JMP", 0x4C, AM_ABSOLUTE, 2, 3) },
    { 0x85, Instruction ("STA", 0x85, AM_ABSOLUTE, 1, 3) },
    { 0xA2, Instruction ("LDX", 0xA2, AM_ABSOLUTE, 1, 2) },
    { 0xA8, Instruction ("TAY", 0xA8, AM_IMPLIED, 0, 2) },
    { 0xB5, Instruction ("LDA", 0xB5, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xAD, Instruction ("LDA", 0xAD, AM_ABSOLUTE, 2, 4) },
  };
  return table;
}
/* clang-format on */
