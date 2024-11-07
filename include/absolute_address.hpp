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
};

#endif /* _ABSOLUTE_ADDRESS_HPP_ */
