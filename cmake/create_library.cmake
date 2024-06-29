# Adding the main library
add_library(${KDAPI_LIBRARY_NAME} INTERFACE "")
write_status("Creating library: ${KDAPI_LIBRARY_NAME}.")

# Setting an alias in `KDAPI` namespace
add_library("KDAPI::${KDAPI_LIBRARY_NAME}" ALIAS ${KDAPI_LIBRARY_NAME})
write_status("Adding alias to the library: KDAPI::${KDAPI_LIBRARY_NAME}.")
