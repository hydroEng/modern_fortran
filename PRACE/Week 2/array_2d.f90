program arrays_2d    
    implicit none
    
    real, dimension(2,3) :: matrix1
    real, dimension(3,2) :: matrix2
    real, dimension(2,2) :: mult

    integer :: i

    matrix1 = reshape([2.,3.,5.,7.,11.,13.], shape(matrix1))
    matrix2 = reshape([1,2,3,4,5,6], shape(matrix2))

    do i = 1, size(matrix1, 1)
        print *, matrix1(i, :)
    end do

    mult = matmul(matrix1, matrix2)

    print *, 'The matrix multiplication of m1 and m2 is:'
    do i =1, size(mult, 1)
        print *, mult(i,:)
    end do

end program arrays_2d
