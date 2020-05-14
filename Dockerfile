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

ADD server-settings.json ./config/server-settings.json

RUN mkdir saves

ENTRYPOINT ["./bin/x64/factorio", "--server-settings", "./config/server-settings.json"]
# CMD ["--start-server", "/saves/jpaproject.zip", ]
