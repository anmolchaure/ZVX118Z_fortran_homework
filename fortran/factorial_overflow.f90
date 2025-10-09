program factorial_overflow
    implicit none
    integer(kind = 2) :: f2
    integer(kind = 4) :: f4
    integer(kind = 8) :: f8
    !integer(kind = 16) :: f16
    integer :: n


    print*, 1.0/2


    print *, "n", "int 16", "     int32     ", "int64"
    print *, "-------------------"

    f2 = 1
    f4 = 1
    f8 = 1


    do n=1, 50
        if(n>1) then
            f2 = f2*n
            f4 = f4*n
            f8 = f8*n
        end if
        print *, n, f2,f4,f8
    end do

end program factorial_overflow