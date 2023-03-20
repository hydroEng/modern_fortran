program leap_year
    implicit none
    integer :: year
    logical :: errmsg

    year = 1899
    print *, year, is_leap_year(year, has_error = errmsg) ! Assigns errmsg during call.
    

contains

    function is_leap_year(year, has_error) result(is_leap)
        implicit none
        integer, intent(in) :: year 
        logical, optional, intent(out) :: has_error
        logical :: is_leap

        if (present(has_error)) then
            has_error = year <= 1582 ! Declare error if year is <= 1582

        else if (mod(year, 4) /= 0) then
            is_leap = .false.
        else if (mod(year, 100) == 0) then
            if (mod(year, 400) == 0) then
                is_leap = .true.
            else
                is_leap = .false.
            end if
        else
            is_leap = .true.
        end if

    end function is_leap_year

    subroutine 
end program leap_year
