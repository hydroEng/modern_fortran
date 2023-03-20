program logistic_map
    implicit none
    
    integer :: n = 10, i
    real :: x_start = 0.58, x, r
    real :: r0 = 2.4, r1 =4
    r = r0
    do while(r < r1)
        x = log_map(n, x_start, r)
        print *, r, x
        r = r + 0.01
        x = x_start
    end do 

contains
    function log_map(n, x_start, r) result(x)
        
        integer, intent(in) :: n
        real, intent(in) :: x_start, r
        real :: x, x_1
        integer :: i

        x = x_start

        do i = 1, n, 1
            x_1 = r * x * (1 - x)
            x = x_1
        end do
        
    end function log_map
end program logistic_map

