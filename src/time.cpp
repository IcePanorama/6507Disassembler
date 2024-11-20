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
#include "time.hpp"

#include <chrono>
#include <ctime>
#include <format>

std::string
get_current_time (void)
{
  /* There might be a better way to do this, but this works. */
  auto now = std::chrono::system_clock::now ();
  std::time_t now_c = std::chrono::system_clock::to_time_t (now);
  std::tm *now_tm = std::localtime (&now_c);

  return std::format ("{:d}-{:d}-{:d} @ {:02d}:{:02d}:{:02d}",
                      now_tm->tm_year + 1900, now_tm->tm_mon + 1,
                      now_tm->tm_mday, now_tm->tm_hour, now_tm->tm_min,
                      now_tm->tm_sec);
}
