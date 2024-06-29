write_status("Setting build postfixes.")

# Add `-s` as postfix to the build output when building static libraries
if(NOT BUILD_SHARED_LIBS)
  set(KDAPI_STATIC_POSTFIX "-s")
endif()

# Setting build postfixes for different build configurations
set_target_properties(
  ${KDAPI_LIBRARY_NAME}      PROPERTIES
  OUTPUT_NAME            "${KDAPI_LIBRARY_NAME}"
  DEBUG_POSTFIX          "${KDAPI_STATIC_POSTFIX}-d"
  RELEASE_POSTFIX        "${KDAPI_STATIC_POSTFIX}"
  MINSIZEREL_POSTFIX     "${KDAPI_STATIC_POSTFIX}-mr"
  RELWITHDEBINFO_POSTFIX "${KDAPI_STATIC_POSTFIX}-rd"
)
