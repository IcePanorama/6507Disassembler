#ifndef _6507_ADDRESSING_MODE_HPP_
#define _6507_ADDRESSING_MODE_HPP_

#include <string>

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

std::string addressing_mode_to_str (AddressingMode_e am);
bool adressing_mode_is_absolute (const AddressingMode_e &am);

#endif /* _6507_ADDRESSING_MODE_HPP_ */
