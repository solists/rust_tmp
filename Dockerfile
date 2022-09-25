FROM rust

COPY target/release/rust_test /app/rust_test

WORKDIR /app

EXPOSE 27658

CMD ["/app/rust_test"]