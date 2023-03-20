program quiz_1
    implicit none

    ! Q 1-3
    real :: x = 1.0/3
    real :: y = exp(3.0)
    ! Q6
    character(len=5) :: s1, s2, concat_string
    ! Q7
    character(len=2) :: str = "Vorx of the Death Guard"
    ! Q8
    logical :: l1 = .false., l2 = .true., l3 = .false., a,b,c,d

    a = l1 .and. l2 .or. l3
    b = l1 .or. l2 .and. l3
    c = l1 .or. (l2 .and. l3)
    d = .not. l1 .and. l2 .or. l3

    print *, a, b, c, d

    s1 = 'abc'
    s2 = 'cde'

    concat_string = s1//s2
    print *, s1//s2, 'help me'

end program quiz_1