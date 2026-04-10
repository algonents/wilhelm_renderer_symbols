# Install script for directory: /home/aludin/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/wilhelm_renderer_sys-0.10.0/cpp/freetype-2.13.2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/freetype2" TYPE DIRECTORY FILES "/home/aludin/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/wilhelm_renderer_sys-0.10.0/cpp/freetype-2.13.2/include/" REGEX "/internal$" EXCLUDE REGEX "/ftconfig\\.h$" EXCLUDE REGEX "/ftoption\\.h$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/freetype2/freetype/config" TYPE FILE FILES
    "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/include/freetype/config/ftconfig.h"
    "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/include/freetype/config/ftoption.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "pkgconfig" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/freetype2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/libfreetyped.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype/freetype-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype/freetype-config.cmake"
         "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/CMakeFiles/Export/0c86f8bc775d65e18482e47053c19923/freetype-config.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype/freetype-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype/freetype-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype" TYPE FILE FILES "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/CMakeFiles/Export/0c86f8bc775d65e18482e47053c19923/freetype-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype" TYPE FILE FILES "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/CMakeFiles/Export/0c86f8bc775d65e18482e47053c19923/freetype-config-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/freetype" TYPE FILE FILES "/home/aludin/Repos/wilhelm_renderer_symbols/target/debug/build/wilhelm_renderer_sys-01edffff2a06089f/out/build/freetype-2.13.2/freetype-config-version.cmake")
endif()

