program loops
    implicit none
    !variables: user input -> n, sum of nums -> res
    !for i in length of the number, res will be res+1, factorial
    integer :: i, n, res
    
    print*, 'enter value: '
    read *, n
    res = 0 !the program will not work correctly if this is not done
    do i=1,n
        res = res+i
        print*, "value of result is", res
    end do



end program loops