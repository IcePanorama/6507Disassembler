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
#ifndef _ABSOLUTE_ADDRESS_HPP_
#define _ABSOLUTE_ADDRESS_HPP_

#include "label.hpp"

class AbsoluteAddress
{
  uint16_t raw_address_;
  uint16_t true_address; // The non-mirrored address we're trying to reach
  const Label &label;

  uint16_t calc_true_address ();

public:
  AbsoluteAddress (uint16_t raw_address);
  const Label &get_label (void) const;
};

#endif /* _ABSOLUTE_ADDRESS_HPP_ */
