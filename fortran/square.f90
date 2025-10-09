program square

    implicit none

    real :: x
    real :: xx

    print *, 'insert a number'

    read *, x
    xx = x * x

    print *, "square of x is", xx


end program    