#include "instruction_lookup.hpp"

#include <format>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>

int
main (void)
{
  const std::string filename = "ET.a26";
  std::ifstream file (filename, std::ios::binary);
  if (!file)
    throw std::runtime_error (
        std::format ("Error opening file, {}\n.", filename));

  char b;
  file.read (&b, sizeof (b));
  std::cout << std::format ("{:02X}\n", b);

  std::ofstream output ("output.hexdump", std::ios::out);
  if (!output)
    exit (1);

  const auto &table = InstructionLookupTable::get_table ();
  if (table.find (b) != table.end ())
    {
      std::string line = table.at (b).to_string ();
      output.write (line.c_str (), line.length ());
    }

  return 0;
}
