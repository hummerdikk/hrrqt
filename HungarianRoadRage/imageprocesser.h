#ifndef IMAGEPROCESSER_H
#define IMAGEPROCESSER_H

#include <iostream>
#include <algorithm>
#include <vector>
#include "debugwindow.h"

#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv/cv.h"
#include "opencv2/video/video.hpp"

/*
 *ImageProcesser class for processing the captured video from the wabcamera to controll the car's behaviour.
 *
 *Output: 0: no move, 1 right, -1 left
 *
 */
class ImageProcesser
{
private:
    cv::Size SizeOfCamera;
    cv::Mat ProcessingImage;
    cv::Mat OutImage;
    cv::Mat Foreground;
    cv::Mat Background;

    DebugWindow DebugWin;

public:
    ImageProcesser(cv::Size camsize);
    void setCamSize(cv::Size camsize);
    int getMove(cv::Mat CapturedImage); //Output: 0: no move, 1 right, 2 left
};

#endif // IMAGEPROCESSER_H
