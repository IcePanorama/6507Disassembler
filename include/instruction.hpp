//  Copyright (C) 2024 IcePanorama
//
//  This file is a part of A2600Disassembler.
//
//  A2600Disassembler is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by the
//  Free Software Foundation, either version 3 of the License, or (at your
//  option) any later version.
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program.  If not, see <https://www.gnu.org/licenses/>.
#ifndef _6507_INSTRUCTION_HPP_
#define _6507_INSTRUCTION_HPP_

#include "addressing_mode.hpp"

#include <cstdint>
#include <string>

class Instruction
{
  std::string asm_instruction_;
  uint8_t opcode_;
  AddressingMode_e addr_mode_;
  uint8_t num_arguments_;
  uint8_t num_cycles_; // num cycles it takes to complete

public:
  Instruction (const std::string &asm_instruction, uint8_t opcode,
               AddressingMode_e addr_mode, uint8_t num_arguments,
               uint8_t num_cycles);

  std::string get_asm_instruction (void) const;
  uint8_t get_opcode (void) const;
  uint8_t get_num_arguments (void) const;
  AddressingMode_e get_addressing_mode (void) const;
};

#endif /* _6507_INSTRUCTION_HPP_ */
