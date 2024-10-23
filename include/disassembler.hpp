#ifndef _6507_DISASSEMBLER_HPP_
#define _6507_DISASSEMBLER_HPP_

#include "addressing_mode.hpp"
#include "instruction.hpp"
#include "line.hpp"

#include <cstdint>
#include <fstream>
#include <string>
#include <vector>

class Disassembler
{
  std::ifstream input_fptr;
  std::ofstream output_fptr;

  std::vector<Line> lines;

  void process_instruction (const Instruction &i, uint16_t location);

  /* Argument helper functions */
  std::string format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args);
  std::string
  format_absolute_addr_arguments (const std::vector<uint8_t> &args);
  std::string format_zero_page_addr_arguments (const uint8_t &arg);

  /* Comment helper function. */
  std::string create_comments (const AddressingMode_e &am,
                               const std::vector<uint8_t> &args);
  std::string
  create_comments_for_absolute_addressing (const std::vector<uint8_t> &args);
  std::string create_comments_for_zero_page_addressing (const uint8_t &arg);
  std::string
  format_comments_for_mirrored_ROM_addresses (const std::vector<uint8_t> &args,
                                              uint8_t mirror_start_hi);

public:
  Disassembler (void) = default;

  void initialize (const std::string &input_filename,
                   const std::string &output_filename);

  void process_file (void);
};

#endif /* _6507_DISASSEMBLER_HPP_ */
