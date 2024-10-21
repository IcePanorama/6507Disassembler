#include "disassembler.hpp"
#include "instruction_lookup.hpp"

#include <stdexcept>
#include <string>

int
main (void)
{
  const std::string input_filename = "E.T. - The Extra-Terrestrial (USA).a26";
  const std::string output_filename = "output.hexdump";
  Disassembler test;

  try
    {
      test.initialize (input_filename, output_filename);
    }
  catch (const std::runtime_error &e)
    {
      throw e;
    }

  return 0;
}

/*
char b;
input_file.read (&b, sizeof (b));
std::cout << std::format ("{:02X}\n", b);

while (!input_file.eof ())
  {
    const auto &table = InstructionLookupTable::get_table ();
    if (table.find (b) != table.end ())
      {
        std::string line = table.at (b).to_string ();
        output.write (line.c_str (), line.length ());
      }
    else
      {
        break;
      }

    input_file.read (&b, sizeof (b));
  }
*/
