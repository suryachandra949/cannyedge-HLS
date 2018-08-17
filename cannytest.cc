#include "cannyedge.h"
#include <hls_opencv.h>


#include <iostream>

using namespace std;

int main(int argc, char** argv){

	IplImage *src1 = cvLoadImage( "zebra.jpg",CV_LOAD_IMAGE_GRAYSCALE);
	IplImage *src2;
	hls::stream<ap_axiu<8,1,1,1> > src1_axi,src2_axi;


	src2 = cvCreateImage(cvSize(1022,1022), src1->depth,src1->nChannels);

	IplImage2AXIvideo(src1,src1_axi);

	canny(src1_axi,src2_axi);

	AXIvideo2IplImage(src2_axi, src2);

	cvSaveImage("sup.jpg", src2);
	cvReleaseImage(&src1);
	cvReleaseImage(&src2);

	return 0;
}
