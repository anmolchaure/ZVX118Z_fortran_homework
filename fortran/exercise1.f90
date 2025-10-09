! only use do and make conditions to exit the loop
!if a+b is not greater than a then exit



program loop
    implicit none
    integer :: a,b,add
    
    print*, 'enter value of a: ' 
    read *, a
     print*, 'enter value of b: ' 
    read *, b
    do 
        if(a+b>a) then
            exit
        end if    
        add = a+b 
        print*, add
    end do



end program loop