program example
    implicit none
    integer :: i
    integer, dimension(3, 4) :: data = reshape([ (i, i=1, 12) ], [3, 4])
    
    print *, maxloc(data, dim = 1, mask=mod(data, 2) == 0)
end program