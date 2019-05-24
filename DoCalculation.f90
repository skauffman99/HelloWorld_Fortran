module DoCalculation
implicit none
save
contains


subroutine calculate(x,n)
  integer :: n ,i
  real, dimension(:), allocatable :: x

  do i=1,n
    x(i) = x(i) * 2
  end do
end subroutine

end module
