#################################################################################
#                                 INSTALATION                                   #
#################################################################################

# This script installs all the libraries and drivers needed to capture and process 
# image from the kinect sensor.

########################
# Install Dependencies #
########################

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential checkinstall cmake git libopencv-dev libgtk2.0-dev pkg-config libavcodec-dev libpng12-dev libavformat-dev libswscale-dev yasm libxine2 libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils libxmu-dev libxi-dev libusb-1.0-0-dev
sudo apt-get install doxygen graphviz mono-complete
sudo apt-get install -y build-essential libturbojpeg libtool autoconf libudev-dev cmake mesa-common-dev freeglut3-dev libxrandr-dev doxygen libxi-dev 
sudo apt-get install default-jdk

##################
# Install OpenNI #
##################

cd OpenNI/Platform/Linux/CreateRedist/
chmod +x RedistMaker
./RedistMaker
cd ../Redist/OpenNI-Bin-Dev-Linux-x64-v1.5.7.10/
sudo ./install.sh
cd ../../../../../

########################
# Install SensorKinect #
########################

cd SensorKinect/Platform/Linux/CreateRedist/
chmod +x RedistMaker
./RedistMaker
cd ../Redist/Sensor-Bin-Linux-x64-v5.1.2.1/
chmod +x install.sh
sudo ./install.sh
cd ../../../../../