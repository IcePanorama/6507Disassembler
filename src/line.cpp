#include "line.hpp"
#include "instruction.hpp"

Line::Line (const uint16_t starting_addr, const Instruction instruction,
            const std::array<uint8_t, 2> arguments,
            const std::string assembly_instruction, const std::string comment)
    : starting_addr_ (starting_addr), instruction_ (instruction),
      arguments_ (arguments), assembly_instruction_ (assembly_instruction),
      comment_ (comment)
{
}
