program euclid_calcs
    implicit none

    integer :: a = 1071, b = 462
    integer :: rem
    
    do while (.true.)
        rem = euclid_iter(a, b)
        a = b
        b = rem
        print *, a, b
        if (rem <= 0) then
            exit
        end if
    end do

    print *, "The gcd is", a

contains
    integer function euclid_iter(i, j) result(r)
        implicit none

        integer, intent(in) :: i, j
        integer :: a1, b1
        integer :: q = 0

        a1 = i
        b1 = j

        do while (r >=0)
            r = a1 - (q * b1)
            if (r < 0) then
                exit
            end if
            q = q + 1
        end do 

        r = i - (q - 1) * j
    end function euclid_iter
end program euclid_calcs
