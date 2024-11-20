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
#include "label.hpp"

#include <format>

std::unordered_map<uint16_t, Label> Label::label_lookup;

Label::Label (uint16_t address)
    : address_ (address),
      name (std::format ("LABEL_{:04d}", label_lookup.size ())), num_usages (1)
{
}

Label &
Label::get_label (uint16_t address)
{
  if (!label_lookup.contains (address))
    label_lookup.insert ({ address, Label (address) });
  else
    label_lookup.at (address).num_usages++;

  return label_lookup.at (address);
}

std::string
Label::to_string (void) const
{
  return this->name;
}

uint32_t
Label::get_num_usages (void) const
{
  return this->num_usages;
}

std::optional<Label>
Label::find_label (uint16_t address)
{
  if (label_lookup.contains (address))
    return label_lookup.at (address);

  return std::nullopt;
}
