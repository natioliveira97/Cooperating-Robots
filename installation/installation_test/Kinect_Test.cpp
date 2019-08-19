#include <stdio.h>
#include <opencv2/opencv.hpp>
using namespace cv;
int main(int argc, char** argv )
{
    VideoCapture capture(CAP_OPENNI);
    while(1){
        Mat depthMap;
        Mat cloudMap;
        Mat disparityMap;
        Mat bgrImage;
        Mat grayImage;

        capture.grab();
        capture.retrieve( depthMap, CAP_OPENNI_DEPTH_MAP );
        capture.retrieve( cloudMap, CAP_OPENNI_POINT_CLOUD_MAP );
        capture.retrieve( disparityMap, CAP_OPENNI_DISPARITY_MAP );
        capture.retrieve( bgrImage, CAP_OPENNI_BGR_IMAGE );
        capture.retrieve( grayImage, CAP_OPENNI_GRAY_IMAGE );


        imshow("Depth Map", depthMap);
        imshow("Disparity Map",disparityMap);
        imshow("Cloud Map", cloudMap);
        imshow("BGR Image", bgrImage);
        imshow("Gray Image", grayImage);

        if( waitKey( 30 ) >= 0 )
            break;
        
    }

}
