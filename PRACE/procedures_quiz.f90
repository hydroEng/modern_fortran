program procedures_quiz
    implicit none
    integer :: p = 5
    integer :: answer
    character(len=10) :: c = "foooooo"


    answer = fac(p)
    print *, answer

    print *, new_line(c)

contains

    integer function fac(n)
        integer :: n, i

        fac = 1
        do while (n > 1)
            fac = fac * n
            n = n - 1
        end do

    end function fac


end program procedures_quiz
