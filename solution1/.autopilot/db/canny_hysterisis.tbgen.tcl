set moduleName canny_hysterisis
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {canny_hysterisis}
set C_modelType { void 0 }
set C_modelArgList { 
	{ supressed_data_stream_V int 8 regular {fifo 0 volatile }  }
	{ hysterisis_Image_data_stream_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "supressed_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hysterisis_Image_data_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ supressed_data_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ supressed_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ supressed_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ hysterisis_Image_data_stream_V_din sc_out sc_lv 8 signal 1 } 
	{ hysterisis_Image_data_stream_V_full_n sc_in sc_logic 1 signal 1 } 
	{ hysterisis_Image_data_stream_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "supressed_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "supressed_data_stream_V", "role": "dout" }} , 
 	{ "name": "supressed_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "supressed_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "supressed_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "supressed_data_stream_V", "role": "read" }} , 
 	{ "name": "hysterisis_Image_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hysterisis_Image_data_stream_V", "role": "din" }} , 
 	{ "name": "hysterisis_Image_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hysterisis_Image_data_stream_V", "role": "full_n" }} , 
 	{ "name": "hysterisis_Image_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hysterisis_Image_data_stream_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	supressed_data_stream_V { ap_fifo {  { supressed_data_stream_V_dout fifo_data 0 8 }  { supressed_data_stream_V_empty_n fifo_status 0 1 }  { supressed_data_stream_V_read fifo_update 1 1 } } }
	hysterisis_Image_data_stream_V { ap_fifo {  { hysterisis_Image_data_stream_V_din fifo_data 1 8 }  { hysterisis_Image_data_stream_V_full_n fifo_status 0 1 }  { hysterisis_Image_data_stream_V_write fifo_update 1 1 } } }
}
