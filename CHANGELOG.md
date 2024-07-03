# Changelog

## [v1.1.0](https://github.com/KumarjitDas/kdapi/compare/v1.0.0...v1.1.0) - 2024-07-03

### Fixed

- [Issue #5](https://github.com/KumarjitDas/kdapi/issues/5)&nbsp; Sometimes its COMP and sometimes COMPILER
  - Changed all the _\*\_COMPILER\_\*_ to _\*\_COMP\_\*_

### Added

- [Issue #4](https://github.com/KumarjitDas/kdapi/issues/4)&nbsp; Add system specification c-strings
  - User readable c-string macros for _compiler_, _OS_, _CPU_, and _endianness_
- Second example [_examples/example2.c_](examples/example2.c)
- Target platform validation cmake script [_validate_target_platform.cmake_](cmake/validate_target_platform.cmake).

### Changed

- [Issue #3](https://github.com/KumarjitDas/kdapi/issues/3)&nbsp; Target platform specific installation name
  - The name of the installation according to the chosen platform
- [Issue #2](https://github.com/KumarjitDas/kdapi/issues/2)&nbsp; C89/C90 standard for example.
  - The default C standard and set it to C89/90 or ANSI C standard for example source compilation
- Main example source file name(_examples/example.c_) to [_examples/example1.c_](examples/example1.c)

### Removed

- `/MD` option for MSVC compiler

## [v1.0.0](https://github.com/KumarjitDas/kdapi/releases/tag/v1.0.0) - 2024-06-29

### Added

- Compiler detection macros for various compilers (Intel, GCC, LLVM, etc.).
- Target operating system identification macros (Linux, Windows, etc.).
- Target CPU architecture detection macros (x86, x64, ARM, etc.).
- Endianness determination macros (little-endian, big-endian).
- Import-export macros for DLL handling.
- Calling convention macros (cdecl, stdcall, fastcall).
- CMake's configuration files for both shared and static builds.
- Example program (`examples/example.c`) demonstrating the library usage.
