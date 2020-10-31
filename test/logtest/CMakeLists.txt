
SET( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/Release-build/bin)
add_executable(logtest logtest.c)
target_link_libraries(logtest pthread visualsys)