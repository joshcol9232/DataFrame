#pragma once

#include <cstdint>

extern "C" {
  void mytest_mod_sum_obs_values_f90(const size_t& obs_vals_num,
                                     const double& obs_vals_0idx,
                                     double& result);
}
