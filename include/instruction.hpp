#ifndef _6507_INSTRUCTION_HPP_
#define _6507_INSTRUCTION_HPP_

#include "addressing_mode.hpp"

#include <cstdint>
#include <ostream>
#include <string>

class Instruction
{
  std::string asm_instruction_; // the human-readable form.
  uint8_t opcode_; // the hex value which represents the instruction
  AddressingMode_e addr_mode_;
  uint8_t length_; // size of the entire instruction in bytes (incl. arguments)
  uint8_t num_cycles_; // num cycles it takes to complete

public:
  Instruction (const std::string &asm_instruction, uint8_t opcode,
               AddressingMode_e addr_mode, uint8_t length, uint8_t num_cycles);

  friend std::ostream &operator<< (std::ostream &os, const Instruction &i);
};

#endif /* _6507_INSTRUCTION_HPP_ */
