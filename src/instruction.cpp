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
#include "instruction.hpp"
#include "addressing_mode.hpp"

#include <format>

Instruction::Instruction (const std::string &asm_instruction, uint8_t opcode,
                          AddressingMode_e addr_mode, uint8_t num_arguments,
                          uint8_t num_cycles)
    : asm_instruction_ (asm_instruction), opcode_ (opcode),
      addr_mode_ (addr_mode), num_arguments_ (num_arguments),
      num_cycles_ (num_cycles)
{
}

std::string
Instruction::to_string (void) const
{
  return std::format ("{} {:02X} {} {:02X} {:02X}", this->asm_instruction_,
                      this->opcode_, addressing_mode_to_str (this->addr_mode_),
                      this->num_arguments_, this->num_cycles_);
}

std::ostream &
operator<< (std::ostream &os, const Instruction &i)
{
  os << i.to_string ();
  return os;
}

uint8_t
Instruction::get_num_arguments (void) const
{
  return this->num_arguments_;
}

uint8_t
Instruction::get_opcode (void) const
{
  return this->opcode_;
}

std::string
Instruction::get_asm_instruction (void) const
{
  return this->asm_instruction_;
}

AddressingMode_e
Instruction::get_addressing_mode (void) const
{
  return this->addr_mode_;
}
