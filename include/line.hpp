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
#ifndef _LINE_HPP_
#define _LINE_HPP_

#include "absolute_address.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

class Line
{
  const uint16_t starting_addr_;
  const Instruction &instruction_;
  const std::vector<uint8_t> arguments_;
  std::optional<AbsoluteAddress> abs_address;

  std::string assembly_instruction;
  std::string comment;

  std::string create_assembly_instruction_string (void);
  std::string format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args) const;
  std::string format_absolute_addr_arguments (void) const;
  std::string format_zero_page_addr_arguments (const uint8_t &arg) const;

  std::string create_comments (const AddressingMode_e &am,
                               const std::vector<uint8_t> &args);
  std::string create_comments_for_absolute_addressing (
      const std::vector<uint8_t> &args) const;
  std::string
  create_comments_for_zero_page_addressing (const uint8_t &arg) const;
  std::string
  format_comments_for_mirrored_ROM_addresses (const std::vector<uint8_t> &args,
                                              uint8_t mirror_start_hi) const;

public:
  Line (const uint16_t starting_addr, const Instruction &instruction,
        const std::vector<uint8_t> arguments);

  std::string to_string (void);

  uint16_t get_starting_addr (void) const;
  uint8_t get_instruction_length (void) const;
};

#endif /* _LINE_HPP_ */
