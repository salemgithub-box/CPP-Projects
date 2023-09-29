add_executable(${EXECUTABLE_NAME} hello.cpp)
target_link_libraries(${EXECUTABLE_NAME} PUBLIC
    ${LIBRARY_NAME}
    nlohmann_json)