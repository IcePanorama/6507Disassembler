#include "instruction_lookup.hpp"
#include "addressing_mode.hpp"
#include "instruction.hpp"

/* clang-format off */
const std::unordered_map<uint8_t, Instruction> &
InstructionLookupTable::get_table (void)
{
  /** @see: http://www.6502.org/tutorials/6502opcodes.html */
  static const std::unordered_map<uint8_t, Instruction> table = {
    /**
     *  ADC (ADd with Carry). Affects Flags: N V Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ADC
     */
    { 0x69, Instruction ("ADC", 0x69, AM_IMMEDIATE, 1, 2) },
    { 0x65, Instruction ("ADC", 0x65, AM_ZERO_PAGE, 1, 3) },
    { 0x7D, Instruction ("ADC", 0x7D, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0x61, Instruction ("ADC", 0x61, AM_INDIRECT_X_INDEXED, 1, 6) },

    /**
     *  AND (bitwise AND with accumulator). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#AND
     */
    { 0x29, Instruction ("AND", 0x29, AM_IMMEDIATE, 1, 2) },
    { 0x25, Instruction ("AND", 0x25, AM_ZERO_PAGE, 1, 3) },
    { 0x21, Instruction ("AND", 0x21, AM_INDIRECT_X_INDEXED, 1, 6) },
    ////{ 0x31, Instruction ("AND", 0x31, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed

    /**
     *  ASL (Arithmetic Shift Left). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ASL
     */
    { 0x0A, Instruction ("ASL", 0x0A, AM_ACCUMULATOR, 0, 2) },

    /**
     *  BIT (test BITs). Affects Flags: N V Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#BIT
     */
    { 0x24, Instruction ("BIT", 0x24, AM_ZERO_PAGE, 1, 3) },
    { 0x2C, Instruction ("BIT", 0x2C, AM_ABSOLUTE, 2, 4) },

    /**
     *  Branch Instructions
     *
     *  All branches are relative mode and have a length of two bytes. Syntax
     *  is "Bxx Displacement" or (better) "Bxx Label". Branches are dependant
     *  on the status of the flag bits when the op code is encountered. A
     *  branch not taken requires two machine cycles. Add one if the branch is
     *  taken and add one more if the branch crosses a page boundary. 
     *
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#BPL
     */
    { 0x10, Instruction ("BPL", 0x10, AM_RELATIVE, 1, 2) },
    { 0x30, Instruction ("BMI", 0x30, AM_RELATIVE, 1, 2) },
    { 0x50, Instruction ("BVC", 0x50, AM_RELATIVE, 1, 2) },
    { 0x70, Instruction ("BVS", 0x70, AM_RELATIVE, 1, 2) },
    { 0x90, Instruction ("BCC", 0x90, AM_RELATIVE, 1, 2) },
    { 0xB0, Instruction ("BCS", 0xB0, AM_RELATIVE, 1, 2) },
    { 0xD0, Instruction ("BNE", 0xD0, AM_RELATIVE, 1, 2) },
    { 0xF0, Instruction ("BEQ", 0xF0, AM_RELATIVE, 1, 2) },

    /**
     *  BRK (BReaK). Affects Flags: B.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#BRK
     */
    { 0x00, Instruction ("BRK", 0x00, AM_IMPLIED, 0, 7) },

    /**
     *  CMP (CoMPare accumulator). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CMP
     */
    { 0xC9, Instruction ("CMP", 0xC9, AM_IMMEDIATE, 1, 2) },
    { 0xC5, Instruction ("CMP", 0xC5, AM_ZERO_PAGE, 1, 3) },
    { 0xD5, Instruction ("CMP", 0xD5, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xDD, Instruction ("CMP", 0xDD, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0xC1, Instruction ("CMP", 0xC1, AM_INDIRECT_X_INDEXED, 1, 6) },

    /**
     *  CPX (ComPare X register). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CPX
     */
    { 0xE0, Instruction ("CPX", 0xE0, AM_IMMEDIATE, 1, 2) },
    { 0xE4, Instruction ("CPX", 0xE4, AM_ZERO_PAGE, 1, 3) },

    /**
     *  CPY (ComPare Y register). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CPY
     */
    { 0xC0, Instruction ("CPY", 0xC0, AM_IMMEDIATE, 1, 2) },

    /**
     *  DEC (DECrement memory). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#DEC
     */
    { 0xC6, Instruction ("DEC", 0xC6, AM_ZERO_PAGE, 1, 5) },
    { 0xD6, Instruction ("DEC", 0xD6, AM_ZERO_PAGE_X_INDEXED, 1, 6) },

    /**
     *  EOR (bitwise Exclusive OR). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#EOR
     */
    { 0x41, Instruction ("EOR", 0x41, AM_INDIRECT_X_INDEXED, 1, 6) },

    /**
     *  Flag (Processor Status) Instructions
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CLC
     */
    { 0x18, Instruction ("CLC", 0x18, AM_IMPLIED, 0, 2) },
    { 0x38, Instruction ("SEC", 0x38, AM_IMPLIED, 0, 2) },

    /**
     *  INC (INCrement memory). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#INC
     */
    { 0xE6, Instruction ("INC", 0xE6, AM_ZERO_PAGE, 1, 5) },
    { 0xF6, Instruction ("INC", 0xF6, AM_ZERO_PAGE_X_INDEXED, 1, 6) },

    /**
     *  JMP (JuMP). Affects Flags: none
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#JMP
     */
    { 0x4C, Instruction ("JMP", 0x4C, AM_ABSOLUTE, 2, 3) },

    /**
     *  JSR (Jump to SubRoutine). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#JSR
     */
    { 0x20, Instruction ("JSR", 0x20, AM_ABSOLUTE, 2, 6) },

    /**
     *  LDA (LoaD Accumulator). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#LDA
     */
    { 0xA9, Instruction ("LDA", 0xA9, AM_IMMEDIATE, 1, 2) },
    { 0xA5, Instruction ("LDA", 0xA5, AM_ZERO_PAGE, 1, 3) },
    { 0xB5, Instruction ("LDA", 0xB5, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xAD, Instruction ("LDA", 0xAD, AM_ABSOLUTE, 2, 4) },
    { 0xBD, Instruction ("LDA", 0xBD, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0xB9, Instruction ("LDA", 0xB9, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    //{ 0xA1, Instruction ("LDA", 0xA1, AM_INDIRECT_X_INDEXED, 1, 6) },
    { 0xB1, Instruction ("LDA", 0xB1, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed

    /**
     *  LDX (LoaD X register). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#LDX
     */
    { 0xA2, Instruction ("LDX", 0xA2, AM_IMMEDIATE, 1, 2) },
    { 0xA6, Instruction ("LDX", 0xA6, AM_ZERO_PAGE, 1, 3) },
    { 0xBE, Instruction ("LDX", 0xBE, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed.

    /**
     *  LDY (LoaD Y register). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#LDY
     */
    { 0xA0, Instruction ("LDY", 0xA0, AM_IMMEDIATE, 1, 2) },
    { 0xA4, Instruction ("LDY", 0xA4, AM_ZERO_PAGE, 1, 3) },
    { 0xB4, Instruction ("LDY", 0xB4, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xBC, Instruction ("LDY", 0xBC, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed.

    /**
     *  LSR (Logical Shift Right).
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#LSR
     */
    { 0x4A, Instruction ("LSR", 0x4A, AM_ACCUMULATOR, 0, 2) },
    { 0x46, Instruction ("LSR", 0x46, AM_ZERO_PAGE, 1, 5) },

    /**
     *  ORA (bitwise OR with Accumulator). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ORA
     */
    { 0x09, Instruction ("ORA", 0x09, AM_IMMEDIATE, 1, 2) },
    { 0x05, Instruction ("ORA", 0x05, AM_ZERO_PAGE, 1, 3) },
    { 0x01, Instruction ("ORA", 0x01, AM_INDIRECT_X_INDEXED, 1, 6) },
    //{ 0x11, Instruction ("ORA", 0x11, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed.

    /**
     *  Register Instructions
     *
     *  These instructions are implied mode, have a length of one byte and
     *  require two machine cycles. Affect Flags: N Z
     *
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#TAX
     */
    { 0xAA, Instruction ("TAX", 0xAA, AM_IMPLIED, 0, 2) },
    { 0x8A, Instruction ("TXA", 0x8A, AM_IMPLIED, 0, 2) },
    { 0xCA, Instruction ("DEX", 0xCA, AM_IMPLIED, 0, 2) },
    { 0xE8, Instruction ("INX", 0xE8, AM_IMPLIED, 0, 2) },
    { 0xA8, Instruction ("TAY", 0xA8, AM_IMPLIED, 0, 2) },
    { 0x98, Instruction ("TYA", 0x98, AM_IMPLIED, 0, 2) },
    { 0x88, Instruction ("DEY", 0x88, AM_IMPLIED, 0, 2) },
    { 0xC8, Instruction ("INY", 0xC8, AM_IMPLIED, 0, 2) },

    /**
     *  ROL (ROtate Left). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ROL
     */
    { 0x2A, Instruction ("ROL", 0x2A, AM_ACCUMULATOR, 0, 2) },
    { 0x26, Instruction ("ROL", 0x26, AM_ZERO_PAGE, 1, 5) },
    { 0x36, Instruction ("ROL", 0x36, AM_ZERO_PAGE_X_INDEXED, 1, 6) },

    /**
     *  ROR (ROtate Right). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ROR
     */
    { 0x6A, Instruction ("ROR", 0x6A, AM_ACCUMULATOR, 0, 2) },
    { 0x66, Instruction ("ROR", 0x66, AM_ZERO_PAGE, 1, 5) },
    { 0x76, Instruction ("ROR", 0x76, AM_ZERO_PAGE_X_INDEXED, 1, 6) },

    /**
     *  RTS (ReTurn from Subroutine). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#RTS
     */
    { 0x60, Instruction ("RTS", 0x60, AM_IMPLIED, 0, 6) },

    /**
     *  SBC (SuBtract with Carry). Affects Flags: N V Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#SBC
     */
    { 0xE9, Instruction ("SBC", 0xE9, AM_IMMEDIATE, 1, 2) },
    { 0xE5, Instruction ("SBC", 0xE5, AM_ZERO_PAGE, 1, 3) },
    { 0xFD, Instruction ("SBC", 0xFD, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary is crossed.
    { 0xE1, Instruction ("SBC", 0xE1, AM_INDIRECT_X_INDEXED, 1, 6) },
    ////{ 0xF1, Instruction ("SBC", 0xF1, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary is crossed.

    /**
     *  STA (STore Accumulator). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#STA
     */
    { 0x85, Instruction ("STA", 0x85, AM_ZERO_PAGE, 1, 3) },
    { 0x95, Instruction ("STA", 0x95, AM_ZERO_PAGE_X_INDEXED, 1, 4) },

    /**
     *  Stack Instructions
     *
     * These instructions are implied mode, have a length of one byte and
     * require machine cycles as indicated.
     *
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#TXS
     */
    { 0x48, Instruction ("PHA", 0x48, AM_IMPLIED, 0, 3) },
    { 0x68, Instruction ("PLA", 0x68, AM_IMPLIED, 0, 4) },

    /**
     *  STX (STore X register). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#STX
     */
    { 0x86, Instruction ("STX", 0x86, AM_ZERO_PAGE, 1, 3) },
    { 0x8E, Instruction ("STX", 0x8E, AM_ABSOLUTE, 2, 4) },

    /**
     *  STY (STore Y register). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#STY
     */
    { 0x84, Instruction ("STY", 0x84, AM_ZERO_PAGE, 1, 3) },
  };
  return table;
}
/* clang-format on */
