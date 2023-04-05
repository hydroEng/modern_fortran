program hanoi
    implicit none
    integer :: i
    integer, allocatable, dimension(:,:) :: res_board

    res_board = init_board(4)

    do i = 1, size(res_board, dim=1)
        print *, res_board(i,:)
    end do



contains
    function init_board(nr_disks) result(board)
        integer, intent(in) :: nr_disks
        integer :: i
        integer, allocatable, dimension(:,:) :: board


        board = reshape(source=[(0, i = 1, nr_disks * 3)], shape=[nr_disks, 3])

        do i = nr_disks, 1, -1
            board(i, 1) = i
        end do

    end function init_board

    function move_disks(nr_disks, board, source, final, spare) result (moves)
        integer, intent(in) :: nr_disks, source, final, spare
        integer, dimension(:,:), intent(inout) :: board
        integer :: n

        n = nr_disks

        if (n > 0) then
            ! Move n - 1 discs to the aux peg

            move_disks(n - 1, board, source, spare, final)

            ! Update board

            board(nr_disks, source) =  

        end if

    end function 

    function move_disk(n, board, )
end program hanoi