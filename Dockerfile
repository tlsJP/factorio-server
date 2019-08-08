# factorio
FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y curl xz-utils

# Download factorio
RUN curl -fsSL https://factorio.com/get-download/latest/headless/linux64 -o factorio.tar.xz \
  && tar -C / -xf factorio.tar.xz \
  && rm factorio.tar.xz

VOLUME ["/saves"]
WORKDIR /factorio

CMD ["./bin/x64/factorio", "--start-server", "/saves/multiplayer1.zip"]