set(LIBRARY_SOURCES
    "my_lib.cpp")
set(LIBRARY_HEADERS
    "my_lib.hpp")

add_library(${LIBRARY_NAME} STATIC ${LIBRARY_SOURCES} ${LIBRARY_HEADERSs})
target_include_directories(${LIBRARY_NAME} PUBLIC 
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/includes") # tells the compiler where to find the header files.