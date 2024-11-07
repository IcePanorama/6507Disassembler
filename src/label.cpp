#include "label.hpp"

#include <format>

std::unordered_map<uint16_t, const Label> Label::label_lookup;

Label::Label (uint16_t address) : address_ (address)
{
  this->label = std::format ("LABEL_{:04d}", label_lookup.size ());
}

const Label &
Label::get_label (uint16_t address)
{
  if (!label_lookup.contains (address))
    label_lookup.insert ({ address, Label (address) });

  return label_lookup.at (address);
}
