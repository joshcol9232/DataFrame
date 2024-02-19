#pragma once

#include <cstdint>

extern "C" {
  void mytest_mod_sum_obs_values_double_f90(const size_t& obs_vals_num,
                                       const double& obs_vals_0idx,
                                       double& result);

  void mytest_mod_sum_obs_values_int_f90(const size_t& obs_vals_num,
                                         const int& obs_vals_0idx,
                                         int& result);
}

double sum_obs_values(const std::vector<double>& obs_vals) {
  double result;
  mytest_mod_sum_obs_values_double_f90(obs_vals.size(), obs_vals[0], result);
  return result;
}

