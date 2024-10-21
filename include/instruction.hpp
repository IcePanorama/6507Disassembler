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
  uint8_t num_arguments_;
  uint8_t num_cycles_; // num cycles it takes to complete

public:
  Instruction (const std::string &asm_instruction, uint8_t opcode,
               AddressingMode_e addr_mode, uint8_t num_arguments,
               uint8_t num_cycles);

  std::string to_string (void) const;
  friend std::ostream &operator<< (std::ostream &os, const Instruction &i);
  std::string get_asm_instruction (void) const;
  uint8_t get_opcode (void) const;
  uint8_t get_num_arguments (void) const;
  AddressingMode_e get_addressing_mode (void) const;
};

#endif /* _6507_INSTRUCTION_HPP_ */
