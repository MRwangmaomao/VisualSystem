cmake_minimum_required(VERSION 3.4.1)
SET(PROJECT_NAME VisualSystem)
project(${PROJECT_NAME})

add_compile_options(-std=c++14)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/include/easylogger)
include_directories(${CMAKE_BINARY_DIR}/include)

add_subdirectory(lib)
add_subdirectory(test)
add_subdirectory(tool)
