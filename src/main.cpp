#include "disassembler.hpp"

#include <format>
#include <iostream>
#include <ostream>
#include <stdexcept>
#include <string>

int
main (int argc, char **argv)
{
  if (argc == 1)
    {
      std::cerr << std::format ("Invalid usage. Try {} path/to/binary/file\n",
                                argv[0]);
      return -1;
    }

  const std::string input_filename = argv[1];
  const std::string output_filename = "output.asm";
  Disassembler disassembler;

  try
    {
      disassembler.initialize (input_filename, output_filename);
    }
  catch (const std::runtime_error &e)
    {
      std::cerr << e.what ();
      return -1;
    }

  disassembler.process_file ();

  return 0;
}
