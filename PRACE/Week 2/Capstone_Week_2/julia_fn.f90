program julia_set
    implicit none

    integer :: l, w, i, j, n ! len, width, iterators, num of points
    real :: step = 0.001
    real :: im, re
    complex, allocatable, dimension(:,:) :: array
    integer, allocatable, dimensioN(:,:) :: result_array


    l = int((8 / step) + 1)
    w = int((8 / step) + 1)
    
    n = l * w
    array = reshape(source=[(i, i = 1, n)], shape=[l, w]) ! 2D Array dim l x w

    im = 2.0
    re = -2.0

    do i = 1, l, 1
        do j = 1, w, 1
            array(i,j) = cmplx(re, im)
            re = re + step
        end do 
        im = im - step
        re = -2.0
    end do

    result_array = julia_function(array)

    do i = 1, l, 1
        print *, result_array(i, :)
    end do

contains
    elemental integer function julia_function(z) result (x)
        complex, intent(in) :: z
        complex, parameter :: c = (-0.622722, 0.42193)
        complex :: z1 

        z1 = z
        x = 0
        do while (abs(z1) < 2 .and. x < 255)
            z1 = z1**2 + c
            x = x + 1
        end do 

    end function julia_function

end program julia_set