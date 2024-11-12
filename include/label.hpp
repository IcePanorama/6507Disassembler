#ifndef _LABEL_HPP_
#define _LABEL_HPP_

#include <cstdint>
#include <optional>
#include <string>
#include <unordered_map>

class Label
{
  static std::unordered_map<uint16_t, Label> label_lookup;

  uint16_t address_;
  std::string name;
  uint32_t num_usages;

  Label (uint16_t address);

public:
  /** Returns existing label or creates new one. */
  static Label &get_label (uint16_t address);
  /** Returns existing label. */
  static std::optional<Label> find_label (uint16_t address);

  std::string to_string (void) const;
  uint32_t get_num_usages (void) const;
};

#endif /* _LABEL_HPP_ */
