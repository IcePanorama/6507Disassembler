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
#include "addressing_mode.hpp"

std::string
addressing_mode_to_str (const AddressingMode_e am)
{
  switch (am)
    {
    case AM_ABSOLUTE:
      return "absolute";
    default:
      return "";
    }
}

bool
addressing_mode_is_absolute (const AddressingMode_e &am)
{
  return am == AM_ABSOLUTE || am == AM_ABSOLUTE_Y_INDEXED
         || am == AM_ABSOLUTE_X_INDEXED;
}
