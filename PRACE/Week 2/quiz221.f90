program quiz221
    implicit none
    integer, dimension(9, 9) :: data = 0
    integer :: i, j 


    forall (i = 1:size(data, 1), j = i:size(data, 2))
        data(i, j) = 1
    end forall
    

end program quiz221
