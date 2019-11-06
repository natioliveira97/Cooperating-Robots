


#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>


image_transport::Publisher image_pub;

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

    sensor_msgs::ImagePtr cleanImage = cv_bridge::CvImage(std_msgs::Header(), "mono8", destination).toImageMsg();
    cv::imshow("view",destination);
    cv::waitKey(30);
    image_pub.publish(cleanImage);
}

int main(int argc, char **argv){
    ros::init(argc, argv, "extract_lines");
    ros::NodeHandle nh("~");

    std::string image_raw_name, image_clean_name;
    std::cout<< nh.getParam("image_raw", image_raw_name); 
    std::cout<< nh.getParam("image_clean", image_clean_name); 


    image_transport::ImageTransport it(nh);
    image_transport::Subscriber image_sub = it.subscribe(image_raw_name, 1, imageCallback);

    image_pub = it.advertise(image_clean_name, 1);

    ros::spin();
}

	