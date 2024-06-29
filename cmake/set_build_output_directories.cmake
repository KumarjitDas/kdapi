# Setting the static and dynamic library directory to lib and executable directory to bin
set_target_properties(${KDAPI_LIBRARY_NAME} PROPERTIES
  ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
  LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

write_status("Archive output directory set to: ${CMAKE_BINARY_DIR}/lib")
write_status("Library output directory set to: ${CMAKE_BINARY_DIR}/lib")
write_status("Runtime output directory set to: ${CMAKE_BINARY_DIR}/bin")
