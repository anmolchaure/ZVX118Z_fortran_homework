program loops
    implicit none !to catch undefined variables
    !variables: user input -> n, sum of nums -> res
    !for i in length of the number, res will be res+1, factorial
    integer :: i, n, res
    
    print*, 'enter value: '
    read *, n
    !5,15,25 !integer overflow in n=25, as the memory alloted is limited
    res = 0 !the program will not work correctly if this is not done
    res = 1
    do i=1,n
        res = res*i
        print*, "value of result is", res
    end do



end program loops
