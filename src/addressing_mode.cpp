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
