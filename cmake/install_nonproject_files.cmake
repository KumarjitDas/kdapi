# file: install_nonproject_files.cmake
# author: Kumarjit Das
# date: 2024-06-29
# brief: KDAPI library cmake export rules file.

# BSD 2-Clause License
#
# Copyright (c) 2024, Kumarjit Das
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

install(
  FILES
  "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt"
  "${CMAKE_CURRENT_SOURCE_DIR}/CHANGELOG.md"
  "${CMAKE_CURRENT_SOURCE_DIR}/README.md"
  "${CMAKE_CURRENT_SOURCE_DIR}/RELEASENOTES.md"
  DESTINATION "${KDAPI_INSTALL_DIR_NAME}"
)

# Install all the example source files
file(GLOB _EXAMPLE_FILES "${CMAKE_CURRENT_SOURCE_DIR}/examples/*.c")
install(FILES ${_EXAMPLE_FILES} DESTINATION "${KDAPI_INSTALL_DIR_NAME}/examples")