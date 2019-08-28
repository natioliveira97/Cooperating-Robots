#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
 
void imageCallback(const sensor_msgs::ImageConstPtr& msg){
   try
   {
     cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
     cv::waitKey(30);
   }
   catch (cv_bridge::Exception& e)
   {
     ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
   }
}

void imageCallback2(const sensor_msgs::ImageConstPtr& msg){
   try
   {
     cv::imshow("view2", cv_bridge::toCvShare(msg, "bgr8")->image);
     cv::waitKey(30);
   }
   catch (cv_bridge::Exception& e)
   {
     ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
   }
}
 
int main(int argc, char **argv){
   ros::init(argc, argv, "image_listener");
   ros::NodeHandle nh;
   cv::namedWindow("view");
   cv::startWindowThread();

   cv::namedWindow("view2");
   cv::startWindowThread();

   image_transport::ImageTransport it(nh);
   image_transport::Subscriber sub = it.subscribe("kinect1/depth/image_rect", 1, imageCallback);

   image_transport::ImageTransport it2(nh);
   image_transport::Subscriber sub2 = it2.subscribe("kinect2/depth/image_rect", 1, imageCallback2);
   
   ros::spin();
   cv::destroyWindow("view");
   cv::destroyWindow("view2");
}
