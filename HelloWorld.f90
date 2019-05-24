! Small generic program. Will read from file, do something, and then print to a file
!
! Requires file called: HelloAgainInput.txt
! Outputs file called:  IAmHere.txt
!
! Jessica A. Kelly


program HelloAgainWorldF90
use DoCalculation

  real, dimension(:), allocatable :: x ! array that we will read into
  integer :: n 			! value that is read from file


  write(*,*) "Hello Humans!"
  write(*,*) "Starting to read file."

  open(unit=99, file='HelloAgainInput.txt', status='old', action='read')
  read(99,*), n 		!first element in the file is the number of elements in the array
  allocate(x(n))
  read(99,*) x 			!now read in the array

  call calculate(x,n)

  write(*,*) "Done my calculations."
  open(unit=89, file='IAmHere.txt', status='replace', action='write')
  write(89,*)x

  write(*,*) "Results successfully written."

end program HelloAgainWorldF90
