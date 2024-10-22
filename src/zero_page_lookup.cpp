#include "zero_page_lookup.hpp"

/* clang-format off */
const std::unordered_map<uint8_t, const std::string> &
ZeroPageLookupTable::get_table (void)
{
  /** @see: http://www.6502.org/tutorials/6502opcodes.html */
  static const std::unordered_map<uint8_t, const std::string> & table = {
    {0x00, "VSYNC"},
  };
  return table;
}
