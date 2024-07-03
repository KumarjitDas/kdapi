/**
 * @file example2.c
 * @author Kumarjit Das
 * @date 2024-07-03
 * @brief KDAPI library example source file #2.
 */
/**
 * LICENSE:
 * 
 * Copyright (c) 2024, Kumarjit Das
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * 
 * - Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include <stdio.h>
#include "kdapi.h"


int main(int argc, char **argv)
{
  (void) argc;
  (void) argv;

  (void) printf("KDAPI example :: begin\n\n");

  (void) printf("API Version: " KD_VERSION_STR "\n");
  (void) printf("Compiler: " KD_COMP_STR "\n");
  (void) printf("Target Operating System: " KD_OS_STR "\n");
  (void) printf("Target CPU: " KD_CPU_STR "\n");
  (void) printf("Endianness: " KD_ENDIAN_STR "\n");

  (void) printf("\nKDAPI example :: end\n\n");

  return 0;
}
