#include "time.hpp"

#include <chrono>
#include <ctime>
#include <format>

std::string
get_current_time (void)
{
  auto now = std::chrono::system_clock::now ();
  std::time_t now_c = std::chrono::system_clock::to_time_t (now);
  std::tm *now_tm = std::localtime (&now_c);

  return std::format ("{:d}{:d}{:d} @ {:02d}:{:02d}:{:02d}",
                      now_tm->tm_year + 1900, now_tm->tm_mon + 1,
                      now_tm->tm_mday, now_tm->tm_hour, now_tm->tm_min,
                      now_tm->tm_sec);
}
