cmake_minimum_required(VERSION 3.21)
project(KernelRR CXX )

message(STATUS "ell1 Regression based on FMCA")

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

find_package(Eigen3 REQUIRED)

message(" include Eigen ${EIGEN3_INCLUDE_DIR}")
include_directories(${EIGEN3_INCLUDE_DIR})
message("${CMAKE_MODULE_PATH}")

# we set the include directory the submodule 
set (FMCA_PATH ${CMAKE_SOURCE_DIR}/fmca/FMCA)

message("The project source directory: ${CMAKE_SOURCE_DIR}")

set(CMAKE_CXX_FLAGS "-O3 -std=c++17 -I${FMCA_PATH}")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -fopenmp -std=c++17")

include_directories("${CMAKE_SOURCE_DIR}/fmca")

add_subdirectory(${CMAKE_SOURCE_DIR}/example)
