##
## Copyright (c) 2016-22, Lawrence Livermore National Security, LLC.
##
## Produced at the Lawrence Livermore National Laboratory.
##
## All rights reserved.
##
##

#module load rocm/4.5.2

set(RAJA_COMPILER "RAJA_COMPILER_CLANG" CACHE STRING "")

set(CMAKE_C_COMPILER   "/opt/rocm-4.5.2/llvm/bin/clang" CACHE PATH "")
set(CMAKE_CXX_COMPILER "/opt/rocm-4.5.2/llvm/bin/clang++" CACHE PATH "")

set(CMAKE_CXX_FLAGS "" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "-std=c++14 -O3 -ffast-math" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-std=c++14 -O3 -g -ffast-math" CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG "-std=c++14 -O0 -g" CACHE STRING "")

set(CMAKE_HIP_ARCHITECTURES "--offload-arch=gfx906,gfx908" CACHE STRING "")

set(ENABLE_CHAI On CACHE BOOL "")
set(ENABLE_HIP On CACHE BOOL "")
set(ENABLE_OPENMP Off CACHE BOOL "")
set(ENABLE_MPI Off CACHE BOOL "")

#set(CMAKE_HIPCC_FLAGS_RELEASE "-O3 --expt-extended-lambda" CACHE STRING "")
#set(CMAKE_HIPCC_FLAGS_RELWITHDEBINFO "-O3 -lineinfo --expt-extended-lambda" CACHE STRING "")
#set(CMAKE_HIPCC_FLAGS_DEBUG "-O0 -g -G --expt-extended-lambda" CACHE STRING "")
#set(CMAKE_HIPCC_HOST_COMPILER "${CMAKE_CXX_COMPILER}" CACHE STRING "")

# For LLNL TCE packages
set(ENABLE_MPI_WRAPPER Off CACHE BOOL "")


