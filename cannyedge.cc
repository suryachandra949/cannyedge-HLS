#include "cannyedge.h"

void grad_computation(hls::Mat<1024,1024,HLS_8UC1>& grad_x,hls::Mat<1024,1024,HLS_8UC1>& grad_y,hls::Mat<1024,1024,HLS_16UC1>& grad_out){
	HLS_SIZE_T rows =1024;
	HLS_SIZE_T cols = 1024;
	hls::Scalar<1,unsigned char>g_x;
	hls::Scalar<1,unsigned char>g_y;

	hls::Scalar<1,unsigned short> elementoutput;

	unsigned char elementg_x;
	unsigned char elementg_y;


	unsigned char abs_gx;
	unsigned char abs_gy;

	unsigned short dir_g;

	unsigned short element_final;
	unsigned short element_grad;


	for(HLS_SIZE_T i =0 ;i <rows;i++){
		for(HLS_SIZE_T j =0;j<cols;j++){
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS DEPENDENCE array inter false
#pragma HLS PIPELINE
			grad_x >> g_x;
			grad_y >> g_y;
			elementg_x = g_x.val[0];
			elementg_y = g_y.val[0];
			abs_gx = hls::abs(elementg_x);
			abs_gy = hls::abs(elementg_y);

			element_grad = elementg_x + elementg_y;


			if (abs_gx > abs_gy && ((elementg_x > 0 && elementg_y >= 0)||(elementg_x < 0 && elementg_y <= 0))) {
						  if (abs_gx > (2*abs_gy)) dir_g = 0;
						  else dir_g = 1;
						}
						else if (abs_gx <= abs_gy && ((elementg_x > 0 && elementg_y > 0)||(elementg_x < 0 && elementg_y < 0))) {
						  if (abs_gy > (2*abs_gx)) dir_g = 2;
						  else dir_g = 1;
						}
						else if (abs_gx < abs_gy && ((elementg_x >= 0 && elementg_y < 0)||(elementg_x <= 0 && elementg_y > 0))) {
						  if (abs_gy > (2*abs_gx)) dir_g = 2;
						  else dir_g = 3;
						}
						else {
						  if (abs_gy > (2*abs_gx)) dir_g = 0;
						  else dir_g = 3;
						}
			element_final = ((element_grad << 2) | dir_g);
			elementoutput.val[0] = element_final;
			grad_out << element_final;


		}
	}
}

void nonmax_supression(hls::Mat<1024,1024,HLS_16UC1>& grad_out, hls::Mat<1024,1024,HLS_8UC1>& supressed){
	HLS_SIZE_T rows= 1024;
	HLS_SIZE_T cols=1024;
	hls::Scalar<1,unsigned short>get_pixel;
	hls::LineBuffer<2,1024,unsigned short>Buffer;
	hls::Window<3,3,unsigned short>Win;
	unsigned short pixel_value;
	unsigned short temp2;
	unsigned short temp1;
	unsigned char current_dir;
	unsigned char current_grad;
	unsigned char ga;
	unsigned char gb;
	unsigned char out_pixel_val;

	hls::Scalar<1,unsigned short>supressed_val;



	for(HLS_SIZE_T i=0;i <rows+1;i++){
		for(HLS_SIZE_T j=0;j < cols+1;j++){
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS DEPENDENCE array inter false
#pragma HLS PIPELINE
			if(i < rows && j < cols){
				grad_out >> get_pixel;
				pixel_value = get_pixel.val[0];

			}
			if(j < cols){
				temp2=Buffer.getval(1,j);
				temp1=Buffer.getval(0,j);
				Buffer.val[1][j] = temp1;

			}
			if(i < rows && j <cols){
				Buffer.insert_bottom(pixel_value,j);
			}

			Win.shift_right();

			if(j<cols){
				Win.insert(pixel_value,0,0);
				Win.insert(temp1,1,0);
				Win.insert(temp2,2,0);
			}
			current_dir = Win.getval(1,1) & 3;
			current_grad = Win.getval(1,1) << 2;

			  if( i <= 1 || j <= 1 || i > rows-1 || j > cols-1  ) {
						out_pixel_val = 0;
					  }
					  else {
						// Checking in the east-west axis
						if ( current_dir == 0 ) {
						  ga = Win.getval( 1, 0 )>>2;
						  gb = Win.getval( 1, 2 )>>2;
						}
						// Checking in the northEast-southWest axis
						else if ( current_dir == 1 ){
						  ga = Win.getval( 2, 0 )>>2;
						  gb = Win.getval( 0, 2 )>>2;
						}
						// Checking in the north-south axis
						else if ( current_dir == 2 ){
						  ga = Win.getval( 0, 1 )>>2;
						  gb = Win.getval( 2, 1 )>>2;
						}
						// Checking in the northWest-southEast axis
						else { // ( current_dir == 3 )
						  ga = Win.getval( 2, 2 )>>2;
						  gb = Win.getval( 0, 0 )>>2;
						}

						// The pixel is an edge only if it is a local maximum along any axis
						if( current_grad > ga && current_grad > gb ) {
						  out_pixel_val = current_grad;
						}
						else {
						  out_pixel_val = 0;
						}
					  }
			  if( i >0 && j>0){
				  supressed_val.val[0] = out_pixel_val;
				  supressed << supressed_val.val[0];
			  }

		}
	}

}

