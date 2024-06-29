write_status("'examples' subdirectory added.")

# Get all .c files in the directory
file(GLOB ALL_C_FILES "*.c")

# Initialize an empty list to store file names without extensions
set(EXAMPLE_LIST "")

# Loop over each file and extract the name without extension
foreach(FILE_PATH ${ALL_C_FILES})
  get_filename_component(FILE_NAME_WE ${FILE_PATH} NAME_WE)
  list(APPEND EXAMPLE_LIST ${FILE_NAME_WE})
endforeach()

# Loop through each item in the examples list
foreach(EXAMPLE_ITEM ${EXAMPLE_LIST})
  # Attaching library name in front of example item
  set(EXAMPLE_TARGET "${KDAPI_PROJECT_NAME_LOWER}-${EXAMPLE_ITEM}")

  # Build an executable from the `EXAMPLE_ITEM` source
  add_executable(${EXAMPLE_TARGET} "${EXAMPLE_ITEM}.c")

  # Link the built executable with the main library
  target_link_libraries(${EXAMPLE_TARGET} PRIVATE "KDAPI::${KDAPI_LIBRARY_NAME}")

  # Setting build postfixes for different build configurations
  set_target_properties(
    ${EXAMPLE_TARGET}      PROPERTIES
    DEBUG_POSTFIX          "${KDAPI_STATIC_POSTFIX}-d"
    RELEASE_POSTFIX        "${KDAPI_STATIC_POSTFIX}"
    MINSIZEREL_POSTFIX     "${KDAPI_STATIC_POSTFIX}-mr"
    RELWITHDEBINFO_POSTFIX "${KDAPI_STATIC_POSTFIX}-rd"
  )

  # Check if the project builds shared libraries
  if(BUILD_SHARED_LIBS)
    # If the project builds shared libraries then set the static and shared
    # library directory to lib and executables directory to bin
    set_target_properties(
      ${EXAMPLE_TARGET}        PROPERTIES
      ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
      LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
      RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    )
  endif()

  write_status("Adding example: ${EXAMPLE_TARGET}")
endforeach()