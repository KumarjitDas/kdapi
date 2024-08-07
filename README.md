
# KDAPI

KDAPI is a simple, header-only C library designed to provide compile-time system information. This project targets both Windows and GNU/Linux (32-bit and 64-bit) platforms. The library aims to help developers easily retrieve details about the compiler, target operating system, target CPU, and endianness at compile-time.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [Naming Convention](#naming-convention)
- [License](#license)
- [Project Status](#project-status)
- [Contact](#contact)
- [Versioning](#versioning)
- [Changelog](#changelog)

## Features

- Detects compiler type and version.
- Identifies the target operating system.
- Determines the target CPU architecture.
- Determines the target architecture integer sizes (32 or 64 bit).
- Determines the target architecture pointer(address) sizes (32 or 64 bit).
- Checks system endianness.
- Provides macros for import-export signatures, calling conventions, and extern indicators.
- CMake target for ease of use with other CMake projects.

## Requirements

To get started with this project, download and install the following.

- Download and install **git**
    - If you use *Windows*, then go to this [link](https://git-scm.com/downloads) and download and install the suitable version.
    - If you use any stable version of *Debian/Ubuntu* then run this command in your terminal
    
        ```shell
        sudo apt-get install git
        ```

    - If you use *macOS* then install [homebrew](https://brew.sh/) if you don't already have it, then run this command in your terminal
    
        ```shell
        brew install git
        ```

- Run the command to clone this repository

  ```shell
  git clone https://github.com/KumarjitDas/kdapi.git
  ```

- Download and install a **C** compiler
    - If you use *Windows 8/10/11* then download **Visual Studio 2017/2019/2022** from this [link](https://visualstudio.microsoft.com/downloads/) or download and install a suitable version of **clang** from this [link](https://releases.llvm.org/download.html). For **gcc**, use the suitable *MinGW* version from this [link](http://mingw-w64.org/doku.php/download).

    - If you use any stable version of *Debian/Ubuntu* then run these commands in your terminal to download and install **clang** and **gcc** compilers

        ```shell
        sudo apt install clang
        ```
    
        ```shell
        sudo apt install gcc
        ```

    - In *macOS*, **clang** is the default **C** compiler. To download and install gcc, run this command in your terminal
    
        ```shell
        brew install gcc
        ```

- For building on Linux 32-bit targets on a 64-bit platform, `gcc-multilib` must be installed:
    
    ```bash
    sudo apt install gcc-multilib
    ```

- Download and install **CMake**
    - For *Windows 8/10/11* download from [kitware](https://cmake.org/files/v3.19/) or [GitHub](https://github.com/Kitware/CMake/releases/tag/v3.19.6)

    - If you use any stable version of *Debian/Ubuntu* then run these commands in your terminal to download and install **cmake**
    
        ```shell
        sudo apt install cmake
        ```

    - To download and install **cmake** on *macOS*, run this command in your terminal

        ```shell
        brew install cmake
        ```

## Usage

- Download the [latest release](https://github.com/KumarjitDas/kdapi/releases/latest) of the project according to your system specification.

- For CMake projects add the _kdapi_ library _cmake_ directory path to the `CMAKE_PREFIX_PATH` variable.
    - In CMake file
    
        ```cmake
        # ...
        list(APPEND CMAKE_PREFIX_PATH path/to/kdapi/lib/cmake)
        # ...
        ```

    - In command line as an argument
        
        ```shell
        cmake ... -DCMAKE_PREFIX_PATH=path/to/kdapi/lib/cmake ...
        ```

- Include the _kdapi.h_ header file in your C project to use KDAPI.

    ```c
    #include "kdapi.h"
    ```

- To build the project from source using CMake you have to provide target platform information (`KDAPI_TARGET_OS` and `KDAPI_TARGET_ARCH`. For example:

    ```shell
    cmake -DKDAPI_TARGET_OS=windows -DKDAPI_TARGET_ARCH=x64 -G Ninja -S path/to/kdapi -B path/to/build
    ```

- When building shared libraries

    - Add the `KD_BUILDING_LIB` macro at the top in your source file _(.c)_ before _"kdapi.h"_ inclusion
    
        ```c
        #define KD_BUILDING_LIB 1
        #include "kdapi.h"
        ```

    - Pass the `KD_DLL=1` to CMake through command line or in your main _CMakeLists.txt_ file

        ```shell
        cmake -DKDAPI_TARGET_OS=windows -DKDAPI_TARGET_ARCH=x64 -DKD_DLL=1 -G Ninja -S path/to/kdapi -B path/to/build
        ```
        
        or,
        
        ```cmake
        target_compile_definitions(mylib KD_DLL=1)
        ```

### Example

You can find all the examples [here](examples). Here's a demo:

```c
#include <stdio.h>
#include "kdapi.h"

int main() {
    printf("Compiler: %s\n", KD_COMP_STR);
    printf("Target Operating System: %s\n", KD_OS_STR);
    printf("Target CPU: %s\n", KD_CPU_STR);
    return 0;
}
```

## Roadmap

See the [open issues](https://github.com/KumarjitDas/kdapi/issues) for a list of proposed
features/functionalities (and known issues).

The list of features and functions implemented till now is given in [Project Status](#project-status).

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any
contributions you make are greatly appreciated.

- Fork this project \[[kdapi](https://github.com/KumarjitDas/kdapi)\]
- Create your *Feature Branch*
    
    ```shell
    git checkout -b feature/AmazingFeature
    ```

- Commit your *Changes*
    
    ```shell
    git commit -m 'Added some AmazingFeature'
    ```

- Push to the Branch
    
    ```shell
    git push origin feature/AmazingFeature
    ```

- Create a [pull request](https://github.com/KumarjitDas/kdapi/pulls)

## Naming Convention

The KDAPI project follows a consistent naming convention to ensure readability and maintainability. Here are the key aspects of the naming convention used:

- **Macro Names**: Macro names are written in uppercase letters with underscores separating words. They typically start with the prefix `KD_`.
    - Examples: `KD_COMPILER_GCC`, `KD_OS_LINUX`, `KD_CPU_X86_64`, `KD_VERSION_MAJOR`

- **Function-Like Macros**: Function-like macros also follow the uppercase with underscores convention and use parentheses to indicate parameters.
    - Examples: `KD_EXTERN_BEGIN`, `KD_EXTERN_END`

- **Constants**: Constants are defined using uppercase letters with underscores and often include a descriptive name or version number.
    - Examples: `KD_VERSION_STR`, `KD_VERSION_MAJOR`

- **File Names**: File names are in lowercase and use underscores to separate words.
    - Examples: `kdapi.h`, `example.c`, `setup_project.cmake`

## License

This project is distributed under the **BSD 2-Clause License**. See [LICENSE](LICENSE.txt) for more information.

## Project Status

List of functionalities/features implemented so far:

- **Compiler Detection**: Macros for various compilers (Intel, GCC, LLVM, etc.).
- **OS Identification**: Macros for target operating systems (Linux, Windows, etc.).
- **CPU Architecture Detection**: Macros for target CPU architectures (x86, x64, ARM, etc.).
- **Architecture Integer Size**: Macros for target CPU architecture integer size.
- **Architecture Pointer Size**: Macros for target CPU architecture pointer(address) size.
- **Endianness Determination**: Macros for little-endian and big-endian.
- **C-String Identifiers**: Macros for human-readable C-string macros for compiler, OS, CPU, and endianness.
- **DLL Handling**: Import-export macros for DLLs.
- **Calling Conventions**: Macros for cdecl, stdcall, fastcall.
- **Build Configuration**: CMake configuration files for shared and static builds.
- **Example Programs**: [Examples](examples) demonstrating library usage.

## Contact

Twitter: [@kumarjitdas1999](https://twitter.com/kumarjitdas1999)

LinkedIn: [Kumarjit Das](https://www.linkedin.com/in/kumarjit-das)

E-mail: [kumarjitdas1999@gmail.com](mailto:kumarjitdas1999+github@gmail.com)

Project link: [KDAPI](https://github.com/KumarjitDas/kdapi)

## Versioning

This project uses **MAJOR**, **MINOR**, and **PATCH** version numbers for
versioning (v*MAJOR.MINOR.PATCH*).

- **MAJOR** version number indicates *new changes which may be incompatible with older versions*.
- **MINOR** version number indicates *addition of backwards-compatible features*.
- **PATCH** version number indicates *backwards-compatible bug fixes*, or minor mistake fixes like *spelling*, *character cases*, *punctuations*, and *indentation*.

## Changelog

The [Changelog](CHANGELOG.md) file contains all the information about the changes made to this project till now.

You can also view the [raw](https://raw.githubusercontent.com/KumarjitDas/kdapi/main/CHANGELOG.md) version.
