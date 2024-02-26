FROM alpine:latest

# Add any additional setup or dependencies here
RUN apk add g++ clang openmp boost cmake  clang-dev eigen-dev make ninja python3-dev git

# Set the working directory
WORKDIR /app

# Command  to run when the container starts
CMD ["/bin/ash"]