set moduleName canny_AXIvideo2Mat_8_1024_1024_0_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {canny_AXIvideo2Mat<8, 1024, 1024, 0>}
set C_modelType { void 0 }
set C_modelArgList { 
	{ AXI_video_strm_V_data_V int 8 regular {axi_s 0 volatile  { input_stream data } }  }
	{ AXI_video_strm_V_keep_V int 1 regular {axi_s 0 volatile  { input_stream keep } }  }
	{ AXI_video_strm_V_strb_V int 1 regular {axi_s 0 volatile  { input_stream strb } }  }
	{ AXI_video_strm_V_user_V int 1 regular {axi_s 0 volatile  { input_stream user } }  }
	{ AXI_video_strm_V_last_V int 1 regular {axi_s 0 volatile  { input_stream last } }  }
	{ AXI_video_strm_V_id_V int 1 regular {axi_s 0 volatile  { input_stream id } }  }
	{ AXI_video_strm_V_dest_V int 1 regular {axi_s 0 volatile  { input_stream dest } }  }
	{ img_rows_V int 12 regular {fifo 0}  }
	{ img_cols_V int 12 regular {fifo 0}  }
	{ img_data_stream_V int 8 regular {fifo 1 volatile }  }
	{ img_rows_V_out int 12 regular {fifo 1}  }
	{ img_cols_V_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_rows_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_rows_V_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_cols_V_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream_TDATA sc_in sc_lv 8 signal 0 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_stream_TKEEP sc_in sc_lv 1 signal 1 } 
	{ input_stream_TSTRB sc_in sc_lv 1 signal 2 } 
	{ input_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ input_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_stream_TID sc_in sc_lv 1 signal 5 } 
	{ input_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ img_rows_V_dout sc_in sc_lv 12 signal 7 } 
	{ img_rows_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_rows_V_read sc_out sc_logic 1 signal 7 } 
	{ img_cols_V_dout sc_in sc_lv 12 signal 8 } 
	{ img_cols_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ img_cols_V_read sc_out sc_logic 1 signal 8 } 
	{ img_data_stream_V_din sc_out sc_lv 8 signal 9 } 
	{ img_data_stream_V_full_n sc_in sc_logic 1 signal 9 } 
	{ img_data_stream_V_write sc_out sc_logic 1 signal 9 } 
	{ img_rows_V_out_din sc_out sc_lv 12 signal 10 } 
	{ img_rows_V_out_full_n sc_in sc_logic 1 signal 10 } 
	{ img_rows_V_out_write sc_out sc_logic 1 signal 10 } 
	{ img_cols_V_out_din sc_out sc_lv 12 signal 11 } 
	{ img_cols_V_out_full_n sc_in sc_logic 1 signal 11 } 
	{ img_cols_V_out_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "input_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "input_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "input_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "default" }} , 
 	{ "name": "input_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "default" }} , 
 	{ "name": "input_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "img_rows_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_rows_V", "role": "dout" }} , 
 	{ "name": "img_rows_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_V", "role": "empty_n" }} , 
 	{ "name": "img_rows_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_V", "role": "read" }} , 
 	{ "name": "img_cols_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols_V", "role": "dout" }} , 
 	{ "name": "img_cols_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_V", "role": "empty_n" }} , 
 	{ "name": "img_cols_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_V", "role": "read" }} , 
 	{ "name": "img_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "din" }} , 
 	{ "name": "img_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "full_n" }} , 
 	{ "name": "img_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_V", "role": "write" }} , 
 	{ "name": "img_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_rows_V_out", "role": "din" }} , 
 	{ "name": "img_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_V_out", "role": "full_n" }} , 
 	{ "name": "img_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows_V_out", "role": "write" }} , 
 	{ "name": "img_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_cols_V_out", "role": "din" }} , 
 	{ "name": "img_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_V_out", "role": "full_n" }} , 
 	{ "name": "img_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols_V_out", "role": "write" }}  ]}
set Spec2ImplPortList { 
	AXI_video_strm_V_data_V { axis {  { input_stream_TDATA in_data 0 8 }  { input_stream_TVALID in_vld 0 1 } } }
	AXI_video_strm_V_keep_V { axis {  { input_stream_TKEEP in_data 0 1 } } }
	AXI_video_strm_V_strb_V { axis {  { input_stream_TSTRB in_data 0 1 } } }
	AXI_video_strm_V_user_V { axis {  { input_stream_TUSER in_data 0 1 } } }
	AXI_video_strm_V_last_V { axis {  { input_stream_TLAST in_data 0 1 } } }
	AXI_video_strm_V_id_V { axis {  { input_stream_TID in_data 0 1 } } }
	AXI_video_strm_V_dest_V { axis {  { input_stream_TREADY in_acc 1 1 }  { input_stream_TDEST in_data 0 1 } } }
	img_rows_V { ap_fifo {  { img_rows_V_dout fifo_data 0 12 }  { img_rows_V_empty_n fifo_status 0 1 }  { img_rows_V_read fifo_update 1 1 } } }
	img_cols_V { ap_fifo {  { img_cols_V_dout fifo_data 0 12 }  { img_cols_V_empty_n fifo_status 0 1 }  { img_cols_V_read fifo_update 1 1 } } }
	img_data_stream_V { ap_fifo {  { img_data_stream_V_din fifo_data 1 8 }  { img_data_stream_V_full_n fifo_status 0 1 }  { img_data_stream_V_write fifo_update 1 1 } } }
	img_rows_V_out { ap_fifo {  { img_rows_V_out_din fifo_data 1 12 }  { img_rows_V_out_full_n fifo_status 0 1 }  { img_rows_V_out_write fifo_update 1 1 } } }
	img_cols_V_out { ap_fifo {  { img_cols_V_out_din fifo_data 1 12 }  { img_cols_V_out_full_n fifo_status 0 1 }  { img_cols_V_out_write fifo_update 1 1 } } }
}
