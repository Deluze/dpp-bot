cmake_minimum_required(VERSION 3.20)
project(dpp_bot)

set(CMAKE_CXX_STANDARD 20)

find_package(dpp CONFIG REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(nlohmann_json REQUIRED)

add_executable(dpp_bot main.cpp)

target_link_libraries(dpp_bot PRIVATE dpp::dpp OpenSSL::SSL ZLIB::ZLIB nlohmann_json::nlohmann_json)
target_include_directories(dpp_bot PRIVATE /vcpkg/installed/x64-linux/include)
