find_package(Eigen3 REQUIRED)

include_directories(${CMAKE_SOURCE_DIR}/example)
include_directories(${FMCA_INCLUDE_DIR})

add_executable(test_H2Matrix.out test_H2Matrix.cpp)
target_link_libraries(test_H2Matrix.out PRIVATE  Eigen3::Eigen)


