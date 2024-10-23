#include "zero_page_lookup.hpp"

/* clang-format off */
const std::unordered_map<uint8_t, const std::string> &
ZeroPageLookupTable::get_table (void)
{
  /**
   *  @see: https://github.com/munsie/dasm/blob/master/machines/atari2600/vcs.h
   */
  static const std::unordered_map<uint8_t, const std::string> & table = {
    /* TIA Read/Write Registers */
    {0x00, "VSYNC (W), CXM0P (R)"},
    {0x01, "VBLANK (W), CXM1P (R)"},
    {0x02, "WSYNC (W), CXP0FB (R)"},
    {0x03, "RSYNC (W), CXP1FB (R)"},
    {0x04, "NUSIZ0 (W), CXM0FB (R)"},
    {0x05, "NUSIZ1 (W), CXM1FB (R)"},
    {0x06, "COLUP0 (W), CXBLPF (R)"},
    {0x07, "COLUP1 (W), CXPPMM (R)"},
    {0x08, "COLUPF (W), INPT0 (R)"},
    {0x09, "COLUBK (W), INPT1 (R)"},
    {0x0A, "CTRLPF (W), INPT2 (R)"},
    {0x0B, "REFP0 (W), INPT3 (R)"},
    {0x0C, "REFP1 (W), INPT4 (R)"},
    {0x0D, "PF0 (W), INPT5 (R)"},
    {0x0E, "PF1 (W)"},
    {0x0F, "PF2 (W)"},
    {0x10, "RESM0 (W)"},
    {0x11, "RESM1 (W)"},
    {0x13, "RESM1 (W)"},
    {0x14, "RESBL (W)"},
    {0x15, "AUDC0 (W)"},
    {0x16, "AUDC1 (W)"},
    {0x17, "AUDF0 (W)"},
    {0x18, "AUDF1 (W)"},
    {0x19, "AUDV0 (W)"},
    {0x1A, "AUDV1 (W)"},
    {0x1B, "GRP0 (W)"},
    {0x1C, "GRP1 (W)"},
    {0x1D, "ENAM0 (W)"},
    {0x1E, "ENAM1 (W)"},
    {0x1F, "ENABL (W)"},
    {0x20, "HMP0 (W)"},
    {0x0A, "CTRLPF (W)"},

    /* RIOT */
    {0x280, "SWCHA"},
    {0x281, "SWACNT"},
    {0x282, "SWCHB"},
    {0x283, "SWBCNT"},
    {0x284, "INTIM"},
    {0x285, "TIMINT"},
    {0x294, "TIM1T"},
    {0x295, "TIM8T"},
    {0x296, "TIM64T"},
    {0x297, "TIM128T"},
  };
  return table;
}
