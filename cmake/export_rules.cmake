write_status("Generating ${KDAPI_PROJECT_NAME_LOWER}-targets.")

# Adding this to make cache variables for install destinations
include("GNUInstallDirs")

# Creating export target for the main library
install(TARGETS              ${KDAPI_LIBRARY_NAME}
        EXPORT               ${KDAPI_PROJECT_NAME_LOWER}-targets
        LIBRARY  DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_LIBDIR}"
        ARCHIVE  DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_LIBDIR}"
        RUNTIME  DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_BINDIR}"
        INCLUDES DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_INCLUDEDIR}")

# Setting the install location of the generated export target file
install(EXPORT      ${KDAPI_PROJECT_NAME_LOWER}-targets
        FILE        "${KDAPI_PROJECT_NAME_LOWER}-targets.cmake"
        NAMESPACE   KDAPI::
        DESTINATION "${KDAPI_PROJECT_NAME_LOWER}/${CMAKE_INSTALL_LIBDIR}/${KDAPI_INSTALL_CMAKE_DIR}")

# Rule to export all the targets directly from the build-tree
export(
  EXPORT ${KDAPI_PROJECT_NAME_LOWER}-targets
  # FILE "${CMAKE_CURRENT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-targets.cmake"
  FILE "${PROJECT_BINARY_DIR}/${KDAPI_PROJECT_NAME_LOWER}-targets.cmake"
  NAMESPACE KDAPI::
)
