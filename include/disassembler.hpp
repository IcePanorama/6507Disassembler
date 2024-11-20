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
#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include "instruction.hpp"
#include "line.hpp"

#include <cstdint>
#include <fstream>
#include <string>
#include <vector>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

  std::vector<Line> lines;
  // an incomplete line, likely part of some data
  std::vector<uint8_t> leftover_bytes;

  void create_file_header (const std::string &input_filename);
  void process_instruction (const Instruction &i, uint16_t location);
  void export_program (void);
  void export_leftover_bytes (void);

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);

  void process_file (void);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
