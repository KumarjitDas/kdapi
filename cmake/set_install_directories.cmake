# Offer the user the choice of overriding the installation directories
set(KDAPI_INSTALL_LIB_DIR "${KDAPI_PROJECT_NAME_LOWER}/lib" CACHE PATH "Installation directory for libraries")
set(KDAPI_INSTALL_BIN_DIR "${KDAPI_PROJECT_NAME_LOWER}/bin" CACHE PATH "Installation directory for executables")
set(KDAPI_INSTALL_INCLUDE_DIR "${KDAPI_PROJECT_NAME_LOWER}/include" CACHE PATH
  "Installation directory for header files")
set(KDAPI_INSTALL_CMAKE_DIR "cmake" CACHE PATH
  "Installation directory for CMake files")

write_status("Install lib dir set to: ${KDAPI_INSTALL_LIB_DIR}")
write_status("Install bin dir set to: ${KDAPI_INSTALL_BIN_DIR}")
write_status("Install include dir set to: ${KDAPI_INSTALL_INCLUDE_DIR}")
write_status("Install cmake dir set to: ${KDAPI_INSTALL_CMAKE_DIR}")
