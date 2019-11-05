


#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>


sensor_msgs::ImagePtr cleanImage;

void imageCallback(const sensor_msgs::ImageConstPtr& msg){
	
   cv::Mat cvimage = cv_bridge::toCvShare(msg, "mono8")->image;
   cv::Mat destination(cv::Size(cvimage.cols, cvimage.rows*2/3), CV_8U);
   int k = 0;

    for(int i = 0; i<cvimage.rows; ++i){
        if(i%6 != 4 && i%6 != 5){
            destination.row(k) = (cvimage.row(i)+0);
            ++k;
        }
    }
    cleanImage = cv_bridge::CvImage(std_msgs::Header(), "mono8", destination).toImageMsg();
}

int main(int argc, char **argv){
    ros::init(argc, argv, "extract_lines");
    ros::NodeHandle nh;

    image_transport::ImageTransport it(nh);

    image_transport::Subscriber image_sub = it.subscribe("/camera/image_raw", 1, imageCallback);
    image_transport::Publisher image_pub = it.advertise("/camera/image_clean", 1);

    ros::Rate loop_rate(5);

    while (nh.ok()){
       image_pub.publish(cleanImage);
       ros::spinOnce();
       loop_rate.sleep();
    }  
}
