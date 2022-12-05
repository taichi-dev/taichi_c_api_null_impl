cmake_minimum_required(VERSION 3.13)

set(TAICHI_C_API_NAME taichi_c_api)

project(${TAICHI_C_API_NAME} LANGUAGES C CXX)

# Declare executable target.
add_library(${TAICHI_C_API_NAME} SHARED
    "src/c_api_null_impl.cpp")
target_include_directories(${TAICHI_C_API_NAME} PUBLIC "include")
