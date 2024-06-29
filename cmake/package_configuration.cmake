# For accessing the package configuration helper functions
include("CMakePackageConfigHelpers")

# Configuring the `Config` file for packaging this library
set(CONFIG_FILE "${CMAKE_CURRENT_SOURCE_DIR}/configs")

if(BUILD_SHARED_LIBS)
  set(CONFIG_FILE "${CONFIG_FILE}/config-shared.cmake.in")
else()
  set(CONFIG_FILE "${CONFIG_FILE}/config-static.cmake.in")
endif()

configure_package_config_file(
  ${CONFIG_FILE}
  "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-config.cmake"
  INSTALL_DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_LIBDIR}/${KDAPI_INSTALL_CMAKE_DIR}"
  PATH_VARS KDAPI_INSTALL_LIB_DIR KDAPI_INSTALL_BIN_DIR KDAPI_INSTALL_INCLUDE_DIR
)

# generate the version file for the config file
write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-config-version.cmake"
  VERSION ${${KDAPI_LIBRARY_NAME_UPPER}_VERSION}
  COMPATIBILITY AnyNewerVersion
)

write_status("Configuring package config file from: ${CONFIG_FILE}")

# Setting the install location for the generated config files
install(
  FILES
  "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-config.cmake"
  "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-config-version.cmake"
  DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_LIBDIR}/${KDAPI_INSTALL_CMAKE_DIR}"
)

# Export the package for use from the build-tree
export(PACKAGE ${KDAPI_PROJECT_NAME})
