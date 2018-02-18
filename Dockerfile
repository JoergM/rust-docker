FROM rust:1.24.0 as builder
ENV NAME=rust-docker
WORKDIR /usr/src/${NAME}
COPY . .
RUN cargo test
RUN cargo build --release 

FROM debian:jessie-slim
ENV NAME=rust-docker
COPY --from=builder /usr/src/${NAME}/target/release/${NAME} /usr/local/bin/${NAME}
CMD ${NAME}
