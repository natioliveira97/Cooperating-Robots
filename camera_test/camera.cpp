#include <stdio.h>
#include <opencv2/opencv.hpp>
using namespace cv;
int main(int argc, char** argv )
{
    VideoCapture capture(0);
    while(true){
        if(capture.isOpened()){
            Mat image;

            capture >> image;

            imshow("Camera", image);

            if(waitKey(30) >= 0){
                break;
            }
        } 
        else{
                printf("Cap is not openned\n");
        }
        
    }

}