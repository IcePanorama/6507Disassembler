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
#include "absolute_address.hpp"

AbsoluteAddress::AbsoluteAddress (uint16_t raw_address)
    : raw_address_ (raw_address), true_address (this->calc_true_address ()),
      label (Label::get_label (this->true_address))
{
}

uint16_t
AbsoluteAddress::calc_true_address ()
{
  uint8_t mirror_start_hi = 0x0;
  uint8_t raw_addr_hi = (this->raw_address_ & 0xFF);

  if (0xB0 <= raw_addr_hi && raw_addr_hi <= 0xBF) // 0xXXB0 .. 0xFFBF
    mirror_start_hi = 0xB0;
  else if (0x70 <= raw_addr_hi && raw_addr_hi <= 0x7F) // 0x70xx .. 0x7FFF
    mirror_start_hi = 0x70;
  else if (raw_addr_hi >= 0xF0) // 0xXXF0 .. 0xFFFF
    mirror_start_hi = 0xF0;

  return (this->raw_address_ & 0xFF00) | (raw_addr_hi - mirror_start_hi);
}

const Label &
AbsoluteAddress::get_label (void) const
{
  return this->label;
}
