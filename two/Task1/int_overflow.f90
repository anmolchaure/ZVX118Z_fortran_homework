program overflow_factorial
    implicit none

    integer(kind=4):: fact4, previous_fact4
    integer(kind=8):: fact8, previous_fact8
    integer :: n

    !initializing to avoid error
    fact4 = 1
    fact8 = 1
    previous_fact4 = 1
    previous_fact8 = 1

    do n=1,50
        if(n>1) then
            previous_fact4 = fact4
            previous_fact8 = fact8
            fact4 = fact4*n
            fact8 = fact8*n
            if (fact4 < previous_fact4) then
                print*, "fact4 overflowed at: ", n
                fact4 = previous_fact4
                exit
            else if (fact8 < previous_fact8) then
                print*, "fact8 overflowed at: ", n
                exit
            end if
        end if
        print*, n, fact4, fact8
    end do

end program overflow_factorial
