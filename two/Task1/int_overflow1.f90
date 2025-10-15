program overflow_factorial
    implicit none
    integer(kind=4) :: fact4 = 1, prev4 = 1
    integer(kind=8) :: fact8 = 1, prev8 = 1
    integer :: n
    logical :: done4 = .false.

    do n = 2, 50
        prev4 = fact4
        prev8 = fact8
        fact4 = fact4 * n
        fact8 = fact8 * n

        if (.not. done4 .and. fact4 < prev4) then
            print *, "Overflow Fact4 at n =", n
            done4 = .true.
        end if

        if (fact8 < prev8) then
            print *, "Overflow Fact8 at n =", n
            exit
        end if
    end do
end program overflow_factorial
