configure_file(
    "config.hpp.in"
    "${CMAKE_BINARY_DIR}/configured_files/includes/config.hpp" ESCAPE_QUOTES # absolute path to build
)