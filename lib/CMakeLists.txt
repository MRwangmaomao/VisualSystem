include_directories(${PROJET_SOURCE_DIR}/include)
include_directories(${PROJET_SOURCE_DIR}/include/easylogger)

link_directories( #相关库文件的目录
/usr/local/lib)

add_library(visualsys
easylogger/elog_async.c
easylogger/elog_buf.c
easylogger/elog_file_port.c
easylogger/elog_file.c
easylogger/elog_port.c
easylogger/elog_utils.c
easylogger/elog.c
)
target_link_libraries(visualsys pthread ${OpenCV_LIBS})

# set_target_properties(PROPERTIES #表示生成的执行文件所在路径
# RUNTIME_OUTPUT_DIRECTORY>"${PROJECT_SOURCE_DIR}/Release-build/lib")
