program factorial
    implicit none

    integer(kind=4) :: fact4, previous_fact4, fact4_last_correct
    integer(kind=8) :: fact8, previous_fact8
    integer :: n
    integer :: fact4_overflow_n
    logical :: fact4_overflowed

    ! Initialize
    fact4 = 1
    fact8 = 1
    previous_fact4 = 1
    previous_fact8 = 1
    fact4_overflowed = .false.
    fact4_overflow_n = 0
    fact4_last_correct = 1

    do n = 1, 50
        if (n > 1) then
            previous_fact4 = fact4
            previous_fact8 = fact8
            fact4 = fact4 * n
            fact8 = fact8 * n
        end if

        ! Print only n and fact8 during the loop (suppress fact4)
        print *, n, fact8

        ! Record fact4 overflow once (do not print it now)
        if (.not. fact4_overflowed .and. fact4 < previous_fact4) then
            fact4_overflowed = .true.
            fact4_overflow_n = n
            fact4_last_correct = previous_fact4
        end if

        ! When fact8 overflows, print fact8 overflow and fact4 info, then exit
        if (fact8 < previous_fact8) then
            print *, 'Overflow detected at n for fact8 =', n
            if (fact4_overflowed) then
                print *, 'fact4 overflowed earlier at n =', fact4_overflow_n
                print *, 'Last correct value for fact4 =', fact4_last_correct
            else
                print *, 'fact4 did not overflow before fact8; last correct fact4 =', previous_fact4
            end if
            exit
        end if
    end do

    print *, 'No overflow detected up to n =', 50

end program factorial

