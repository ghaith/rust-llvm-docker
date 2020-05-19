# Rust With LLVM Docker Image

A Docker image for Rust with LLVM installed

The image has cargo watch also installed to allow for easier local development

To use refer to the documentation for the official [rust image](https://hub.docker.com/_/rust)

To use with [llvm-sys](https://gitlab.com/taricorp/llvm-sys.rs) you need to export the correct environment variable for your target.
```
docker run .... -e LLVM_SYS_100_PREFIX=/usr/lib/llvm-10 ...
```
