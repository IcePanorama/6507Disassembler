#include "disassembler.hpp"

#include <stdexcept>
#include <string>

int
main (void)
{
  const std::string input_filename = "E.T. - The Extra-Terrestrial (USA).a26";
  const std::string output_filename = "output.asm";
  Disassembler disassembler;

  try
    {
      disassembler.initialize (input_filename, output_filename);
    }
  catch (const std::runtime_error &e)
    {
      throw e;
    }

  disassembler.process_file ();

  return 0;
}
