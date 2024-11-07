#include "label.hpp"

#include <format>

std::unordered_map<uint16_t, Label> Label::label_lookup;

Label::Label (uint16_t address) : address_ (address)
{
  this->label = std::format ("LABEL_{:04d}", label_lookup.size ());
}
