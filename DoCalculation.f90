module DoCalculation
implicit none

subroutine calculate(n, x)
  integer, intent(in) :: n
  real, dimension(:), allocatable :: x
  do i=0,n
  x(i) = x(i) * 2
  end do
end subroutine

end module DoCalculationF90
