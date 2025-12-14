aux_source_directory(. DIR_UTILS)

# 找 glog
find_package(Glog REQUIRED)

add_library(utils ${DIR_UTILS})

# glog 的 include 目录一定要加（是 include，不是 include/glog）
target_include_directories(utils
    PUBLIC
        ${GLOG_INCLUDE_DIRS}
)

# 链接 glog（pthread 是 glog 必需依赖）
target_link_libraries(utils
    PUBLIC
        ${SPC_LIBS}
        ${GLOG_LIBRARIES}
        pthread
)
