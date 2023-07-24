FROM rust:1.71 as builder
WORKDIR /app
COPY . .
RUN cargo build --release

# Stage 2: Runtime
FROM debian:buster-slim
COPY --from=builder /app/target/release/rust_test /usr/local/bin/
EXPOSE 8080
CMD ["rust_test"]