program quiz_29
    implicit none
    
    integer :: i =1, h = 1, k = 1
    integer, dimension(3, 4) :: data = reshape([ (i, i=1, 12) ], [3, 4])
    
    do k = 1, size(data, 1)
        print *, data(k,:)
    end do

    print *, maxloc(data, dim=1)

contains

    subroutine print_array(data)
        implicit none
        real, dimension(3) :: data

        print *, data
    end subroutine print_array

    subroutine fill_array(A)
        implicit none
        integer, dimension(:, :) :: A
        integer :: i2, j
    
        do j = 1, size(A, 1)        ! Row
            do i2 = 1, size(A, 2)    ! Column
                A(i2, j) = (i2 - 1)*size(A, 2) + j
            end do
        end do
    end subroutine fill_array

end program quiz_29 