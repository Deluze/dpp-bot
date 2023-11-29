# dpp-bot

My personal template for D++ Discord bots.

The Docker image can be used as a Docker Toolchain in CLion.

## Installation

```bash
docker build .
```

Add `"-DCMAKE_TOOLCHAIN_FILE=/vcpkg/scripts/buildsystems/vcpkg.cmake"` to the CMake Options in CLion so that CLion automatically adds this parameter when generating the CMake project.

