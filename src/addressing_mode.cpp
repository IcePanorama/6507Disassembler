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
