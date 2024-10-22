#ifndef _6507_ZERO_PAGE_LOOKUP_HPP_
#define _6507_ZERO_PAGE_LOOKUP_HPP_

#include <cstdint>
#include <string>
#include <unordered_map>

class ZeroPageLookupTable
{
public:
  static const std::unordered_map<uint8_t, const std::string> &
  get_table (void);
};

#endif /* _6507_ZERO_PAGE_LOOKUP_HPP_ */
