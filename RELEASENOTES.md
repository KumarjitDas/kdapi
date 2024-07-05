# Release Notes

## [v1.2.0](https://github.com/KumarjitDas/kdapi/releases/tag/v1.2.0)
6th July 2024

### Resolved Issues

- [Issue #9](https://github.com/KumarjitDas/kdapi/issues/9): Added license statement to all CMake files.
- [Issue #7](https://github.com/KumarjitDas/kdapi/issues/7): Added a separate macro for C++ detection.
- [Issue #10](https://github.com/KumarjitDas/kdapi/issues/10): Added `undef` statements for DLL macros.
- [Issue #8](https://github.com/KumarjitDas/kdapi/issues/8): Added macros to detect the architecture of the system
    - For 32-bit and 64-bit integer
    - For 32-bit and 64-bit pointer(address)

### Added

- The CLion specific _gitignore_ file.

## [v1.1.0](https://github.com/KumarjitDas/kdapi/releases/tag/v1.1.0)
3rd July 2024

### Resolved Issues

- [Issue #5](https://github.com/KumarjitDas/kdapi/issues/5): Changed all the _\*\_COMPILER\_\*_ to _\*\_COMP\_\*_.
- [Issue #4](https://github.com/KumarjitDas/kdapi/issues/4): Added user readable c-string macros for _compiler_, _OS_, _CPU_, and _endianness_.
- [Issue #3](https://github.com/KumarjitDas/kdapi/issues/3) Changed the name of the installation according to the chosen platform
- [Issue #2](https://github.com/KumarjitDas/kdapi/issues/2) Changed the default C standard and set it to C89/90 or ANSI C standard for example source compilation.

### Added

- Second example [_examples/example2.c_](examples/example2.c).
- Target platform validation.

### Changed

- Main example source file name(_examples/example.c_) to [_examples/example1.c_](examples/example1.c)

### Removed

- `/MD` option for MSVC compiler

## [v1.0.0](https://github.com/KumarjitDas/kdapi/releases/tag/v1.0.0)
29th June 2024

### Features

- **Compiler Detection**: Macros for various compilers (Intel, GCC, LLVM, etc.).
- **OS Identification**: Macros for target operating systems (Linux, Windows, etc.).
- **CPU Architecture Detection**: Macros for target CPU architectures (x86, x64, ARM, etc.).
- **Endianness Determination**: Macros for little-endian and big-endian.
- **DLL Handling**: Import-export macros for DLLs.
- **Calling Conventions**: Macros for cdecl, stdcall, fastcall.
- **Build Configuration**: CMake configuration files for shared and static builds.
- **Example Program**: `examples/example.c` demonstrating library usage.

For more details, see the full [Changelog on GitHub](CHANGELOG.md) or [raw](https://raw.githubusercontent.com/KumarjitDas/kdapi/main/CHANGELOG.md).

## Version Details

- **Current Version**: 1.2.0
- **Release Date**: 6th July 2024
- **Previous Version**: 1.1.0
