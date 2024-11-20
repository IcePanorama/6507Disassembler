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
#ifndef _LABEL_HPP_
#define _LABEL_HPP_

#include <cstdint>
#include <optional>
#include <string>
#include <unordered_map>

class Label
{
  static std::unordered_map<uint16_t, Label> label_lookup;

  uint16_t address_;
  std::string name;
  uint32_t num_usages;

  Label (uint16_t address);

public:
  /** Returns existing label or creates new one. */
  static Label &get_label (uint16_t address);
  /** Returns existing label. Used exclusively for line labels, not args. */
  static std::optional<Label> find_label (uint16_t address);

  std::string to_string (void) const;
  uint32_t get_num_usages (void) const;
};

#endif /* _LABEL_HPP_ */
