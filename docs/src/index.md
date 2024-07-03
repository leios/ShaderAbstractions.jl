# Shader Abstractions (.jl)

As a programming language, Julia has fantastic tooling for General Purpose Graphics Processing Unit (GPGPU) computation, with a full suite of tools for NVIDIA ([CUDA.jl](https://cuda.juliagpu.org/stable/)), AMD ([AMDGPU.jl](https://amdgpu.juliagpu.org/stable/)), Intel ([oneAPI.jl](https://github.com/JuliaGPU/oneAPI.jl)), and Apple silicon ([Metal.jl](https://github.com/JuliaGPU/Metal.jl)).
These APIs all provide nearly identical performance to their counterparts in C and can be used by either writing GPU kernels directly or through array-level dispatches with [GPUArrays.jl](https://github.com/JuliaGPU/GPUArrays.jl).
In addition, Julia provides an abstract kernel language ([KernelAbstractions.jl](https://github.com/JuliaGPU/KernelAbstractions.jl)) that allows users to write a single GPU kernel that can execute on any device hardware or else in parallel on the CPU.
All of these packages are meant to allow Julia users to harness the power of GPU parallelism for fast, efficient computation; however, they do not target the primary purpose of GPUs to begin with: graphics.

Though Julia does provide tooling for graphics (like [ModernGL.jl](https://github.com/JuliaGL/ModernGL.jl) and [Vulkan.jl](https://github.com/JuliaGPU/Vulkan.jl)), these packages are often low-level wrappers for C APIs and are not connected to any of the GPU compute infrastructure.
There are clear technical hurdles to solve to unify both APIs, and it's not clear whether doing so would provide technical benefits for the end-user as the use-cases for computational and graphical workflows are often drastically different.

ShaderAbstractions.jl is an attempt to provide some Julian abstractions to the traditional graphics pipeline.
It's primary goal is to provide a sister package to KernelAbstractions.jl and allow for simple shader design and compilation to SPIRV for Vulkan.
Beyond that, some concepts might be stolen from GPUArrays, GPUCompiler, and other packages within the Julia ecosystem to provide a modern graphical API that hooks into Vulkan without performance loss.
Though that is the goal, it is currently still a huge work in progress.
Issues and Pull Requests on github are always welcome!

