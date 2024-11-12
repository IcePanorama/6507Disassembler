#include "label.hpp"

#include <format>

std::unordered_map<uint16_t, Label> Label::label_lookup;

Label::Label (uint16_t address)
    : address_ (address),
      name (std::format ("LABEL_{:04d}", label_lookup.size ())), num_usages (1)
{
}

Label &
Label::get_label (uint16_t address)
{
  if (!label_lookup.contains (address))
    label_lookup.insert ({ address, Label (address) });
  else
    label_lookup.at (address).num_usages++;

  return label_lookup.at (address);
}

std::string
Label::to_string (void) const
{
  return this->num_usages > 1 ? this->name
                              : std::format ("{:04X}", this->address_);
}

uint32_t
Label::get_num_usages (void) const
{
  return this->num_usages;
}

std::optional<Label>
Label::find_label (uint16_t address)
{
  if (label_lookup.contains (address))
    return label_lookup.at (address);

  return std::nullopt;
}
