cmake_minimum_required(VERSION 3.18)
project(DroneControllerR)


add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/lib/RadioLib" "${CMAKE_CURRENT_BINARY_DIR}/RadioLib")
set(CMAKE_CXX_STANDARD 17)

include_directories(/lib/RadioLib/src)

add_executable(DroneControllerR main.cpp include/PiHal.h
        src/TelemetricService.cpp
        include/TelemetricService.h
        include/DataStruct.h
        src/RadioTransmitter.cpp
        include/RadioTransmitter.h)

target_link_libraries(${PROJECT_NAME} RadioLib pigpio pthread )
