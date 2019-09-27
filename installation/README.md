# Installation

This repository contains the libraries and drivers used to connect, capture, process and use the XBox Kinect Sensor with OpenCV.

To install all the packages, run:

```
./install_openni.sh
```

```
./install_opencv.sh
```

```
./install_ros_kinetic.sh
```

To verify if the installation was successfull, run:

```
cd installation_test
cmake .
make
./Kinect_Test
```
