program arrays

    implicit none
    real(8), dimension(3) :: vector, vector1, vector2
    integer :: i

    vector(2) = 5.7
    vector(1) = 2*vector(2)

    print *, vector

    vector1 = [ 3.0, 5.0, 7.0 ]
    vector2 = [ (0.5*i - 1.0, i=1, 3) ]

    print *, dot_product(vector, vector1)
    print *, size(vector1), 'reee', sum(vector1)

end program arrays
