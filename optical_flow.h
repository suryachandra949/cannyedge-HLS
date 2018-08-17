#include <hls_video.h>
void opticalflow(hls::stream<ap_axiu<8,1,1,1> >& input_stream1,hls::stream<ap_axiu<8,1,1,1> >& input_stream2,hls::stream<ap_axiu<8,1,1,1> >&output_stream1,hls::stream<ap_axiu<8,1,1,1> >& output_stream2);

void calcgrad_x(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_x);

void calcgrad_y(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_y);
void calcgrad2_x(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_x);
void calcgrad2_y(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_y);
void calcgrad_t(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_t);
void calcgrad_tnext(hls::Mat<1024,1024,HLS_16UC1>& img,hls::Mat<1024,1024,HLS_16UC1>& grad_t);
void division1(hls::Mat<1024,1024,HLS_32FC1>& product,hls::Mat<1024,1024,HLS_32FC1>& D,hls::Mat<1024,1024,HLS_32FC1>& out);
void division2(hls::Mat<1024,1024,HLS_32FC1>& product,hls::Mat<1024,1024,HLS_32FC1>& D,hls::Mat<1024,1024,HLS_32FC1>& out);
void averagefour(hls::Mat<1024,1024,HLS_32FC1>& input,hls::Mat<1024,1024,HLS_32FC1>& average);
void firstiterationU(hls::Mat<1024,1024,HLS_16UC1>& gradsum_x,hls::Mat<1024,1024,HLS_16UC1>& gradsum_y,hls::Mat<1024,1024,HLS_16UC1>& gradsum_t,hls::Mat<1024,1024,HLS_32FC1>& Uaverage,hls::Mat<1024,1024,HLS_32FC1>& Vaverage,hls::Mat<1024,1024,HLS_32FC1>& D,hls::Mat<1024,1024,HLS_32FC1>& final);
void firstiterationV(hls::Mat<1024,1024,HLS_16UC1>& gradsum_x,hls::Mat<1024,1024,HLS_16UC1>& gradsum_y,hls::Mat<1024,1024,HLS_16UC1>& gradsum_t,hls::Mat<1024,1024,HLS_32FC1>& Uaverage,hls::Mat<1024,1024,HLS_32FC1>& Vaverage,hls::Mat<1024,1024,HLS_32FC1>& D,hls::Mat<1024,1024,HLS_32FC1>& final);
