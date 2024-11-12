#include "absolute_address.hpp"

#include <format>
#include <iostream>

AbsoluteAddress::AbsoluteAddress (uint16_t raw_address)
    : raw_address_ (raw_address), true_address (this->calc_true_address ()),
      label (Label::get_label (this->true_address))
{
  std::cout << std::format ("{:04X} {:04X} {}\n", raw_address_,
                            this->true_address, this->label.to_string ());
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
