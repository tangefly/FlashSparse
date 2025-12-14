include(FindPackageHandleStandardArgs)

# glog 安装前缀
set(GLOG_ROOT_DIR "/home/xiaoxunpeng/local" CACHE PATH "Glog root directory")

# include 路径：一定要是 include 的上一级
find_path(GLOG_INCLUDE_DIR
    NAMES glog/logging.h
    PATHS ${GLOG_ROOT_DIR}/include
)

# library 路径
find_library(GLOG_LIBRARY
    NAMES glog
    PATHS ${GLOG_ROOT_DIR}/lib ${GLOG_ROOT_DIR}/lib64
)

find_package_handle_standard_args(
    Glog
    DEFAULT_MSG
    GLOG_INCLUDE_DIR
    GLOG_LIBRARY
)

if(GLOG_FOUND)
    set(GLOG_INCLUDE_DIRS ${GLOG_INCLUDE_DIR})
    set(GLOG_LIBRARIES ${GLOG_LIBRARY})
    message(STATUS "Found glog:")
    message(STATUS "  include = ${GLOG_INCLUDE_DIR}")
    message(STATUS "  library = ${GLOG_LIBRARY}")
endif()