void hysterisis(hls::Mat<1024,1024,HLS_8UC1>& supressed, hls::Mat<1022,1022,HLS_8UC1>& hysterisis_Image){
	HLS_SIZE_T rows = 1024;
	HLS_SIZE_T cols = 1024;
	hls::Scalar<1,unsigned char>get_pixel;


	unsigned char input_pix;
	hls::LineBuffer<2,1024,unsigned char>Buffer;
	hls::Window<3,3,unsigned char>Win;
	unsigned char temp1;
	unsigned char temp2;

	unsigned char output_pix;
	unsigned char max_threshold = 90;
	unsigned char min_threshold = 30;
	hls::Scalar<1,unsigned char>hysterisis_pix;

	for(HLS_SIZE_T i=0;i<rows;i++){
		for(HLS_SIZE_T j=0;j<cols;j++){
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS DEPENDENCE array inter false
#pragma HLS PIPELINE
			if(i < rows && j < cols){
				supressed >> get_pixel;
				input_pix = get_pixel.val[0];
			}
			if(j < cols){
				temp2 = Buffer.getval(1,j);
				temp1 = Buffer.getval(0,j);

				Buffer.val[1][j] = temp1;
			}
			if(i<rows && j < cols){
				Buffer.insert_bottom(input_pix,j);
			}
			Win.shift_right();

			if(j < cols ){
				Win.insert(input_pix,0,0);
				Win.insert(temp1,1,0);
				Win.insert(temp2,2,0);
			}
			if(i <=1 || j <=1){
				output_pix = 0;
			}
			else{
				if(Win.getval(1,1) < min_threshold ){
					output_pix = 0;
				}
				else if(Win.getval(1,1) > max_threshold || Win.getval(0,0)> max_threshold ||
						Win.getval(0,1)> max_threshold || Win.getval(0,2)> max_threshold ||
						Win.getval(1,0)> max_threshold || Win.getval(1,2)> max_threshold ||
						Win.getval(2,0)> max_threshold || Win.getval(2,1)> max_threshold || Win.getval(2,2)> max_threshold){
					output_pix = 255;

				}
				else{
					output_pix = 0;
				}
			}
			if(i >0 && j > 0 && i < rows-1 && j < cols-1){
				hysterisis_pix.val[0] = output_pix;
				hysterisis_Image << hysterisis_pix.val[0];
			}
		}
	}
}

void canny(hls::stream<ap_axiu<8,1,1,1> >& input_stream,hls::stream<ap_axiu<8,1,1,1> >&output_stream){


	#pragma HLS INTERFACE axis port=INPUT_STREAM
	#pragma HLS INTERFACE axis port=OUTPUT_STREAM
	#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

	hls::Mat<1024,1024,HLS_8UC1> img_0;
	hls::Mat<1024,1024,HLS_8UC1> img_1;
	hls::Mat<1024,1024,HLS_8UC1> img_2;
	hls::Mat<1024,1024,HLS_8UC1> img_3;
	hls::Mat<1024,1024,HLS_8UC1> grad_x;
	hls::Mat<1024,1024,HLS_8UC1> grad_y;
	hls::Mat<1024,1024,HLS_16UC1> grad_out;
	hls::Mat<1024,1024,HLS_8UC1>supressed_Image;
	hls::Mat<1022,1022,HLS_8UC1>hysterisis_Image;


	#pragma HLS dataflow
	hls::AXIvideo2Mat(input_stream, img_0);

	hls::GaussianBlur<3,3>(img_0,img_1,1.4,1.4);
	hls::Duplicate(img_1,img_2,img_3);

	hls::Sobel<1,0,3>(img_2,grad_x);
	hls::Sobel<0,1,3>(img_3,grad_y);

	grad_computation(grad_x,grad_y,grad_out);

	nonmax_supression(grad_out,supressed_Image);

	hysterisis(supressed_Image,hysterisis_Image);

	hls::Mat2AXIvideo(hysterisis_Image,output_stream);




}
