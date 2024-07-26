# Use a minimal Arch Linux base image
FROM archlinux:latest

# Update the package repository and install essential packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel && \
    pacman -Scc --noconfirm

# Install g++ compiler
RUN pacman -S --noconfirm gcc

RUN mkdir -p /test_space

# Set the working directory inside the container
WORKDIR /project

# Command to run your application or project
CMD ["echo", "Container is ready!"]
