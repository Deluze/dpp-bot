FROM ubuntu:latest

RUN apt-get update && apt-get install --no-install-recommends -y curl zip unzip libssl-dev zlib1g-dev ca-certificates libsodium-dev libopus-dev cmake pkg-config g++ gcc git make && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /bot

COPY . .

RUN git clone https://github.com/microsoft/vcpkg.git /vcpkg

RUN /vcpkg/bootstrap-vcpkg.sh
RUN /vcpkg/vcpkg install dpp openssl

RUN cmake -B ./build -S . -DCMAKE_TOOLCHAIN_FILE=/vcpkg/scripts/buildsystems/vcpkg.cmake