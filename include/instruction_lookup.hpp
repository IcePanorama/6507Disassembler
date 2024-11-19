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
#ifndef _6507_INSTRUCTION_LOOKUP_TABLE_HPP
#define _6507_INSTRUCTION_LOOKUP_TABLE_HPP

#include "instruction.hpp"

#include <cstdint>
#include <unordered_map>

class InstructionLookupTable
{
public:
  static const std::unordered_map<uint8_t, Instruction> &get_table (void);
};

#endif /* _6507_INSTRUCTION_LOOKUP_TABLE_HPP */
