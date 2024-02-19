subroutine mytest_mod_sum_obs_values_c(c_obs_values_num, c_obs_values, c_sum_result) &
  bind(c,name="mytest_mod_sum_obs_values_f90")

  use, intrinsic :: iso_c_binding, only: c_double, c_size_t
  use mytest_mod, only: sum_obs_vals

  implicit none
  integer(c_size_t), intent(in) :: c_obs_values_num
  real(c_double),    intent(in) :: c_obs_values(c_obs_values_num)
  
  real(c_double), intent(out) :: c_sum_result

  c_sum_result = sum_obs_vals(c_obs_values)

end subroutine mytest_mod_sum_obs_values_c
