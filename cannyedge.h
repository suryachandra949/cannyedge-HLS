#include <hls_video.h>
#include <ap_fixed.h>
#include <hls_math.h>

void grad_computation(hls::Mat<1024,1024,HLS_8UC1>& grad_x,hls::Mat<1024,1024,HLS_8UC1>& grad_y,hls::Mat<1024,1024,HLS_16UC1>& grad_out);
void nonmax_supression(hls::Mat<1024,1024,HLS_16UC1>& grad_out, hls::Mat<1022,1022,HLS_8UC1>& supressed);
void canny(hls::stream<ap_axiu<8,1,1,1> >& input_stream,hls::stream<ap_axiu<8,1,1,1> >&output_stream);
