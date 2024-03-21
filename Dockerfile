# Use the official Rust image as a builder stage
# to compile our application
FROM rust:latest

WORKDIR /my-rust-app

# Copy our manifests
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml
COPY ./src ./src

# Build
RUN cargo build --release

# Set the CMD to your binary
CMD ["./my-rust-app/target/release/demo-repo-rust"]
