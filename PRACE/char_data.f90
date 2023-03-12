
program character_data
    implicit none

    character :: char       ! Create a var with type character (length 1, default)
    character(len=8) :: str ! String length 8
    
    str = "This is longer than 8 chars!!"

    print *, str(2:3) ! Print 'hi'
end program character_data

