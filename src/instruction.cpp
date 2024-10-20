#include "instruction.hpp"
#include "addressing_mode.hpp"

#include <format>

Instruction::Instruction (const std::string &asm_instruction, uint8_t opcode,
                          AddressingMode_e addr_mode, uint8_t length,
                          uint8_t num_cycles)
    : asm_instruction_ (asm_instruction), opcode_ (opcode),
      addr_mode_ (addr_mode), length_ (length), num_cycles_ (num_cycles)
{
}

std::ostream &
operator<< (std::ostream &os, const Instruction &i)
{
  os << std::format (
      "{}\t[{:02X}|{}]\tLen: {:02X} / {:02X} (size in bytes/num cycles)",
      i.asm_instruction_, i.opcode_, addressing_mode_to_str (i.addr_mode_),
      i.length_, i.num_cycles_);

  return os;
}
