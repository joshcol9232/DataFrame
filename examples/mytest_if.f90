subroutine mytest_mod_sum_obs_values_double_c(c_obs_values_num, c_obs_values, c_sum_result) &
  bind(c,name="mytest_mod_sum_obs_values_double_f90")

  use, intrinsic :: iso_c_binding, only: c_double, c_size_t
  use mytest_mod, only: sum_obs_vals_double

  implicit none
  integer(c_size_t), intent(in) :: c_obs_values_num
  real(c_double),    intent(in) :: c_obs_values(c_obs_values_num)
  
  real(c_double), intent(out) :: c_sum_result

  c_sum_result = sum_obs_vals_double(c_obs_values)

end subroutine mytest_mod_sum_obs_values_double_c

subroutine mytest_mod_sum_obs_values_int_c(c_obs_values_num, c_obs_values, c_sum_result) &
  bind(c,name="mytest_mod_sum_obs_values_int_f90")

  use, intrinsic :: iso_c_binding, only: c_int, c_size_t
  use mytest_mod, only: sum_obs_vals_int

  implicit none
  integer(c_size_t), intent(in) :: c_obs_values_num
  integer(c_int),    intent(in) :: c_obs_values(c_obs_values_num)
  
  integer(c_int), intent(out) :: c_sum_result

  c_sum_result = sum_obs_vals_int(c_obs_values)

end subroutine mytest_mod_sum_obs_values_int_c
