# Use the Debian base image from Docker Hub
FROM debian:latest

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install essential packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    vim \
    git

# Create a directory for your application (optional)
RUN mkdir /app

# Set the working directory inside the container
WORKDIR /app

# Command to run when the container starts (optional)
CMD ["bash"]
