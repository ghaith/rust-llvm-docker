FROM rust:buster
    
RUN echo "deb http://apt.llvm.org/buster/   llvm-toolchain-buster-10  main" >> /etc/apt/sources.list

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN apt-get update
RUN apt-get install -y clang-10 lldb-10 lld-10 clangd-10

RUN cargo install cargo-watch 
