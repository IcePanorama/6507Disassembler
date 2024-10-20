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

  return 0;
}
