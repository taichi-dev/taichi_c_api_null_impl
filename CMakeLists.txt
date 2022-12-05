cmake_minimum_required(VERSION 3.13)

set(TAICHI_C_API_NAME taichi_c_api)

project(${TAICHI_C_API_NAME} LANGUAGES C CXX)

# Declare executable target.
add_library(${TAICHI_C_API_NAME} SHARED
    "src/c_api_null_impl.cpp")
target_include_directories(${TAICHI_C_API_NAME} PUBLIC "include")

install(TARGETS ${TAICHI_C_API_NAME} EXPORT ${TAICHI_C_API_NAME}Targets
    LIBRARY DESTINATION c_api/lib
    ARCHIVE DESTINATION c_api/lib
    RUNTIME DESTINATION c_api/bin
    INCLUDES DESTINATION c_api/include
)
install(DIRECTORY
    "include"
    DESTINATION c_api
    FILES_MATCHING
    PATTERN *.h
    PATTERN *.hpp
    )
