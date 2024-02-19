find_package(MPI REQUIRED)

enable_language(Fortran)

add_executable(hello_world hello_world.cc mytest_mod.f90 mytest_if.f90 MyTestFortran.h)

target_link_libraries(hello_world PRIVATE DataFrame MPI::MPI_CXX)
hmdf_target_data_files(hello_world
    DATA_FILES
        ${PROJECT_SOURCE_DIR}/data/IBM.csv
        ${PROJECT_SOURCE_DIR}/data/DT_IBM.csv
        ${PROJECT_SOURCE_DIR}/data/DT_AAPL.csv
)
## add_test(NAME hello_world COMMAND hello_world)
