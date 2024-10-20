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

  return 0;
}
