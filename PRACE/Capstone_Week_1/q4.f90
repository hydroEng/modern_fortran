program euclid_calcs
    implicit none
    integer :: r, a, b
    a = 1071
    b = 462

    do while (b > 0)
        r = euclid_iteration(a, b)
        a = b
        b = r

        print *, a,b,r
    end do



contains

    integer function euclid_iteration(a, b) result(r2)
        implicit none
        integer, intent(in) :: a, b
        integer :: r1 = 1
        integer :: q = 1
        
        do while (r1 > 0)
            r1 = a - q * b
            q = q + 1
        end do

        r2 = a - (q - 2) * b ! q - 2 goes to the last q that didn't yield a negative

    end function euclid_iteration

end program euclid_calcs


! a = c * b + rem

! rem = a - c * b