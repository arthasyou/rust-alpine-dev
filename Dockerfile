FROM rust:alpine AS rust-cache

ENV CARGO_HOME=/usr/local/cargo
WORKDIR /opt/cache_seed

# 安装构建依赖
RUN apk add --no-cache \
    curl gcc musl-dev openssl-dev openssl-libs-static pkgconfig \
    zlib-dev zlib-static

COPY Cargo.toml Cargo.lock ./
RUN mkdir -p src && echo "fn main(){}" > src/main.rs
RUN cargo fetch || true
RUN cargo build --release || true