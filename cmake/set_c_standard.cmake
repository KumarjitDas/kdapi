# Using C99 standard to compile the library
set_target_properties(${KDAPI_LIBRARY_NAME} PROPERTIES C_STANDARD 90)
write_status("Setting C standard as C90.")
