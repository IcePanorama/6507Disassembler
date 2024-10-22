#include "zero_page_lookup.hpp"

/* clang-format off */
const std::unordered_map<uint8_t, const std::string> &
ZeroPageLookupTable::get_table (void)
{
  /**
   *  @see: https://github.com/munsie/dasm/blob/master/machines/atari2600/vcs.h
   */
  static const std::unordered_map<uint8_t, const std::string> & table = {
    {0x00,  "VSYNC"},
    {0x0A, "CTRLPF"},
  };
  return table;
}
