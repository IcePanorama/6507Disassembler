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
#ifndef _6507_ADDRESSING_MODE_HPP_
#define _6507_ADDRESSING_MODE_HPP_

enum AddressingMode_e
{
  AM_ACCUMULATOR,
  AM_ABSOLUTE,
  AM_ABSOLUTE_X_INDEXED,
  AM_ABSOLUTE_Y_INDEXED,
  AM_IMMEDIATE,
  AM_IMPLIED,
  AM_INDIRECT,
  AM_INDIRECT_X_INDEXED,
  AM_INDIRECT_Y_INDEXED,
  AM_RELATIVE,
  AM_ZERO_PAGE,
  AM_ZERO_PAGE_X_INDEXED,
  AM_ZERO_PAGE_Y_INDEXED,
  AM_NUM_ADDRESSING_MODES
};

/**
 *  Returns true if `am` is AM_ABSOLUTE, AM_ABSOLUTE_X_INDEXED, or
 *  AM_ABSOLUTE_Y_INDEXED.
 */
bool addressing_mode_is_absolute (const AddressingMode_e &am);

#endif /* _6507_ADDRESSING_MODE_HPP_ */
