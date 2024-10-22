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
    { 0x75, Instruction ("ADC", 0x75, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x7D, Instruction ("ADC", 0x7D, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0x61, Instruction ("ADC", 0x61, AM_INDIRECT_X_INDEXED, 1, 6) },
    { 0x71, Instruction ("ADC", 0x71, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed

    /**
     *  ANC. AND oper + set C as ASL.
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#ANC
     */
    { 0x0B, Instruction ("AND", 0x0B, AM_IMMEDIATE, 1, 2) },

    /**
     *  ANC (ANC2). AND oper + set C as ASL. Effectively the same as instr. 0B.
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#ANC2
     */
    { 0x2B, Instruction ("AND", 0x2B, AM_IMMEDIATE, 1, 2) },

    /**
     *  AND (bitwise AND with accumulator). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#AND
     */
    { 0x29, Instruction ("AND", 0x29, AM_IMMEDIATE, 1, 2) },
    { 0x25, Instruction ("AND", 0x25, AM_ZERO_PAGE, 1, 3) },
    { 0x35, Instruction ("AND", 0x35, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x2D, Instruction ("AND", 0x2D, AM_ABSOLUTE, 2, 4) },
    { 0x21, Instruction ("AND", 0x21, AM_INDIRECT_X_INDEXED, 1, 6) },
    { 0x39, Instruction ("AND", 0x39, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0x31, Instruction ("AND", 0x31, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed

    /**
     *  ASL (Arithmetic Shift Left). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ASL
     */
    { 0x0A, Instruction ("ASL", 0x0A, AM_ACCUMULATOR, 0, 2) },
    { 0x06, Instruction ("ASL", 0x06, AM_ZERO_PAGE, 1, 5) },
    { 0x0E, Instruction ("ASL", 0x0E, AM_ABSOLUTE, 2, 6) },
    { 0x1E, Instruction ("ASL", 0x1E, AM_ABSOLUTE_X_INDEXED, 2, 7) },

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
    { 0xD9, Instruction ("CMP", 0xD9, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed
    { 0xC1, Instruction ("CMP", 0xC1, AM_INDIRECT_X_INDEXED, 1, 6) },
    { 0xD1, Instruction ("CMP", 0xD1, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary crossed

    /**
     *  CPX (ComPare X register). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CPX
     */
    { 0xE0, Instruction ("CPX", 0xE0, AM_IMMEDIATE, 1, 2) },
    { 0xE4, Instruction ("CPX", 0xE4, AM_ZERO_PAGE, 1, 3) },
    { 0xEC, Instruction ("CPX", 0xEC, AM_ABSOLUTE, 2, 4) },

    /**
     *  CPY (ComPare Y register). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CPY
     */
    { 0xC0, Instruction ("CPY", 0xC0, AM_IMMEDIATE, 1, 2) },
    { 0xC4, Instruction ("CPY", 0xC4, AM_ZERO_PAGE, 1, 3) },

    /**
     *  DCP (DCM)
     *
     *  DEC oper + CMP oper. Decrements the operand and then compares the
     *  result to the accumulator.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#DCP
     */
    { 0xC7, Instruction ("DCP", 0xC7, AM_ZERO_PAGE, 1, 5) },
    { 0xD7, Instruction ("DCP", 0xD7, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0xDF, Instruction ("DCP", 0xDF, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0xDB, Instruction ("DCP", 0xDB, AM_ABSOLUTE_Y_INDEXED, 2, 7) },
    { 0xD3, Instruction ("DCP", 0xD3, AM_INDIRECT_Y_INDEXED, 1, 8) },

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
    { 0x49, Instruction ("EOR", 0x49, AM_IMMEDIATE, 1, 2) },
    { 0x45, Instruction ("EOR", 0x45, AM_ZERO_PAGE, 1, 3) },
    { 0x55, Instruction ("EOR", 0x55, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x59, Instruction ("EOR", 0x59, AM_ABSOLUTE_Y_INDEXED, 2, 4) },  // +1 cycle if page boundary crossed
    { 0x41, Instruction ("EOR", 0x41, AM_INDIRECT_X_INDEXED, 1, 6) },

    /**
     *  Flag (Processor Status) Instructions
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#CLC
     */
    { 0x18, Instruction ("CLC", 0x18, AM_IMPLIED, 0, 2) },
    { 0x38, Instruction ("SEC", 0x38, AM_IMPLIED, 0, 2) },
    { 0x58, Instruction ("CLI", 0x58, AM_IMPLIED, 0, 2) },
    { 0x78, Instruction ("SEI", 0x78, AM_IMPLIED, 0, 2) },
    { 0xB8, Instruction ("CLV", 0xB8, AM_IMPLIED, 0, 2) },
    { 0xD8, Instruction ("CLD", 0xD8, AM_IMPLIED, 0, 2) },
    { 0xF8, Instruction ("SED", 0xF8, AM_IMPLIED, 0, 2) },

    /**
     *  Hidden/secret/illegal NOPs (including DOP, TOP)
     *
     *  Instructions effecting in 'no operations' in various address modes.
     *  Operands are ignored.
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#NOPs
     */
    { 0x3A, Instruction ("NOP", 0x3A, AM_IMPLIED, 0, 2) },
    { 0x5A, Instruction ("NOP", 0x5A, AM_IMPLIED, 0, 2) },
    { 0x7A, Instruction ("NOP", 0x7A, AM_IMPLIED, 0, 2) },
    { 0xDA, Instruction ("NOP", 0xDA, AM_IMPLIED, 0, 2) },
    { 0x80, Instruction ("NOP", 0x80, AM_IMMEDIATE, 1, 2) },
    { 0x89, Instruction ("NOP", 0x89, AM_IMMEDIATE, 1, 2) },
    { 0xC2, Instruction ("NOP", 0xC2, AM_IMMEDIATE, 1, 2) },
    { 0xE2, Instruction ("NOP", 0xE2, AM_IMMEDIATE, 1, 2) },
    { 0x04, Instruction ("NOP", 0x04, AM_ZERO_PAGE, 1, 3) },
    { 0x44, Instruction ("NOP", 0x44, AM_ZERO_PAGE, 1, 3) },
    { 0x64, Instruction ("NOP", 0x64, AM_ZERO_PAGE, 1, 3) },
    { 0x14, Instruction ("NOP", 0x14, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x54, Instruction ("NOP", 0x54, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x34, Instruction ("NOP", 0x34, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x74, Instruction ("NOP", 0x74, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xD4, Instruction ("NOP", 0xD4, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xF4, Instruction ("NOP", 0xF4, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x1C, Instruction ("NOP", 0x1C, AM_ABSOLUTE_X_INDEXED, 2, 4) },

    /**
     *  INC (INCrement memory). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#INC
     */
    { 0xE6, Instruction ("INC", 0xE6, AM_ZERO_PAGE, 1, 5) },
    { 0xF6, Instruction ("INC", 0xF6, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0xFE, Instruction ("INC", 0xFE, AM_ABSOLUTE_X_INDEXED, 2, 7) },

    /**
     *  ISC (ISB, INS)
     *
     *  INC oper + SBC oper.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#ISC
     */
    { 0xE7, Instruction ("ISC", 0xE7, AM_ZERO_PAGE, 1, 5) },
    { 0xF7, Instruction ("ISC", 0xF7, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0xEF, Instruction ("ISC", 0xEF, AM_ABSOLUTE, 2, 6) },
    { 0xFF, Instruction ("ISC", 0xFF, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0xFB, Instruction ("ISC", 0xFB, AM_ABSOLUTE_Y_INDEXED, 2, 7) },
    { 0xE3, Instruction ("ISC", 0xE3, AM_INDIRECT_X_INDEXED, 1, 8) },
    { 0xF3, Instruction ("ISC", 0xF3, AM_INDIRECT_Y_INDEXED, 1, 8) },

    /**
     *  JAM (KIL, HLT)
     *
     *  These instructions freeze the CPU. The processor will be trapped
     *  infinitely in T1 phase with $FF on the data bus. — Reset required.
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#JAM
     *  TODO: figure out suitable value for these instructions.
     */
    { 0x02, Instruction ("JAM", 0x02, AM_IMPLIED, 0, 0) },
    { 0x12, Instruction ("JAM", 0x12, AM_IMPLIED, 0, 0) },
    { 0x22, Instruction ("JAM", 0x22, AM_IMPLIED, 0, 0) },
    { 0x32, Instruction ("JAM", 0x32, AM_IMPLIED, 0, 0) },
    { 0x42, Instruction ("JAM", 0x42, AM_IMPLIED, 0, 0) },
    { 0x52, Instruction ("JAM", 0x52, AM_IMPLIED, 0, 0) },
    { 0x62, Instruction ("JAM", 0x62, AM_IMPLIED, 0, 0) },
    { 0x72, Instruction ("JAM", 0x72, AM_IMPLIED, 0, 0) },
    { 0x92, Instruction ("JAM", 0x92, AM_IMPLIED, 0, 0) },
    { 0xB2, Instruction ("JAM", 0xB2, AM_IMPLIED, 0, 0) },
    { 0xF2, Instruction ("JAM", 0xF2, AM_IMPLIED, 0, 0) },

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
     *  LAS (LAR).
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#LAS
     */
    { 0xBB, Instruction ("LAS", 0xBB, AM_ABSOLUTE_Y_INDEXED, 2, 4) },

    /**
     *  LAX
     *
     *  LDA oper + LDX oper.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#LAX
     */
    { 0xA7, Instruction ("LAX", 0xA7, AM_ZERO_PAGE, 1, 3) },
    { 0xB7, Instruction ("LAX", 0xB7, AM_ZERO_PAGE_Y_INDEXED, 1, 4) },
    { 0xBF, Instruction ("LAX", 0xBF, AM_ABSOLUTE_Y_INDEXED, 2, 4) },
    { 0xB3, Instruction ("LAX", 0xB3, AM_INDIRECT_Y_INDEXED, 1, 5) },

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
    { 0xA1, Instruction ("LDA", 0xA1, AM_INDIRECT_X_INDEXED, 1, 6) },
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
    { 0x5E, Instruction ("LSR", 0x5E, AM_ABSOLUTE_X_INDEXED, 2, 7) },

    /**
     *  LXA (LAX immediate). Store * AND oper in A and X. Highly unstable,
     *  involves a 'magic' constant
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#LXA
     */
    { 0xAB, Instruction ("LXA", 0xAB, AM_IMMEDIATE, 1, 2) },

    /**
     *  NOP (No OPeration). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#NOP
     */
    { 0xEA, Instruction ("NOP", 0xEA, AM_IMPLIED, 0, 2) },

    /**
     *  ORA (bitwise OR with Accumulator). Affects Flags: N Z.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ORA
     */
    { 0x09, Instruction ("ORA", 0x09, AM_IMMEDIATE, 1, 2) },
    { 0x05, Instruction ("ORA", 0x05, AM_ZERO_PAGE, 1, 3) },
    { 0x15, Instruction ("ORA", 0x15, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x0D, Instruction ("ORA", 0x0D, AM_ABSOLUTE, 2, 4) },
    { 0x1D, Instruction ("ORA", 0x1D, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed.
    { 0x19, Instruction ("ORA", 0x19, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary crossed.
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
    { 0x3E, Instruction ("ROL", 0x36, AM_ABSOLUTE_X_INDEXED, 2, 7) },

    /**
     *  ROR (ROtate Right). Affects Flags: N Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#ROR
     */
    { 0x6A, Instruction ("ROR", 0x6A, AM_ACCUMULATOR, 0, 2) },
    { 0x66, Instruction ("ROR", 0x66, AM_ZERO_PAGE, 1, 5) },
    { 0x76, Instruction ("ROR", 0x76, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0x6E, Instruction ("ROR", 0x6E, AM_ABSOLUTE, 2, 6) },
    { 0x7E, Instruction ("ROR", 0x7E, AM_ABSOLUTE_X_INDEXED, 2, 7) },

    /**
     *  RLA. ROL oper + AND oper.
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#RLA
     */
    { 0x37, Instruction ("RLA", 0x37, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0x2F, Instruction ("RLA", 0x2F, AM_ABSOLUTE, 2, 6) },
    { 0x3F, Instruction ("RLA", 0x3F, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0x23, Instruction ("RLA", 0x23, AM_INDIRECT_X_INDEXED, 1, 8) },
    { 0x33, Instruction ("RLA", 0x33, AM_INDIRECT_Y_INDEXED, 1, 8) },

    /**
     *  RRA
     *
     *  ROR oper + ADC oper.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#RRA
     */
    { 0x67, Instruction ("RRA", 0x67, AM_ZERO_PAGE, 1, 5) },
    { 0x77, Instruction ("RRA", 0x77, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0x6F, Instruction ("RRA", 0x6F, AM_ABSOLUTE, 2, 6) },
    { 0x7F, Instruction ("RRA", 0x7F, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0x7B, Instruction ("RRA", 0x7B, AM_ABSOLUTE_Y_INDEXED, 2, 7) },
    { 0x63, Instruction ("RRA", 0x63, AM_INDIRECT_X_INDEXED, 1, 8) },
    { 0x73, Instruction ("RRA", 0x73, AM_INDIRECT_Y_INDEXED, 1, 8) },

    /**
     *  RTI (ReTurn from Interrupt). Affects Flags: all.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#RTI
     */
    { 0x40, Instruction ("RTS", 0x40, AM_IMPLIED, 0, 6) },

    /**
     *  RTS (ReTurn from Subroutine). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#RTS
     */
    { 0x60, Instruction ("RTS", 0x60, AM_IMPLIED, 0, 6) },

    /**
     *  SAX (AXS, AAX)
     *
     *  A and X are put on the bus at the same time (resulting effectively in
     *  an AND operation) and stored in M.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SAX
     */
    { 0x97, Instruction ("SAX", 0x97, AM_ZERO_PAGE_Y_INDEXED, 1, 4) },

    /**
     *  SBC (SuBtract with Carry). Affects Flags: N V Z C.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#SBC
     */
    { 0xE9, Instruction ("SBC", 0xE9, AM_IMMEDIATE, 1, 2) },
    { 0xE5, Instruction ("SBC", 0xE5, AM_ZERO_PAGE, 1, 3) },
    { 0xF5, Instruction ("SBC", 0xF5, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0xED, Instruction ("SBC", 0xED, AM_ABSOLUTE, 2, 4) },
    { 0xFD, Instruction ("SBC", 0xFD, AM_ABSOLUTE_X_INDEXED, 2, 4) }, // +1 cycle if page boundary is crossed.
    { 0xF9, Instruction ("SBC", 0xFD, AM_ABSOLUTE_Y_INDEXED, 2, 4) }, // +1 cycle if page boundary is crossed.
    { 0xE1, Instruction ("SBC", 0xE1, AM_INDIRECT_X_INDEXED, 1, 6) },
    ////{ 0xF1, Instruction ("SBC", 0xF1, AM_INDIRECT_Y_INDEXED, 1, 5) }, // +1 cycle if page boundary is crossed.

    /**
     *  SBX (AXS, SAX)
     *
     *  CMP and DEX at once, sets flags like CMP.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SBX
     */
    { 0xCB, Instruction ("SBX", 0xCB, AM_IMMEDIATE, 1, 2) },

    /**
     *  SHA (AHX, AXA)
     *
     *  Stores A AND X AND (high-byte of addr. + 1) at addr. unstable:
     *  sometimes 'AND (H+1)' is dropped, page boundary crossings may not work
     *  (with the high-byte of the value used as the high-byte of the address).
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SLO
     */
    { 0x93, Instruction ("SHA", 0x93, AM_INDIRECT_Y_INDEXED, 1, 6) },

    /**
     *  SHX (A11, SXA, XAS)
     *
     *  Stores X AND (high-byte of addr. + 1) at addr. unstable: sometimes
     *  'AND (H+1)' is dropped, page boundary crossings may not work (with the
     *  high-byte of the value used as the high-byte of the address).
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SHX
     */
    { 0x9E, Instruction ("SHX", 0x9E, AM_ABSOLUTE_Y_INDEXED, 2, 5) },

    /**
     *  SLO (ASO)
     *
     *  ASL oper + ORA oper.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SLO
     */
    { 0x07, Instruction ("SLO", 0x07, AM_ZERO_PAGE, 1, 5) },
    { 0x17, Instruction ("SLO", 0x17, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0x0F, Instruction ("SLO", 0x0F, AM_ABSOLUTE, 2, 6) },
    { 0x1F, Instruction ("SLO", 0x1F, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0x1B, Instruction ("SLO", 0x1B, AM_ABSOLUTE_Y_INDEXED, 2, 7) },
    { 0x03, Instruction ("SLO", 0x03, AM_INDIRECT_X_INDEXED, 1, 8) },
    { 0x13, Instruction ("SLO", 0x13, AM_INDIRECT_Y_INDEXED, 1, 8) },

    /**
     *  SRE (LSE)
     *
     *  LSR oper + EOR oper.
     *
     *  @see: https://www.masswerk.at/6502/6502_instruction_set.html#SRE
     */
    { 0x47, Instruction ("SRE", 0x47, AM_ZERO_PAGE, 1, 5) },
    { 0x57, Instruction ("SRE", 0x57, AM_ZERO_PAGE_X_INDEXED, 1, 6) },
    { 0x5F, Instruction ("SRE", 0x5F, AM_ABSOLUTE_X_INDEXED, 2, 7) },
    { 0x43, Instruction ("SRE", 0x43, AM_INDIRECT_X_INDEXED, 1, 8) },
    { 0x53, Instruction ("SRE", 0x53, AM_INDIRECT_Y_INDEXED, 1, 8) },

    /**
     *  STA (STore Accumulator). Affects Flags: none.
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#STA
     */
    { 0x85, Instruction ("STA", 0x85, AM_ZERO_PAGE, 1, 3) },
    { 0x95, Instruction ("STA", 0x95, AM_ZERO_PAGE_X_INDEXED, 1, 4) },
    { 0x99, Instruction ("STA", 0x99, AM_ABSOLUTE_Y_INDEXED, 2, 5) },
    { 0x81, Instruction ("STA", 0x81, AM_INDIRECT_X_INDEXED, 1, 6) },
    { 0x91, Instruction ("STA", 0x91, AM_INDIRECT_Y_INDEXED, 1, 6) },

    /**
     *  Stack Instructions
     *
     * These instructions are implied mode, have a length of one byte and
     * require machine cycles as indicated.
     *
     *  @see: http://www.6502.org/tutorials/6502opcodes.html#TXS
     */
    { 0x9A, Instruction ("TXS", 0x9A, AM_IMPLIED, 0, 2) },
    { 0xBA, Instruction ("TSX", 0x9A, AM_IMPLIED, 0, 2) },
    { 0x48, Instruction ("PHA", 0x48, AM_IMPLIED, 0, 3) },
    { 0x68, Instruction ("PLA", 0x68, AM_IMPLIED, 0, 4) },
    { 0x08, Instruction ("PHP", 0x68, AM_IMPLIED, 0, 3) },
    { 0x28, Instruction ("PLP", 0x28, AM_IMPLIED, 0, 4) },

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
    { 0x8C, Instruction ("STY", 0x8C, AM_ABSOLUTE, 2, 4) },
  };
  return table;
}
/* clang-format on */
