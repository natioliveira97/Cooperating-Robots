#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
 
void imageCallback(const sensor_msgs::ImageConstPtr& msg){
	
   cv::Mat cvimage = cv_bridge::toCvShare(msg, "mono8")->image;
   cv::Mat destination(cv::Size(cvimage.cols, cvimage.rows), CV_8U, cv::Scalar(0));
   cv::Mat zeroArray(cv::Size(1, cvimage.cols), CV_8U, cv::Scalar(0));
   cv::Mat rowArray;
   cv::Mat check;
   int k = 0;


   // for(int i = 0; i<cvimage.rows; ++i){
	// 	cv::transpose(cvimage.row(i), rowArray);		
   //  	cv::bitwise_xor(rowArray, zeroArray, check); 
   //    if(cv::countNonZero(check)!=0){
   //       destination.row(k) = (cvimage.row(i)+0);
   //       ++k;
   //    }
   //    else{
   //       std::cout << cvimage.cols << " " << cvimage.rows << std::endl;
   //    }
   // }

   try{
		cv::imshow("view", cvimage);
		// cv::imshow("view2", destination);
		cv::waitKey(30);
   }
   catch (cv_bridge::Exception& e)
   {
     ROS_ERROR("Could not convert from '%s' to 'mono8'.", msg->encoding.c_str());
   }
}

 
int main(int argc, char **argv){
   ros::init(argc, argv, "image_listener");
   ros::NodeHandle nh;
   cv::namedWindow("view", cv::WINDOW_NORMAL);

   image_transport::ImageTransport it(nh);
   image_transport::Subscriber sub = it.subscribe("/camera/image_raw", 1, imageCallback);
  
   ros::spin();
   cv::destroyWindow("view");
}
