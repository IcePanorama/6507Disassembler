#ifndef _LINE_HPP_
#define _LINE_HPP_

#include "absolute_address.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

#include <cstdint>
#include <optional>
#include <string>
#include <vector>

#define MAX_NUM_ARGUMENTS (2)

class Line
{
  const uint16_t starting_addr_;
  const Instruction &instruction_;
  const std::vector<uint8_t> arguments_;
  std::optional<AbsoluteAddress> abs_address; // FIXME: needs better name.

  std::string assembly_instruction;
  std::string comment;

  std::string create_assembly_instruction_string (void);
  std::string format_arguments (const AddressingMode_e &am,
                                const std::vector<uint8_t> &args) const;
  std::string
  format_absolute_addr_arguments (const std::vector<uint8_t> &args) const;
  std::string format_zero_page_addr_arguments (const uint8_t &arg) const;

  std::string create_comments (const AddressingMode_e &am,
                               const std::vector<uint8_t> &args);
  std::string create_comments_for_absolute_addressing (
      const std::vector<uint8_t> &args) const;
  std::string
  create_comments_for_zero_page_addressing (const uint8_t &arg) const;
  std::string
  format_comments_for_mirrored_ROM_addresses (const std::vector<uint8_t> &args,
                                              uint8_t mirror_start_hi) const;

public:
  Line (const uint16_t starting_addr, const Instruction &instruction,
        const std::vector<uint8_t> arguments);

  uint16_t get_starting_addr (void) const;
  uint8_t get_instruction_length (void) const;
  std::string to_string (void);
};

#endif /* _LINE_HPP_ */
