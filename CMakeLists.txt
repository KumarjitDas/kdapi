cmake_minimum_required(VERSION 3.19 FATAL_ERROR)

# Validate the build configuration
include("CMake/setup_project.cmake")

# Setting the project name, version, and other descriptions
project(${KDAPI_PROJECT_NAME}
  VERSION      "${${KDAPI_LIBRARY_NAME_UPPER}_VERSION}"
  DESCRIPTION  "${${KDAPI_PROJECT_NAME_UPPER}_DESCRIPTION}"
  HOMEPAGE_URL "https://github.com/KumarjitDas/kdapi.git"
  LANGUAGES    "C")

# Validate the build configuration
include("CMake/validate_build_config.cmake")

# Create the main library
include("CMake/create_library.cmake")

# Set the build output directories
include("CMake/set_build_output_directories.cmake")

# Set the installation directories
include("CMake/set_install_directories.cmake")

# Set the C standard
include("CMake/set_c_standard.cmake")

# Set the compiler warnings
include("cmake/set_compiler_flags.cmake")

# Set include directories
include("CMake/set_include_directories.cmake")

# Set build postfixes for different build configurations
include("CMake/set_build_postfixes.cmake")

# Configure the versions of this project
include("CMake/configure_project_version.cmake")

# Add the source files to the main target
include("CMake/export_rules.cmake")

# Adding the package configuration for `find_package` support
include("CMake/package_configuration.cmake")

# Adding the `Examples` directories
add_subdirectory("examples")
