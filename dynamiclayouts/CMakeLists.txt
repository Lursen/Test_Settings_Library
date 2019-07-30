cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project(SettingsLibrary)

#SET(CMAKE_C_COMPILER E:\Programms\Qt\Tools\mingw730_64\bin\gcc.exe)
#SET(CMAKE_CXX_COMPILER E:\Programms\Qt\Tools\mingw730_64\bin\g++.exe)

set(SOURCES settings_library/database.cpp settings_library/result.cpp settings_library/settings.cpp settings_library/statement.cpp)

set(HEADERS settings_library/database.h settings_library/result.h settings.h settings_library/settings_library/statement.h)

add_library(settings_lib ${SOURCES} ${HEADERS})

add_library(test_lib dialog.h dialog.cpp)

add_executable(SettingsLibrary main.cpp)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

find_package (SQLite3)

if (SQLITE3_FOUND)

  include_directories(${SQLITE3_INCLUDE_DIRS})

  target_link_libraries (settings_lib test_lib ${SQLITE3_LIBRARIES})

endif (SQLITE3_FOUND)


