program julia_set
    implicit none

    complex :: c = (-0.622772, 0.42193)
    real(kind=8) :: re = -1.5, im = -1.5
    complex :: z
    integer :: n = 1

    do while (re <= 2)
        re = re + 0.1
        im = -2
        do while (im <= 2)
            im = im + 0.1
            z = cmplx(re, im)
            do n = 1, 255, 1
                z = julia_func(z,c)
                if (in_2x_square(z)) then
                    print *, real(z),',', aimag(z),',', n
                end if

                if ((mod_of_cmplx(z)) >=2) then
                    exit
                end if 
            end do
        end do
    end do

! Wasn't able to get this coming out nicely...

contains
    function julia_func(z, c) result (z_1)
        complex, intent(in) :: z, c
        complex :: z_1

        z_1 = z**2 + c

    end function julia_func

    function mod_of_cmplx(z) result (mod)

        complex, intent(in) :: z 
        real :: re, im, mod

        re = real(z)
        im = aimag(z)

        mod = sqrt((re**2) + (im**2))
    end function mod_of_cmplx

    function in_2x_square(z) result (ans)
        logical :: ans
        real(kind=8) :: re, im
        complex, intent(in) :: z

        re = abs(real(z))
        im = abs(aimag(z))

        if ((re < 2) .and. (im < 2)) then
            ans = .true.
        else
            ans = .false.
        end if 
    end function
end program julia_set