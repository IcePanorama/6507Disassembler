//  Copyright (C) 2024 IcePanorama
//
//  This file is a part of A2600Disassembler.
//
//  A2600Disassembler is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by the
//  Free Software Foundation, either version 3 of the License, or (at your
//  option) any later version.
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program.  If not, see <https://www.gnu.org/licenses/>.
#include "disassembler.hpp"

#include <format>
#include <iostream>
#include <ostream>
#include <stdexcept>
#include <string>

int
main (int argc, char **argv)
{
  if (argc < 3)
    {
      std::cerr << std::format (
          "Invalid usage. Try {} path/to/binary/file path/to/output/file\n",
          argv[0]);
      return -1;
    }

  const std::string input_filename = argv[1];
  std::string output_filename = argv[2];

  /* add file extension, if not given one. */
  if (output_filename.find (".") == std::string::npos)
    output_filename.append (".asm");

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
