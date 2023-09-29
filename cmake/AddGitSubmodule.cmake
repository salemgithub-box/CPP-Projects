function(add_git_submodule dir) # name and input

    if(NOT EXISTS ${PROJECT_SOURCE_DIR}/${dir}/CMakeLists.txt) # if there is no cmakelists.txt file.
        find_package(Git REQUIRED) # git must be on device, find packages searches path for the required package
        execute_process(COMMAND ${GIT_EXECUTABLE}  # if git is found thgen find_package function will set some variables for it
            submodule update --init --recursive --${PROJECT_SOURCE_DIR}/${dir}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}) #WORKING_DIRECTORY -> directory to run command from.
    endif()
    
    if(EXISTS ${PROJECT_SOURCE_DIR}/${dir}/CMakeLists.txt) # if there is no cmakelists.txt file.
        add_subdirectory(${PROJECT_SOURCE_DIR}/${dir})
    endif()
endfunction(add_git_submodule)