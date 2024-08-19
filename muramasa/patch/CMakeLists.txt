cmake_minimum_required(VERSION 3.16)

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY $<1:${CMAKE_FINAL_OUTPUT_DIRECTORY}>)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY $<1:${CMAKE_FINAL_OUTPUT_DIRECTORY}>)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY $<1:${CMAKE_FINAL_OUTPUT_DIRECTORY}>)
add_compile_options(
  /std:c++17
  /MP
  /wd4018 
  /wd4819 
  /wd4244
  /wd4267
  /DVERSION="${VERSION}"
  /DUNICODE 
  /D_UNICODE
)
project(patch)

add_library(Horizontal MODULE patch.cpp  patch.rc)  
include_directories(Detours-4.0.1/include)
target_link_libraries(Horizontal ${CMAKE_CURRENT_SOURCE_DIR}/Detours-4.0.1/lib.X86/detours.lib)

add_executable(HorizontalLoader WIN32 loader.cpp)
target_link_libraries(HorizontalLoader ${CMAKE_CURRENT_SOURCE_DIR}/Detours-4.0.1/lib.X86/detours.lib)