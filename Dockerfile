# Use a pre-built image with the Rust compiler and necessary build tools installed
FROM rust:1.68.2 AS build


# Copy the source code to the container
COPY . .

# Build the web app
RUN cargo build --release

# Expose the port that the web app listens on
EXPOSE 7878

# Run the web app
CMD ["./target/release/hello"]

# ENTRYPOINT ["tail", "-f", "/dev/null"]