#ifndef _LINE_HPP_
#define _LINE_HPP_

#include "addressing_mode.hpp"
#include "instruction.hpp"

#include <cstdint>
#include <string>
#include <vector>

#define MAX_NUM_ARGUMENTS (2)

class Line
{
  const uint16_t starting_addr_;
  const Instruction &instruction_;
  const std::vector<uint8_t> arguments_;
  /** The human-readable version of this instruction. */
  std::string assembly_instruction_;
  std::string comment_;

  std::string format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args);
  std::string
  format_absolute_addr_arguments (const std::vector<uint8_t> &args);
  std::string format_zero_page_addr_arguments (const uint8_t &arg);

  std::string create_comments (const AddressingMode_e &am,
                               const std::vector<uint8_t> &args);
  std::string
  create_comments_for_absolute_addressing (const std::vector<uint8_t> &args);
  std::string create_comments_for_zero_page_addressing (const uint8_t &arg);
  std::string
  format_comments_for_mirrored_ROM_addresses (const std::vector<uint8_t> &args,
                                              uint8_t mirror_start_hi);

public:
  Line (const uint16_t starting_addr, const Instruction &instruction,
        const std::vector<uint8_t> arguments);

  friend std::ostream &operator<< (std::ostream &os, const Line &l);
};

#endif /* _LINE_HPP_ */
