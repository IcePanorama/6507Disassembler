#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include <fstream>
#include <string>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
