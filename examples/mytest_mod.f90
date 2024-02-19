module mytest_mod

  use, intrinsic :: iso_c_binding, only: c_double, c_int

  private
  public :: sum_obs_vals_double, sum_obs_vals_int

contains

function sum_obs_vals_double(obs_values) result(s)
  
  implicit none
  real(c_double), intent(in) :: obs_values(:)
  real(c_double) :: s

  integer :: i

  s = 0.0
  do i = 1, size(obs_values)
    s = s + obs_values(i)
  end do

end function sum_obs_vals_double


function sum_obs_vals_int(obs_values) result(s)
  
  implicit none
  integer(c_int), intent(in) :: obs_values(:)
  integer(c_int) :: s

  integer :: i

  s = 0
  do i = 1, size(obs_values)
    s = s + obs_values(i)
  end do

end function sum_obs_vals_int

end module mytest_mod
