# Setting the project name in lower, upper, and mixed case
set(KDAPI_PROJECT_NAME "kdapi")
string(TOLOWER ${KDAPI_PROJECT_NAME} KDAPI_PROJECT_NAME_LOWER)
string(TOUPPER ${KDAPI_PROJECT_NAME} KDAPI_PROJECT_NAME_UPPER)

# Setting the main library name in both lower and upper-cases
set(KDAPI_LIBRARY_NAME "kdapi")
string(TOUPPER ${KDAPI_LIBRARY_NAME} KDAPI_LIBRARY_NAME_UPPER)

# Setting project version
set(${KDAPI_LIBRARY_NAME_UPPER}_VERSION_MAJOR 1)
set(${KDAPI_LIBRARY_NAME_UPPER}_VERSION_MINOR 2)
set(${KDAPI_LIBRARY_NAME_UPPER}_VERSION_PATCH 0)

string(CONCAT ${KDAPI_LIBRARY_NAME_UPPER}_VERSION
  "${${KDAPI_LIBRARY_NAME_UPPER}_VERSION_MAJOR}."
  "${${KDAPI_LIBRARY_NAME_UPPER}_VERSION_MINOR}."
  "${${KDAPI_LIBRARY_NAME_UPPER}_VERSION_PATCH}")

# Setting project description
string(CONCAT ${KDAPI_PROJECT_NAME_UPPER}_DESCRIPTION
  "A simple, header-only C library designed to provide compile-time system information.")

# Creating the write_status function
function(write_status)
  set(STATUS_VARIABLE "")

  foreach(argument ${ARGV})
    set(STATUS_VARIABLE "${STATUS_VARIABLE}${argument}")
  endforeach()

  message(STATUS "[${KDAPI_PROJECT_NAME_UPPER}] ${STATUS_VARIABLE}")
endfunction()

write_status("Initiating the project setup.")

# Generate compile commands for IDE's
set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

write_status("CMAKE_EXPORT_COMPILE_COMMANDS is set to: "
  ${CMAKE_EXPORT_COMPILE_COMMANDS})

# Setting the current user directory
if(CMAKE_HOST_SYSTEM_NAME STREQUAL "Windows")
  set(KDAPI_CURRENT_USER_PATH "C:/Users/$ENV{USERNAME}")
else()
  set(KDAPI_CURRENT_USER_PATH "/$ENV{USER}")
endif ()

write_status("Current user path: ${KDAPI_CURRENT_USER_PATH}")

# Getting the build directory name from current binary directory
string(REPLACE "${CMAKE_SOURCE_DIR}/"
  "" KDAPI_BUILD_DIRECTORY
  ${CMAKE_CURRENT_BINARY_DIR})

# Setting the build library type name
if(BUILD_SHARED_LIBS)
  set(KDAPI_BUILD_LIBRARY_TYPE "Shared")
else()
  set(KDAPI_BUILD_LIBRARY_TYPE "Static")
endif()

# Setting the build directory name
string(FIND
  ${KDAPI_BUILD_DIRECTORY}
  ${KDAPI_BUILD_LIBRARY_TYPE}
  _KDAPI_BUILD_LIBRARY_TYPE_EXISTS
)

if(${_KDAPI_BUILD_LIBRARY_TYPE_EXISTS} EQUAL -1)
  set(KDAPI_BUILD_DIRECTORY "${KDAPI_BUILD_DIRECTORY}-${KDAPI_BUILD_LIBRARY_TYPE}")
endif()
