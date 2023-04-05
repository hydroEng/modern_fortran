program fibonacci
    use, intrinsic :: iso_fortran_env, only : INT64

    implicit none

    print *, fib(47)
    print *, fib_recursive(47)

contains
    integer(kind=INT64) function fib(n) result (f)
        implicit none
        integer, intent(in) :: n
        integer(kind=INT64) :: i, f1, f2

        f1 = 1
        f2 = 0


        do i = 0, n, 1
            if (i == 0) then
                f = 0
            else if (i == 1) then
                f = 1
            else 
                f = f1 + f2
                f2 = f1
                f1 = f
            end if
        end do

    end function fib

    recursive integer(kind=INT64) function fib_recursive(n) result (x)
        implicit none

        integer, intent(in) :: n

        select case (n)
            case (0)
                x = 0
            case (1)
                x = 1
            case default
                x = fib_recursive(n - 1) + fib_recursive(n - 2)
        end select
    end function fib_recursive


end program