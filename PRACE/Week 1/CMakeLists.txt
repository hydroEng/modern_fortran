cmake_minimum_required(VERSION 3.0)

project(fortran_basics LANGUAGES Fortran)

set (CMAKE_Fortran_MODULE_DIRECTORY
    ${CMAKE_BINARY_DIR}/modules)
file(MAKE_DIRECTORY ${CMAKE_Fortran_MODULE_DIRECTORY})

add_compile_options(-Wall -Wextra)

add_executable(hello_fortran.exe hello.f90)
