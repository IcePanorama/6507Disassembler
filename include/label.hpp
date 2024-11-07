#ifndef _LABEL_HPP_
#define _LABEL_HPP_

#include <cstdint>
#include <string>
#include <unordered_map>

class Label
{
  static std::unordered_map<uint16_t, Label> label_lookup;

  uint16_t address_;
  std::string label;

  Label (uint16_t address);

public:
  static Label get_label (uint16_t address);
};

#endif /* _LABEL_HPP_ */
