FROM rust:1.49.0-buster

RUN rustup target add wasm32-wasi --toolchain 1.49.0 && \
    wget -nv -O - https://github.com/fastly/cli/releases/download/v0.26.3/fastly_v0.26.3_linux-amd64.tar.gz | tar xzf - > fastly && \
    mv fastly /usr/bin/fastly