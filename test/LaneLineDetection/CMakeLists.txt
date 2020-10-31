SET( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/Release-build/bin)
add_executable(lane_line_detection LaneLineDete.cpp)
target_link_libraries(lane_line_detection visualsys)

add_executable(get_img_pts GetimgPoints.cpp)
target_link_libraries(get_img_pts ${OpenCV_LIBS})

add_executable(color_filter ColorFilter.cpp)
target_link_libraries(color_filter ${OpenCV_LIBS})