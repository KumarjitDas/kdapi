# Configuring the version header file of the library
configure_file("${KDAPI_LIBRARY_NAME}.h.in"
  "${KDAPI_LIBRARY_NAME}.h")
write_status("Configuring the project version from "
  "${KDAPI_LIBRARY_NAME}.h.in")

# Setting the install destination of the version header file
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_LIBRARY_NAME}.h"
  DESTINATION "${KDAPI_LIBRARY_NAME}/include")
