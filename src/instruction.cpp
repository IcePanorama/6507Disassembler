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

std::string
Instruction::to_string (void) const
{
  return std::format (
      "{}\t[{:02X} | {}]\tSize in bytes/Num cycles: {:02X} / {:02X}",
      this->asm_instruction_, this->opcode_,
      addressing_mode_to_str (this->addr_mode_), this->length_,
      this->num_cycles_);
}

std::ostream &
operator<< (std::ostream &os, const Instruction &i)
{
  os << i.to_string ();
  return os;
}
