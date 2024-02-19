module mytest_mod

  use, intrinsic :: iso_c_binding, only: c_double

  private
  public :: sum_obs_vals

contains

function sum_obs_vals(obs_values) result(s)
  
  implicit none
  real(c_double), intent(in) :: obs_values(:)
  real(c_double) :: s

  integer :: i

  s = 0.0
  do i = 1, size(obs_values)
    s = s + obs_values(i)
  end do

end function sum_obs_vals

end module mytest_mod
