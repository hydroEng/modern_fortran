program logistic_function
    implicit none
    real(8), allocatable, dimension(:) :: x0, r, result
    integer :: i

    x0 = linspace(0.0, 1.0, 100)
    r = linspace(2.4, 4., 100)
    
    do i = 1, size(r), 1
        result = log_map(x0, r(i), 20)
        print *, r(i), result
    end do 


contains
    elemental real(8) function log_map(x0, r, n) result(x)

    real(8), intent(in) :: x0
    real(8), intent(in) :: r
    integer, intent(in) :: n
    integer :: i

    x = x0
    do i = 1, n, 1
        x = r * x * (1 - x)
    end do 
    end function log_map

    ! Linspace function taken from chatGPT. 

    pure function linspace(start, stop, num) result(result_arr)
    implicit none
    
    real, intent(in) :: start, stop
    integer, intent(in) :: num
    
    real :: result_arr(num)
    real :: step
    
    integer :: i
    
    step = (stop - start) / real(num - 1)
    
    do i = 1, num
        result_arr(i) = start + step * real(i - 1)
    end do
    
end function linspace

end program logistic_function