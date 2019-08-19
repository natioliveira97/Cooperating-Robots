cmake_minimum_required(VERSION 2.8)
project(Kinect_Test)
find_package(OpenCV REQUIRED) #PATHS /usr/local/share/OpenCV NO_DEFAULT_PATH) # manual specification of the OpenCVConfig.cmake path is necessary since otherwise, cmake assigns /opt/local a higher priority and ocv2.4 will be used     
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( Kinect_Test Kinect_Test.cpp )
target_link_libraries( Kinect_Test ${OpenCV_LIBS} )
