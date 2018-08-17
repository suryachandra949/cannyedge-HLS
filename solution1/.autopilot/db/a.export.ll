; ModuleID = 'C:/Users/suryachandraprasad/cannyedge/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@supressed_Image_OC_data_stream = internal unnamed_addr constant [33 x i8] c"supressed_Image.data_stream[0].V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@img_3_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_3.data_stream[0].V\00"
@img_2_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_2.data_stream[0].V\00"
@img_1_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_1.data_stream[0].V\00"
@img_0_OC_rows_OC_V_channel19_s = internal unnamed_addr constant [23 x i8] c"img_0.rows.V_channel19\00"
@img_0_OC_rows_OC_V_channel_str = internal unnamed_addr constant [21 x i8] c"img_0.rows.V_channel\00"
@img_0_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [23 x i8] c"img_0.data_stream[0].V\00"
@img_0_OC_cols_OC_V_channel20_s = internal unnamed_addr constant [23 x i8] c"img_0.cols.V_channel20\00"
@img_0_OC_cols_OC_V_channel_str = internal unnamed_addr constant [21 x i8] c"img_0.cols.V_channel\00"
@hysterisis_Image_OC_data_strea = internal unnamed_addr constant [34 x i8] c"hysterisis_Image.data_stream[0].V\00"
@hls_KD_KD_LineBuffer_MD_6_MC_s = internal unnamed_addr constant [64 x i8] c"hls::LineBuffer<6, 1024, unsigned char, 0>::LineBuffer.1.region\00"
@hls_KD_KD_LineBuffer_MD_2_MC_1 = internal unnamed_addr constant [64 x i8] c"hls::LineBuffer<2, 1024, unsigned char, 0>::LineBuffer.1.region\00"
@hls_KD_KD_LineBuffer_MD_2_MC_s = internal unnamed_addr constant [65 x i8] c"hls::LineBuffer<2, 1024, unsigned short, 0>::LineBuffer.1.region\00"
@grad_y_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [24 x i8] c"grad_y.data_stream[0].V\00"
@grad_x_OC_data_stream_LF_0_NF_s = internal unnamed_addr constant [24 x i8] c"grad_x.data_stream[0].V\00"
@grad_out_OC_data_stream_LF_0_N = internal unnamed_addr constant [26 x i8] c"grad_out.data_stream[0].V\00"
@canny_str = internal unnamed_addr constant [6 x i8] c"canny\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str1866 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@p_str1864 = private unnamed_addr constant [13 x i8] c"hls_label_22\00", align 1
@p_str1862 = private unnamed_addr constant [13 x i8] c"hls_label_24\00", align 1
@p_str1858 = private unnamed_addr constant [13 x i8] c"hls_label_28\00", align 1
@p_str1853 = private unnamed_addr constant [13 x i8] c"hls_label_32\00", align 1
@p_str1850 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@p_str1849 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1836 = private unnamed_addr constant [12 x i8] c"channelloop\00", align 1
@p_str1822 = private unnamed_addr constant [13 x i8] c"hls_label_34\00", align 1
@p_str1819 = private unnamed_addr constant [14 x i8] c"loop_channels\00", align 1
@p_str1818 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1817 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1811 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1810 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1809 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1808 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str1807 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc void @canny_nonmax_supression(i16* %grad_out_data_stream_V, i8* %supressed_data_stream_V) {
  %temp1_s = alloca i16
  %temp2_s = alloca i16
  %pixel_value_s = alloca i16
  %Win_val_0_1 = alloca i16
  %Win_val_0_1_1 = alloca i16
  %Win_val_1_1 = alloca i16
  %Win_val_1_1_1 = alloca i16
  %Win_val_2_1 = alloca i16
  %Win_val_2_1_1 = alloca i16
  call void (...)* @_ssdm_op_SpecInterface(i8* %supressed_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i16* %grad_out_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %Buffer_val_0 = alloca [1024 x i16], align 2
  %Buffer_val_1 = alloca [1024 x i16], align 2
  %rbegin_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([65 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_s) nounwind
  %rend_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([65 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_s, i32 %rbegin_i) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %p_s = phi i11 [ 0, %0 ], [ %i_V, %.preheader ]
  %exitcond1 = icmp eq i11 %p_s, -1023
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1025, i64 1025, i64 1025)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond1, label %4, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_s, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  %tmp_2 = icmp eq i11 %p_s, 0
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge308, %.preheader.preheader
  %p_1 = phi i11 [ 0, %.preheader.preheader ], [ %j_V, %._crit_edge308 ]
  %exitcond = icmp eq i11 %p_1, -1023
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1025, i64 1025, i64 1025)
  %j_V = add i11 %p_1, 1
  br i1 %exitcond, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1807)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_4 = or i11 %p_1, %p_s
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %tmp_4, i32 10)
  br i1 %tmp_3, label %._crit_edge, label %2

; <label>:2                                       ; preds = %1
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1862)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_34 = call i16 @_ssdm_op_Read.ap_fifo.volatile.i16P(i16* %grad_out_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1862, i32 %tmp_6)
  store i16 %tmp_34, i16* %pixel_value_s
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %2
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_1, i32 10)
  br i1 %tmp_7, label %._crit_edge304, label %getval.exit315

getval.exit315:                                   ; preds = %._crit_edge
  %tmp_8 = zext i11 %p_1 to i64
  %Buffer_val_1_addr = getelementptr [1024 x i16]* %Buffer_val_1, i64 0, i64 %tmp_8
  %temp2 = load i16* %Buffer_val_1_addr, align 2
  %Buffer_val_0_addr = getelementptr [1024 x i16]* %Buffer_val_0, i64 0, i64 %tmp_8
  %temp1 = load i16* %Buffer_val_0_addr, align 2
  store i16 %temp1, i16* %Buffer_val_1_addr, align 2
  store i16 %temp2, i16* %temp2_s
  store i16 %temp1, i16* %temp1_s
  br label %._crit_edge304

._crit_edge304:                                   ; preds = %._crit_edge, %getval.exit315
  br i1 %tmp_3, label %._crit_edge305_ifconv, label %insert_bottom.exit

insert_bottom.exit:                               ; preds = %._crit_edge304
  %pixel_value_load_1 = load i16* %pixel_value_s
  %tmp_9 = zext i11 %p_1 to i64
  %Buffer_val_0_addr_1 = getelementptr [1024 x i16]* %Buffer_val_0, i64 0, i64 %tmp_9
  store i16 %pixel_value_load_1, i16* %Buffer_val_0_addr_1, align 2
  br label %._crit_edge305_ifconv

._crit_edge305_ifconv:                            ; preds = %._crit_edge304, %insert_bottom.exit
  %temp1_load = load i16* %temp1_s
  %temp2_load = load i16* %temp2_s
  %pixel_value_load = load i16* %pixel_value_s
  %Win_val_0_1_load = load i16* %Win_val_0_1
  %Win_val_0_1_1_load = load i16* %Win_val_0_1_1
  %Win_val_1_1_load = load i16* %Win_val_1_1
  %Win_val_1_1_1_load = load i16* %Win_val_1_1_1
  %Win_val_2_1_load = load i16* %Win_val_2_1
  %Win_val_2_1_1_load = load i16* %Win_val_2_1_1
  %Win_val_2_0_0_Win_val_2_0_1 = select i1 %tmp_7, i16 %Win_val_2_1_load, i16 %temp2_load
  %Win_val_1_0_0_Win_val_1_0_1 = select i1 %tmp_7, i16 %Win_val_1_1_load, i16 %temp1_load
  %Win_val_0_0_0_Win_val_0_0_1 = select i1 %tmp_7, i16 %Win_val_0_1_load, i16 %pixel_value_load
  %current_dir = trunc i16 %Win_val_1_1_load to i2
  %tmp_12 = trunc i16 %Win_val_1_1_load to i6
  %out_pixel_val_2 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_12, i2 0)
  %tmp_20 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_1, i32 1, i32 10)
  %icmp1 = icmp eq i10 %tmp_20, 0
  %tmp9 = or i1 %icmp, %icmp1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %tmp_4, i32 10)
  %or_cond2 = or i1 %tmp_21, %tmp9
  %tmp_s = icmp eq i2 %current_dir, 0
  %tmp_5 = icmp eq i2 %current_dir, 1
  %tmp_10 = icmp eq i2 %current_dir, -2
  %sel_tmp1 = xor i1 %tmp_s, true
  %sel_tmp2 = and i1 %tmp_5, %sel_tmp1
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_0_1_1_load, i32 2, i32 9)
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_1_1_1_load, i32 2, i32 9)
  %tmp_24 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_2_1_load, i32 2, i32 9)
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_0_0_0_Win_val_0_0_1, i32 2, i32 9)
  %tmp_26 = select i1 %tmp_10, i8 %tmp_24, i8 %tmp_25
  %tmp_27 = select i1 %tmp_s, i8 %tmp_22, i8 %tmp_26
  %gb = select i1 %sel_tmp2, i8 %tmp_11, i8 %tmp_27
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_2_0_0_Win_val_2_0_1, i32 2, i32 9)
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_1_0_0_Win_val_1_0_1, i32 2, i32 9)
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_0_1_load, i32 2, i32 9)
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %Win_val_2_1_1_load, i32 2, i32 9)
  %tmp_31 = select i1 %tmp_10, i8 %tmp_29, i8 %tmp_30
  %tmp_32 = select i1 %tmp_s, i8 %tmp_28, i8 %tmp_31
  %ga = select i1 %sel_tmp2, i8 %tmp_13, i8 %tmp_32
  %tmp_14 = icmp ugt i8 %out_pixel_val_2, %ga
  %tmp_15 = icmp ugt i8 %out_pixel_val_2, %gb
  %or_cond3 = and i1 %tmp_14, %tmp_15
  %out_pixel_val = select i1 %or_cond3, i8 %out_pixel_val_2, i8 0
  %tmp_33 = select i1 %or_cond2, i8 0, i8 %out_pixel_val
  %tmp_16 = icmp eq i11 %p_1, 0
  %or_cond4 = or i1 %tmp_2, %tmp_16
  br i1 %or_cond4, label %._crit_edge308, label %3

; <label>:3                                       ; preds = %._crit_edge305_ifconv
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1858)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %supressed_data_stream_V, i8 %tmp_33)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1858, i32 %tmp_17)
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %3, %._crit_edge305_ifconv
  %Win_val_0_1_load_1 = load i16* %Win_val_0_1
  %Win_val_1_1_load_1 = load i16* %Win_val_1_1
  %Win_val_2_1_load_1 = load i16* %Win_val_2_1
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1807, i32 %tmp_1)
  store i16 %Win_val_2_1_load_1, i16* %Win_val_2_1_1
  store i16 %Win_val_2_0_0_Win_val_2_0_1, i16* %Win_val_2_1
  store i16 %Win_val_1_1_load_1, i16* %Win_val_1_1_1
  store i16 %Win_val_1_0_0_Win_val_1_0_1, i16* %Win_val_1_1
  store i16 %Win_val_0_1_load_1, i16* %Win_val_0_1_1
  store i16 %Win_val_0_0_0_Win_val_0_0_1, i16* %Win_val_0_1
  br label %.preheader

; <label>:4                                       ; preds = %.loopexit
  ret void
}

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @canny_hysterisis(i8* %supressed_data_stream_V, i8* %hysterisis_Image_data_stream_V) {
  %Win_val_0_1 = alloca i8
  %Win_val_0_1_2 = alloca i8
  %Win_val_1_1 = alloca i8
  %Win_val_1_1_2 = alloca i8
  %Win_val_2_1 = alloca i8
  %Win_val_2_1_2 = alloca i8
  call void (...)* @_ssdm_op_SpecInterface(i8* %hysterisis_Image_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %supressed_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %Buffer_val_0 = alloca [1024 x i8], align 1
  %Buffer_val_1 = alloca [1024 x i8], align 1
  %rbegin_i2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([64 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_1) nounwind
  %rend_i263 = call i32 (...)* @_ssdm_op_SpecRegionEnd([64 x i8]* @hls_KD_KD_LineBuffer_MD_2_MC_1, i32 %rbegin_i2) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %p_s = phi i11 [ 0, %0 ], [ %i_V, %.preheader ]
  %exitcond2 = icmp eq i11 %p_s, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond2, label %2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_s, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  %notlhs = icmp ne i11 %p_s, 0
  %tmp_s = icmp ult i11 %p_s, 1023
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge261, %.preheader.preheader
  %p_2 = phi i11 [ 0, %.preheader.preheader ], [ %j_V, %._crit_edge261 ]
  %exitcond = icmp eq i11 %p_2, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %j_V = add i11 %p_2, 1
  br i1 %exitcond, label %.loopexit, label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %.preheader
  %Win_val_0_1_load = load i8* %Win_val_0_1
  %Win_val_0_1_2_load = load i8* %Win_val_0_1_2
  %Win_val_1_1_load = load i8* %Win_val_1_1
  %Win_val_1_1_2_load = load i8* %Win_val_1_1_2
  %Win_val_2_1_load = load i8* %Win_val_2_1
  %Win_val_2_1_2_load = load i8* %Win_val_2_1_2
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1866)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_39 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %supressed_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1866, i32 %tmp_19)
  %tmp_20 = zext i11 %p_2 to i64
  %Buffer_val_1_addr = getelementptr [1024 x i8]* %Buffer_val_1, i64 0, i64 %tmp_20
  %temp2 = load i8* %Buffer_val_1_addr, align 1
  %Buffer_val_0_addr = getelementptr [1024 x i8]* %Buffer_val_0, i64 0, i64 %tmp_20
  %temp1 = load i8* %Buffer_val_0_addr, align 1
  store i8 %temp1, i8* %Buffer_val_1_addr, align 1
  store i8 %tmp_39, i8* %Buffer_val_0_addr, align 1
  %tmp_37 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_2, i32 1, i32 10)
  %icmp2 = icmp eq i10 %tmp_37, 0
  %tmp_21 = icmp ult i8 %Win_val_1_1_load, -96
  %tmp1 = or i1 %icmp2, %tmp_21
  %or_cond8 = or i1 %tmp1, %icmp
  %tmp_22 = icmp ugt i8 %Win_val_1_1_load, -36
  %tmp_23 = icmp ugt i8 %tmp_39, -36
  %tmp_24 = icmp ugt i8 %Win_val_0_1_load, -36
  %tmp_25 = icmp ugt i8 %Win_val_0_1_2_load, -36
  %tmp_26 = icmp ugt i8 %temp1, -36
  %tmp_27 = icmp ugt i8 %Win_val_1_1_2_load, -36
  %tmp_28 = icmp ugt i8 %temp2, -36
  %tmp_29 = icmp ugt i8 %Win_val_2_1_load, -36
  %tmp_30 = icmp ugt i8 %Win_val_2_1_2_load, -36
  %tmp3 = or i1 %tmp_22, %tmp_23
  %tmp4 = or i1 %tmp_24, %tmp_25
  %tmp2 = or i1 %tmp4, %tmp3
  %tmp6 = or i1 %tmp_26, %tmp_27
  %tmp8 = or i1 %tmp_29, %tmp_30
  %tmp7 = or i1 %tmp8, %tmp_28
  %tmp5 = or i1 %tmp7, %tmp6
  %or_cond = or i1 %tmp5, %tmp2
  %not_or_cond8 = xor i1 %or_cond8, true
  %tmp_31 = and i1 %or_cond, %not_or_cond8
  %tmp_38 = select i1 %tmp_31, i8 -1, i8 0
  %notrhs = icmp ne i11 %p_2, 0
  %tmp_32 = icmp ult i11 %p_2, 1023
  %tmp9 = and i1 %notrhs, %notlhs
  %tmp10 = and i1 %tmp_s, %tmp_32
  %or_cond6 = and i1 %tmp10, %tmp9
  br i1 %or_cond6, label %1, label %._crit_edge261

; <label>:1                                       ; preds = %._crit_edge_ifconv
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1853)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %hysterisis_Image_data_stream_V, i8 %tmp_38)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1853, i32 %tmp_33)
  br label %._crit_edge261

._crit_edge261:                                   ; preds = %1, %._crit_edge_ifconv
  %Win_val_0_1_load_2 = load i8* %Win_val_0_1
  %Win_val_1_1_load_2 = load i8* %Win_val_1_1
  %Win_val_2_1_load_2 = load i8* %Win_val_2_1
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1808, i32 %tmp_18)
  store i8 %Win_val_2_1_load_2, i8* %Win_val_2_1_2
  store i8 %temp2, i8* %Win_val_2_1
  store i8 %Win_val_1_1_load_2, i8* %Win_val_1_1_2
  store i8 %temp1, i8* %Win_val_1_1
  store i8 %Win_val_0_1_load_2, i8* %Win_val_0_1_2
  store i8 %tmp_39, i8* %Win_val_0_1
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define internal fastcc void @canny_grad_computation(i8* %grad_x_data_stream_V, i8* %grad_y_data_stream_V, i16* %grad_out_data_stream_V) {
  call void (...)* @_ssdm_op_SpecInterface(i16* %grad_out_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %grad_y_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %grad_x_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %p_s = phi i11 [ 0, %0 ], [ %i_V, %.preheader ]
  %exitcond4 = icmp eq i11 %p_s, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond4, label %1, label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ifconv
  %p_8 = phi i11 [ %j_V, %_ifconv ], [ 0, %.loopexit ]
  %exitcond = icmp eq i11 %p_8, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %j_V = add i11 %p_8, 1
  br i1 %exitcond, label %.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1805)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1866)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_44 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %grad_x_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1866, i32 %tmp_34)
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1866)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_45 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %grad_y_data_stream_V)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1866, i32 %tmp_35)
  %neg_i = sub i8 0, %tmp_44
  %abscond_i = icmp ne i8 %tmp_44, 0
  %abs_gx = select i1 %abscond_i, i8 %tmp_44, i8 %neg_i
  %neg_i1 = sub i8 0, %tmp_45
  %abscond_i1 = icmp ne i8 %tmp_45, 0
  %abs_gy = select i1 %abscond_i1, i8 %tmp_45, i8 %neg_i1
  %tmp_131_cast = zext i8 %tmp_44 to i9
  %tmp_132_cast = zext i8 %tmp_45 to i9
  %element_grad = add i9 %tmp_132_cast, %tmp_131_cast
  %ult = icmp ult i8 %abs_gy, %abs_gx
  %rev9 = xor i1 %ult, true
  %tmp_36 = icmp eq i8 %tmp_44, 0
  %or_cond7 = or i1 %rev9, %tmp_36
  %tmp_37 = icmp ugt i8 %abs_gx, %abs_gy
  %tmp_38 = icmp eq i8 %tmp_45, 0
  %tmp8 = or i1 %tmp_38, %tmp_37
  %or_cond = or i1 %tmp8, %tmp_36
  %tmp_136_cast = zext i8 %abs_gx to i9
  %tmp_137_cast = zext i8 %abs_gy to i9
  %tmp_39 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %abs_gy, i1 false)
  %ult1 = icmp ult i9 %tmp_39, %tmp_136_cast
  %rev = xor i1 %ult1, true
  %dir_g_cast = zext i1 %rev to i2
  %ult2 = icmp ult i8 %abs_gx, %abs_gy
  %rev1 = xor i1 %ult2, true
  %tmp9 = or i1 %rev1, %tmp_38
  %or_cond8 = or i1 %tmp9, %abscond_i
  %tmp_40 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %abs_gx, i1 false)
  %tmp_41 = icmp ugt i9 %tmp_137_cast, %tmp_40
  %dir_g_1 = select i1 %tmp_41, i2 -2, i2 1
  %ult3 = icmp ult i9 %tmp_40, %tmp_137_cast
  %rev2 = xor i1 %ult3, true
  %dir_g_3_cast = select i1 %rev2, i2 -1, i2 0
  %dir_g_2 = select i1 %tmp_41, i2 -2, i2 -1
  %sel_tmp1 = select i1 %or_cond7, i2 %dir_g_2, i2 %dir_g_cast
  %sel_tmp2 = xor i1 %or_cond, true
  %sel_tmp3 = and i1 %or_cond7, %sel_tmp2
  %sel_tmp4 = select i1 %sel_tmp3, i2 %dir_g_1, i2 %sel_tmp1
  %tmp10 = and i1 %or_cond, %or_cond8
  %sel_tmp6 = and i1 %tmp10, %or_cond7
  %dir_g_6 = select i1 %sel_tmp6, i2 %dir_g_3_cast, i2 %sel_tmp4
  %element_final = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %element_grad, i2 %dir_g_6)
  %tmp_43 = zext i11 %element_final to i16
  %tmp_42 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1864)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %grad_out_data_stream_V, i16 %tmp_43)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1864, i32 %tmp_42)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1805, i32 %tmp_s)
  br label %.preheader

; <label>:1                                       ; preds = %.loopexit
  ret void
}

define void @canny(i8* %input_stream_V_data_V, i1* %input_stream_V_keep_V, i1* %input_stream_V_strb_V, i1* %input_stream_V_user_V, i1* %input_stream_V_last_V, i1* %input_stream_V_id_V, i1* %input_stream_V_dest_V, i8* %output_stream_V_data_V, i1* %output_stream_V_keep_V, i1* %output_stream_V_strb_V, i1* %output_stream_V_user_V, i1* %output_stream_V_last_V, i1* %output_stream_V_id_V, i1* %output_stream_V_dest_V) {
codeRepl:
  %img_0_cols_V_channel20 = alloca i12, align 2
  %img_0_rows_V_channel19 = alloca i12, align 2
  %img_0_cols_V_channel = alloca i12, align 2
  %img_0_rows_V_channel = alloca i12, align 2
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_stream_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_keep_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_strb_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_user_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_last_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_id_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_stream_V_dest_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_stream_V_data_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_keep_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_strb_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_user_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_last_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_id_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_stream_V_dest_V), !map !59
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @canny_str) nounwind
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_0_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_1_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %img_2_data_stream_0_V = alloca i8, align 1
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_2_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_2_data_stream_0_V, i8* %img_2_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_2_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %img_3_data_stream_0_V = alloca i8, align 1
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_3_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %img_3_data_stream_0_V, i8* %img_3_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_3_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %grad_x_data_stream_0_V = alloca i8, align 1
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @grad_x_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %grad_x_data_stream_0_V, i8* %grad_x_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %grad_x_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %grad_y_data_stream_0_V = alloca i8, align 1
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @grad_y_OC_data_stream_LF_0_NF_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %grad_y_data_stream_0_V, i8* %grad_y_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %grad_y_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %grad_out_data_stream_0_V = alloca i16, align 2
  %empty_26 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @grad_out_OC_data_stream_LF_0_N, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i16* %grad_out_data_stream_0_V, i16* %grad_out_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i16* %grad_out_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %supressed_Image_data_stream_0 = alloca i8, align 1
  %empty_27 = call i32 (...)* @_ssdm_op_SpecChannel([33 x i8]* @supressed_Image_OC_data_stream, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %supressed_Image_data_stream_0, i8* %supressed_Image_data_stream_0)
  call void (...)* @_ssdm_op_SpecInterface(i8* %supressed_Image_data_stream_0, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %hysterisis_Image_data_stream_0 = alloca i8, align 1
  %empty_28 = call i32 (...)* @_ssdm_op_SpecChannel([34 x i8]* @hysterisis_Image_OC_data_strea, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %hysterisis_Image_data_stream_0, i8* %hysterisis_Image_data_stream_0)
  call void (...)* @_ssdm_op_SpecInterface(i8* %hysterisis_Image_data_stream_0, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_stream_V_data_V, i1* %input_stream_V_keep_V, i1* %input_stream_V_strb_V, i1* %input_stream_V_user_V, i1* %input_stream_V_last_V, i1* %input_stream_V_id_V, i1* %input_stream_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_stream_V_data_V, i1* %output_stream_V_keep_V, i1* %output_stream_V_strb_V, i1* %output_stream_V_user_V, i1* %output_stream_V_last_V, i1* %output_stream_V_id_V, i1* %output_stream_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1806, [10 x i8]* @p_str1810, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1811)
  %empty_29 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @img_0_OC_rows_OC_V_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i12* %img_0_rows_V_channel, i12* %img_0_rows_V_channel)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_rows_V_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @img_0_OC_cols_OC_V_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i12* %img_0_cols_V_channel, i12* %img_0_cols_V_channel)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_cols_V_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @canny_Block__proc(i12* %img_0_rows_V_channel, i12* %img_0_cols_V_channel)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_0_OC_rows_OC_V_channel19_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i12* %img_0_rows_V_channel19, i12* %img_0_rows_V_channel19)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_rows_V_channel19, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @img_0_OC_cols_OC_V_channel20_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i12* %img_0_cols_V_channel20, i12* %img_0_cols_V_channel20)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_cols_V_channel20, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @"canny_AXIvideo2Mat<8, 1024, 1024, 0>"(i8* %input_stream_V_data_V, i1* %input_stream_V_keep_V, i1* %input_stream_V_strb_V, i1* %input_stream_V_user_V, i1* %input_stream_V_last_V, i1* %input_stream_V_id_V, i1* %input_stream_V_dest_V, i12* nocapture %img_0_rows_V_channel, i12* nocapture %img_0_cols_V_channel, i8* %img_0_data_stream_0_V, i12* %img_0_rows_V_channel19, i12* %img_0_cols_V_channel20)
  call fastcc void @canny_GaussianBlur(i12* nocapture %img_0_rows_V_channel19, i12* nocapture %img_0_cols_V_channel20, i8* %img_0_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call fastcc void @"canny_Duplicate<1024, 1024, 0, 0>"(i8* %img_1_data_stream_0_V, i8* %img_2_data_stream_0_V, i8* %img_3_data_stream_0_V)
  call fastcc void @canny_Sobel(i8* %img_2_data_stream_0_V, i8* %grad_x_data_stream_0_V)
  call fastcc void @canny_Sobel.1(i8* %img_3_data_stream_0_V, i8* %grad_y_data_stream_0_V)
  call fastcc void @canny_grad_computation(i8* %grad_x_data_stream_0_V, i8* %grad_y_data_stream_0_V, i16* %grad_out_data_stream_0_V)
  call fastcc void @canny_nonmax_supression(i16* %grad_out_data_stream_0_V, i8* %supressed_Image_data_stream_0)
  call fastcc void @canny_hysterisis(i8* %supressed_Image_data_stream_0, i8* %hysterisis_Image_data_stream_0)
  call fastcc void @"canny_Mat2AXIvideo<8, 1022, 1022, 0>"(i8* %hysterisis_Image_data_stream_0, i8* %output_stream_V_data_V, i1* %output_stream_V_keep_V, i1* %output_stream_V_strb_V, i1* %output_stream_V_user_V, i1* %output_stream_V_last_V, i1* %output_stream_V_id_V, i1* %output_stream_V_dest_V)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8, i1, i1, i1, i1, i1, i1) {
entry:
  store i8 %7, i8* %0
  store i1 %8, i1* %1
  store i1 %9, i1* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i12P(i12*, i12) {
entry:
  %empty = call i12 @_autotb_FifoWrite_i12(i12* %0, i12 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i8, i1, i1, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8*, i1*, i1*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i8* %0
  %empty_33 = load i1* %1
  %empty_34 = load i1* %2
  %empty_35 = load i1* %3
  %empty_36 = load i1* %4
  %empty_37 = load i1* %5
  %empty_38 = load i1* %6
  %mrv_0 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv_0, i1 %empty_33, 1
  %mrv2 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv1, i1 %empty_34, 2
  %mrv3 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv2, i1 %empty_35, 3
  %mrv4 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv3, i1 %empty_36, 4
  %mrv5 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv4, i1 %empty_37, 5
  %mrv6 = insertvalue { i8, i1, i1, i1, i1, i1, i1 } %mrv5, i1 %empty_38, 6
  ret { i8, i1, i1, i1, i1, i1, i1 } %mrv6
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i16 @_ssdm_op_Read.ap_fifo.volatile.i16P(i16*) {
entry:
  %empty = call i16 @_autotb_FifoRead_i16(i16* %0)
  ret i16 %empty
}

define weak i12 @_ssdm_op_Read.ap_fifo.i12P(i12*) {
entry:
  %empty = call i12 @_autotb_FifoRead_i12(i12* %0)
  ret i12 %empty
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i3 @_ssdm_op_Read.ap_auto.i3(i3) {
entry:
  ret i3 %0
}

define weak i2 @_ssdm_op_Read.ap_auto.i2(i2) {
entry:
  ret i2 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_39 = trunc i22 %empty to i8
  ret i8 %empty_39
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_40 = trunc i16 %empty to i8
  ret i8 %empty_40
}

declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_41 = trunc i12 %empty to i4
  ret i4 %empty_41
}

declare i2 @_ssdm_op_PartSelect.i2.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i14.i32.i32(i14, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_42 = trunc i12 %empty to i2
  ret i2 %empty_42
}

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_43 = trunc i12 %empty to i11
  ret i11 %empty_43
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_44 = trunc i11 %empty to i10
  ret i10 %empty_44
}

define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_45 = shl i8 1, %empty
  %empty_46 = and i8 %0, %empty_45
  %empty_47 = icmp ne i8 %empty_46, 0
  ret i1 %empty_47
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_48 = shl i22 1, %empty
  %empty_49 = and i22 %0, %empty_48
  %empty_50 = icmp ne i22 %empty_49, 0
  ret i1 %empty_50
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_51 = shl i13 1, %empty
  %empty_52 = and i13 %0, %empty_51
  %empty_53 = icmp ne i13 %empty_52, 0
  ret i1 %empty_53
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_54 = shl i12 1, %empty
  %empty_55 = and i12 %0, %empty_54
  %empty_56 = icmp ne i12 %empty_55, 0
  ret i1 %empty_56
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_57 = shl i11 1, %empty
  %empty_58 = and i11 %0, %empty_57
  %empty_59 = icmp ne i11 %empty_58, 0
  ret i1 %empty_59
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_60 = zext i1 %1 to i9
  %empty_61 = shl i9 %empty, 1
  %empty_62 = or i9 %empty_61, %empty_60
  ret i9 %empty_62
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_63 = zext i2 %1 to i8
  %empty_64 = shl i8 %empty, 2
  %empty_65 = or i8 %empty_64, %empty_63
  ret i8 %empty_65
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_66 = zext i1 %1 to i13
  %empty_67 = shl i13 %empty, 1
  %empty_68 = or i13 %empty_67, %empty_66
  ret i13 %empty_68
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9, i2) nounwind readnone {
entry:
  %empty = zext i9 %0 to i11
  %empty_69 = zext i2 %1 to i11
  %empty_70 = shl i11 %empty, 2
  %empty_71 = or i11 %empty_70, %empty_69
  ret i11 %empty_71
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

declare i12 @_autotb_FifoWrite_i12(i12*, i12)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i16 @_autotb_FifoRead_i16(i16*)

declare i12 @_autotb_FifoRead_i12(i12*)

declare void @_GLOBAL__I_a() nounwind

define internal fastcc void @canny_Sobel.1(i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @canny_Filter2D(i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V, i2 -2, i2 -1, i3 0, i4 0, i2 1, i3 2)
  ret void
}

define internal fastcc void @canny_Sobel(i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @canny_Filter2D(i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V, i2 0, i2 1, i3 -2, i4 2, i2 -1, i3 0)
  ret void
}

define internal fastcc void @"canny_Mat2AXIvideo<8, 1022, 1022, 0>"(i8* %img_data_stream_V, i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
._crit_edge:
  %tmp_user_V = alloca i1
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  store i1 true, i1* %tmp_user_V
  br label %0

; <label>:0                                       ; preds = %3, %._crit_edge
  %p_s = phi i10 [ 0, %._crit_edge ], [ %i_V, %3 ]
  %exitcond1 = icmp eq i10 %p_s, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1022, i64 1022, i64 1022)
  %i_V = add i10 %p_s, 1
  br i1 %exitcond1, label %4, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1817) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1817)
  br label %2

; <label>:2                                       ; preds = %.critedge, %1
  %p_5 = phi i10 [ 0, %1 ], [ %j_V, %.critedge ]
  %exitcond = icmp eq i10 %p_5, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1022, i64 1022, i64 1022)
  %j_V = add i10 %p_5, 1
  br i1 %exitcond, label %3, label %.critedge

.critedge:                                        ; preds = %2
  %tmp_user_V_load = load i1* %tmp_user_V
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1818) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %axi_last_V = icmp eq i10 %p_5, -3
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1822)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_47 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1822, i32 %tmp_37)
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1819) nounwind
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i8 %tmp_47, i1 true, i1 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_72 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1818, i32 %tmp_s)
  store i1 false, i1* %tmp_user_V
  br label %2

; <label>:3                                       ; preds = %2
  %empty_73 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1817, i32 %tmp)
  br label %0

; <label>:4                                       ; preds = %0
  ret void
}

define internal fastcc void @canny_GaussianBlur(i12* nocapture %p_src_rows_V, i12* nocapture %p_src_cols_V, i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i12* %p_src_rows_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i12* %p_src_cols_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_src_rows_V_read = call i12 @_ssdm_op_Read.ap_fifo.i12P(i12* %p_src_rows_V)
  %p_src_cols_V_read = call i12 @_ssdm_op_Read.ap_fifo.i12P(i12* %p_src_cols_V)
  call fastcc void @canny_Filter2D.1(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V)
  ret void
}

define internal fastcc void @canny_Filter2D.1(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
arrayctor.loop1.i.preheader:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_src_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  %k_buf_0_val_3 = alloca [1024 x i8], align 1
  %k_buf_0_val_4 = alloca [1024 x i8], align 1
  %k_buf_0_val_5 = alloca [1024 x i8], align 1
  %rows_cast = zext i12 %p_src_rows_V_read_1 to i13
  %cols_cast = zext i12 %p_src_cols_V_read_1 to i13
  br label %arrayctor.loop1.i

arrayctor.loop1.i:                                ; preds = %arrayctor.loop1.i, %arrayctor.loop1.i.preheader
  %tmp_s = phi i1 [ %tmp_43, %arrayctor.loop1.i ], [ false, %arrayctor.loop1.i.preheader ]
  %tmp_43 = xor i1 %tmp_s, true
  %rbegin_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s) nounwind
  %rend_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s, i32 %rbegin_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %tmp_s, label %arrayctor.loop1.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %arrayctor.loop1.i
  %src_kernel_win_0_val_0_1 = alloca i8
  %src_kernel_win_0_val_0_1_1 = alloca i8
  %src_kernel_win_0_val_1_1 = alloca i8
  %src_kernel_win_0_val_1_1_1 = alloca i8
  %src_kernel_win_0_val_2_1 = alloca i8
  %src_kernel_win_0_val_2_1_1 = alloca i8
  %right_border_buf_0_val_0_1 = alloca i8
  %right_border_buf_0_val_0_1_1 = alloca i8
  %right_border_buf_0_val_2_1 = alloca i8
  %right_border_buf_0_val_1_1 = alloca i8
  %right_border_buf_0_val_1_1_1 = alloca i8
  %right_border_buf_0_val_2_1_1 = alloca i8
  %heightloop = add i13 2, %rows_cast
  %widthloop = add i13 2, %cols_cast
  %tmp = trunc i12 %p_src_rows_V_read_1 to i2
  %p_neg391_i_cast = add i2 -1, %tmp
  %tmp_48 = trunc i12 %p_src_cols_V_read_1 to i2
  %not_tmp_s = icmp ne i12 %p_src_rows_V_read_1, 1
  %p_anchor_4_1_cast = zext i1 %not_tmp_s to i13
  %tmp_44 = icmp eq i12 %p_src_rows_V_read_1, 1
  %tmp_45 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %p_src_rows_V_read_1, i1 false)
  %tmp_394_cast = zext i13 %tmp_45 to i14
  %tmp_46 = add i14 2, %tmp_394_cast
  %tmp_47 = icmp eq i12 %p_src_cols_V_read_1, 1
  %tmp_49 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %p_src_cols_V_read_1, i1 false)
  %tmp_108_cast = zext i13 %tmp_49 to i14
  %tmp_50 = add i14 -2, %tmp_108_cast
  %tmp_51 = add i2 -1, %tmp_48
  br label %0

; <label>:0                                       ; preds = %5, %._crit_edge.i
  %p_014_0_i = phi i12 [ 0, %._crit_edge.i ], [ %i_V, %5 ]
  %tmp_94_cast = zext i12 %p_014_0_i to i13
  %tmp_52 = icmp ult i13 %tmp_94_cast, %heightloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 1027, i64 0)
  %i_V = add i12 %p_014_0_i, 1
  br i1 %tmp_52, label %1, label %"filter<0, 0, ap_fixed<16, 2, 0, 3, 0>, int, 1024, 1024, 3, 3>.exit"

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1817) nounwind
  %tmp_53 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1817)
  %tmp_54 = icmp ult i12 %p_014_0_i, %p_src_rows_V_read_1
  %ult = icmp ult i12 %p_014_0_i, %p_src_rows_V_read_1
  %rev = xor i1 %ult, true
  %tmp_55 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %p_014_0_i, i32 1, i32 11)
  %icmp = icmp ne i11 %tmp_55, 0
  %tmp_56 = icmp eq i13 %p_anchor_4_1_cast, %tmp_94_cast
  %tmp_356_1 = icmp eq i12 %p_014_0_i, 0
  %tmp_356_2 = icmp eq i12 %p_014_0_i, 1
  %tmp_57 = icmp ugt i12 %p_014_0_i, %p_src_rows_V_read_1
  %tmp_58 = add i13 -1, %tmp_94_cast
  %tmp_59 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %tmp_58, i32 12)
  %rev3 = xor i1 %tmp_59, true
  %tmp_60 = icmp slt i13 %tmp_58, %rows_cast
  %or_cond_i422_i = and i1 %tmp_60, %rev3
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %tmp_58, i32 12)
  %p_assign_s = sub i13 1, %tmp_94_cast
  %p_p2_i423_i = select i1 %tmp_61, i13 %p_assign_s, i13 %tmp_58
  %tmp_62 = icmp slt i13 %p_p2_i423_i, %rows_cast
  %tmp_63 = trunc i14 %tmp_46 to i2
  %tmp_64 = trunc i13 %p_p2_i423_i to i2
  %p_assign_14_1 = add i13 -2, %tmp_94_cast
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %p_assign_14_1, i32 12)
  %rev4 = xor i1 %tmp_65, true
  %tmp_382_1 = icmp slt i13 %p_assign_14_1, %rows_cast
  %or_cond_i422_i_1 = and i1 %tmp_382_1, %rev4
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %p_assign_14_1, i32 12)
  %p_assign_15_1 = sub i13 2, %tmp_94_cast
  %p_p2_i423_i_1 = select i1 %tmp_66, i13 %p_assign_15_1, i13 %p_assign_14_1
  %tmp_392_1 = icmp slt i13 %p_p2_i423_i_1, %rows_cast
  %tmp_67 = trunc i14 %tmp_46 to i2
  %tmp_68 = trunc i13 %p_p2_i423_i_1 to i2
  %p_assign_14_2 = add i13 -3, %tmp_94_cast
  %tmp_69 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %p_assign_14_2, i32 12)
  %rev5 = xor i1 %tmp_69, true
  %tmp_382_2 = icmp slt i13 %p_assign_14_2, %rows_cast
  %or_cond_i422_i_2 = and i1 %tmp_382_2, %rev5
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %p_assign_14_2, i32 12)
  %p_assign_15_2 = sub i13 3, %tmp_94_cast
  %p_p2_i423_i_2 = select i1 %tmp_70, i13 %p_assign_15_2, i13 %p_assign_14_2
  %tmp_392_2 = icmp slt i13 %p_p2_i423_i_2, %rows_cast
  %tmp_71 = trunc i14 %tmp_46 to i2
  %tmp_72 = trunc i13 %p_p2_i423_i_2 to i2
  %brmerge2 = or i1 %or_cond_i422_i, %tmp_44
  %tmp_73 = trunc i13 %tmp_58 to i2
  %tmp_74 = select i1 %or_cond_i422_i, i2 %tmp_73, i2 0
  %tmp_75 = trunc i13 %p_p2_i423_i to i2
  %tmp_76 = sub i2 %tmp_63, %tmp_64
  %tmp_77 = select i1 %tmp_62, i2 %tmp_75, i2 %tmp_76
  %tmp_78 = select i1 %brmerge2, i2 %tmp_74, i2 %tmp_77
  %row_assign_s = sub i2 %p_neg391_i_cast, %tmp_78
  %brmerge3 = or i1 %or_cond_i422_i_1, %tmp_44
  %tmp_79 = trunc i13 %p_assign_14_1 to i2
  %tmp_82 = select i1 %or_cond_i422_i_1, i2 %tmp_79, i2 0
  %tmp_83 = trunc i13 %p_p2_i423_i_1 to i2
  %tmp_85 = sub i2 %tmp_67, %tmp_68
  %tmp_87 = select i1 %tmp_392_1, i2 %tmp_83, i2 %tmp_85
  %tmp_88 = select i1 %brmerge3, i2 %tmp_82, i2 %tmp_87
  %row_assign_13_1_t = sub i2 %p_neg391_i_cast, %tmp_88
  %brmerge4 = or i1 %or_cond_i422_i_2, %tmp_44
  %tmp_93 = trunc i13 %p_assign_14_2 to i2
  %tmp_94 = select i1 %or_cond_i422_i_2, i2 %tmp_93, i2 0
  %tmp_95 = trunc i13 %p_p2_i423_i_2 to i2
  %tmp_96 = sub i2 %tmp_71, %tmp_72
  %tmp_98 = select i1 %tmp_392_2, i2 %tmp_95, i2 %tmp_96
  %tmp_99 = select i1 %brmerge4, i2 %tmp_94, i2 %tmp_98
  %row_assign_13_2_t = sub i2 %p_neg391_i_cast, %tmp_99
  br label %2

; <label>:2                                       ; preds = %._crit_edge411.i, %1
  %p_027_0_i = phi i12 [ 0, %1 ], [ %j_V, %._crit_edge411.i ]
  %right_border_buf_0_val_2_1_2 = load i8* %right_border_buf_0_val_2_1_1
  %tmp_98_cast = zext i12 %p_027_0_i to i13
  %tmp_80 = icmp ult i13 %tmp_98_cast, %widthloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 1026, i64 0)
  %j_V = add i12 %p_027_0_i, 1
  br i1 %tmp_80, label %.critedge.i_ifconv, label %5

.critedge.i_ifconv:                               ; preds = %2
  %right_border_buf_0_val_0_1_s = load i8* %right_border_buf_0_val_0_1
  %right_border_buf_0_val_0_1_1_74 = load i8* %right_border_buf_0_val_0_1_1
  %right_border_buf_0_val_2_1_s = load i8* %right_border_buf_0_val_2_1
  %right_border_buf_0_val_1_1_s = load i8* %right_border_buf_0_val_1_1
  %right_border_buf_0_val_1_1_1_75 = load i8* %right_border_buf_0_val_1_1_1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1818) nounwind
  %tmp_81 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_100 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %p_027_0_i, i32 1, i32 11)
  %icmp3 = icmp ne i11 %tmp_100, 0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1836) nounwind
  %ImagLoc_x = add i13 -1, %tmp_98_cast
  %tmp_101 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_x, i32 12)
  %rev6 = xor i1 %tmp_101, true
  %tmp_84 = icmp slt i13 %ImagLoc_x, %cols_cast
  %or_cond_i_i = and i1 %tmp_84, %rev6
  %brmerge1 = or i1 %or_cond_i_i, %tmp_47
  %ImagLoc_x_cast_mux = select i1 %or_cond_i_i, i13 %ImagLoc_x, i13 0
  %ImagLoc_x_cast_mux_cast = zext i13 %ImagLoc_x_cast_mux to i14
  %tmp_103 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %ImagLoc_x, i32 12)
  %p_assign_3 = sub i13 1, %tmp_98_cast
  %p_p2_i_i = select i1 %tmp_103, i13 %p_assign_3, i13 %ImagLoc_x
  %p_p2_i_i_cast = sext i13 %p_p2_i_i to i14
  %tmp_86 = icmp slt i13 %p_p2_i_i, %cols_cast
  %p_assign_4 = sub i14 %tmp_50, %p_p2_i_i_cast
  %sel_tmp = select i1 %brmerge1, i14 %ImagLoc_x_cast_mux_cast, i14 %p_assign_4
  %sel_tmp9 = xor i1 %brmerge1, true
  %sel_tmp1 = and i1 %tmp_86, %sel_tmp9
  %x = select i1 %sel_tmp1, i14 %p_p2_i_i_cast, i14 %sel_tmp
  %col_assign_cast = sext i14 %x to i32
  %tmp_104 = trunc i14 %x to i2
  %brmerge = or i1 %rev, %tmp_84
  %tmp_89 = zext i32 %col_assign_cast to i64
  %k_buf_0_val_3_addr = getelementptr [1024 x i8]* %k_buf_0_val_3, i64 0, i64 %tmp_89
  %k_buf_0_val_3_load = load i8* %k_buf_0_val_3_addr, align 1
  %col_assign_6_t = sub i2 %tmp_51, %tmp_104
  %tmp_90 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_0_1_s, i8 %right_border_buf_0_val_0_1_1_74, i8 undef, i2 %col_assign_6_t)
  %col_buf_0_val_0_0 = select i1 %brmerge, i8 %k_buf_0_val_3_load, i8 %tmp_90
  %k_buf_0_val_4_addr = getelementptr [1024 x i8]* %k_buf_0_val_4, i64 0, i64 %tmp_89
  %k_buf_0_val_4_load = load i8* %k_buf_0_val_4_addr, align 1
  %tmp_91 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_1_1_s, i8 %right_border_buf_0_val_1_1_1_75, i8 undef, i2 %col_assign_6_t)
  %col_buf_0_val_1_0 = select i1 %brmerge, i8 %k_buf_0_val_4_load, i8 %tmp_91
  %k_buf_0_val_5_addr = getelementptr [1024 x i8]* %k_buf_0_val_5, i64 0, i64 %tmp_89
  %k_buf_0_val_5_load = load i8* %k_buf_0_val_5_addr, align 1
  %tmp_92 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_2_1_2, i8 %right_border_buf_0_val_2_1_s, i8 undef, i2 %col_assign_6_t)
  %col_buf_0_val_2_0 = select i1 %brmerge, i8 %k_buf_0_val_5_load, i8 %tmp_92
  br i1 %or_cond_i_i, label %3, label %._crit_edge404.i_ifconv

; <label>:3                                       ; preds = %.critedge.i_ifconv
  br i1 %icmp, label %4, label %borderInterpolate.exit421.i.0

borderInterpolate.exit421.i.0:                    ; preds = %3
  %tmp_112 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  br i1 %tmp_56, label %"operator().exit464.i.0", label %._crit_edge406.i.0

; <label>:4                                       ; preds = %3
  br i1 %tmp_54, label %.preheader388.i.preheader.0, label %._crit_edge404.i_ifconv

.preheader388.i.preheader.0:                      ; preds = %4
  %right_border_buf_0_val_0_1_2 = load i8* %right_border_buf_0_val_0_1
  %right_border_buf_0_val_1_1_2 = load i8* %right_border_buf_0_val_1_1
  store i8 %k_buf_0_val_4_load, i8* %k_buf_0_val_5_addr, align 1
  store i8 %k_buf_0_val_3_load, i8* %k_buf_0_val_4_addr, align 1
  %tmp_107 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  store i8 %tmp_107, i8* %k_buf_0_val_3_addr, align 1
  store i8 %col_buf_0_val_2_0, i8* %right_border_buf_0_val_2_1_1
  store i8 %right_border_buf_0_val_1_1_2, i8* %right_border_buf_0_val_1_1_1
  store i8 %col_buf_0_val_1_0, i8* %right_border_buf_0_val_1_1
  store i8 %right_border_buf_0_val_2_1_2, i8* %right_border_buf_0_val_2_1
  store i8 %right_border_buf_0_val_0_1_2, i8* %right_border_buf_0_val_0_1_1
  store i8 %col_buf_0_val_0_0, i8* %right_border_buf_0_val_0_1
  br label %._crit_edge404.i_ifconv

"operator().exit464.i.0":                         ; preds = %borderInterpolate.exit421.i.0
  store i8 %tmp_112, i8* %k_buf_0_val_5_addr, align 1
  br label %._crit_edge406.i.0

._crit_edge406.i.0:                               ; preds = %"operator().exit464.i.0", %borderInterpolate.exit421.i.0
  br i1 %tmp_356_1, label %"operator().exit464.i.1", label %._crit_edge406.i.1

"operator().exit464.i.1":                         ; preds = %._crit_edge406.i.0
  store i8 %tmp_112, i8* %k_buf_0_val_4_addr, align 1
  br label %._crit_edge406.i.1

._crit_edge406.i.1:                               ; preds = %"operator().exit464.i.1", %._crit_edge406.i.0
  br i1 %tmp_356_2, label %"operator().exit464.i.2", label %._crit_edge406.i.2

"operator().exit464.i.2":                         ; preds = %._crit_edge406.i.1
  store i8 %tmp_112, i8* %k_buf_0_val_3_addr, align 1
  br label %._crit_edge406.i.2

._crit_edge406.i.2:                               ; preds = %"operator().exit464.i.2", %._crit_edge406.i.1
  br label %._crit_edge404.i_ifconv

._crit_edge404.i_ifconv:                          ; preds = %._crit_edge406.i.2, %.preheader388.i.preheader.0, %4, %.critedge.i_ifconv
  %tmp_97 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_s)
  %src_kernel_win_0_val_0_0 = select i1 %tmp_57, i8 %tmp_97, i8 %col_buf_0_val_0_0
  %tmp_102 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_13_1_t)
  %src_kernel_win_0_val_1_0 = select i1 %tmp_57, i8 %tmp_102, i8 %col_buf_0_val_1_0
  %tmp_105 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_13_2_t)
  %src_kernel_win_0_val_2_0 = select i1 %tmp_57, i8 %tmp_105, i8 %col_buf_0_val_2_0
  %or_cond_i = and i1 %icmp, %icmp3
  br i1 %or_cond_i, label %.preheader_ifconv, label %._crit_edge411.i

.preheader_ifconv:                                ; preds = %._crit_edge404.i_ifconv
  %src_kernel_win_0_val_0_1_lo = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_0_1_1_s = load i8* %src_kernel_win_0_val_0_1_1
  %src_kernel_win_0_val_1_1_lo = load i8* %src_kernel_win_0_val_1_1
  %src_kernel_win_0_val_1_1_1_s = load i8* %src_kernel_win_0_val_1_1_1
  %src_kernel_win_0_val_2_1_lo = load i8* %src_kernel_win_0_val_2_1
  %src_kernel_win_0_val_2_1_1_s = load i8* %src_kernel_win_0_val_2_1_1
  %OP1_V_0_cast = zext i8 %src_kernel_win_0_val_2_1_1_s to i20
  %p_Val2_s = mul i20 %OP1_V_0_cast, 1513
  %OP1_V_0_1_cast = zext i8 %src_kernel_win_0_val_2_1_lo to i20
  %p_Val2_14_0_1 = mul i20 %OP1_V_0_1_cast, 1953
  %p_Val2_17_0_1 = add i20 %p_Val2_s, %p_Val2_14_0_1
  %p_Val2_17_0_1_cast = zext i20 %p_Val2_17_0_1 to i21
  %OP1_V_0_2_cast = zext i8 %src_kernel_win_0_val_2_0 to i20
  %p_Val2_14_0_2 = mul i20 %OP1_V_0_2_cast, 1513
  %OP1_V_1_cast = zext i8 %src_kernel_win_0_val_1_1_1_s to i20
  %p_Val2_14_1 = mul i20 %OP1_V_1_cast, 1953
  %tmp28 = add i20 %p_Val2_14_0_2, %p_Val2_14_1
  %tmp28_cast = zext i20 %tmp28 to i21
  %p_Val2_17_1 = add i21 %tmp28_cast, %p_Val2_17_0_1_cast
  %p_Val2_17_1_cast = zext i21 %p_Val2_17_1 to i22
  %OP1_V_1_1_cast = zext i8 %src_kernel_win_0_val_1_1_lo to i21
  %p_Val2_14_1_1 = mul i21 %OP1_V_1_1_cast, 2520
  %tmp_400_1_1_cast = zext i21 %p_Val2_14_1_1 to i22
  %OP1_V_1_2_cast = zext i8 %src_kernel_win_0_val_1_0 to i20
  %p_Val2_14_1_2 = mul i20 %OP1_V_1_2_cast, 1953
  %OP1_V_2_cast = zext i8 %src_kernel_win_0_val_0_1_1_s to i20
  %p_Val2_14_2 = mul i20 %OP1_V_2_cast, 1513
  %tmp_400_2_cast = zext i20 %p_Val2_14_2 to i22
  %OP1_V_2_1_cast = zext i8 %src_kernel_win_0_val_0_1_lo to i20
  %p_Val2_14_2_1 = mul i20 %OP1_V_2_1_cast, 1953
  %tmp_400_2_1_cast_cast = zext i20 %p_Val2_14_2_1 to i21
  %OP1_V_2_2_cast = zext i8 %src_kernel_win_0_val_0_0 to i20
  %p_Val2_14_2_2 = mul i20 %OP1_V_2_2_cast, 1513
  %tmp33 = add i22 %p_Val2_17_1_cast, %tmp_400_2_cast
  %tmp32 = add i22 %tmp33, %tmp_400_1_1_cast
  %tmp35 = add i20 %p_Val2_14_1_2, %p_Val2_14_2_2
  %tmp35_cast = zext i20 %tmp35 to i21
  %tmp34 = add i21 %tmp35_cast, %tmp_400_2_1_cast_cast
  %tmp34_cast = zext i21 %tmp34 to i22
  %p_Val2_1 = add i22 %tmp34_cast, %tmp32
  %p_Val2_2 = call i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22 %p_Val2_1, i32 14, i32 21)
  %tmp_108 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_Val2_1, i32 13)
  %tmp_34_i_i = zext i1 %tmp_108 to i8
  %tmp_109 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_Val2_1, i32 21)
  %p_Val2_3 = add i8 %p_Val2_2, %tmp_34_i_i
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_Val2_3, i32 7)
  %p_Result_2_i_i_not = xor i1 %tmp_109, true
  %not_carry = or i1 %tmp_110, %p_Result_2_i_i_not
  %p_Val2_s_76 = select i1 %not_carry, i8 %p_Val2_3, i8 -1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_V, i8 %p_Val2_s_76)
  br label %._crit_edge411.i

._crit_edge411.i:                                 ; preds = %.preheader_ifconv, %._crit_edge404.i_ifconv
  %src_kernel_win_0_val_0_1_lo_1 = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_1_1_lo_1 = load i8* %src_kernel_win_0_val_1_1
  %src_kernel_win_0_val_2_1_lo_1 = load i8* %src_kernel_win_0_val_2_1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1818, i32 %tmp_81)
  store i8 %src_kernel_win_0_val_2_1_lo_1, i8* %src_kernel_win_0_val_2_1_1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1
  store i8 %src_kernel_win_0_val_1_1_lo_1, i8* %src_kernel_win_0_val_1_1_1
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1
  store i8 %src_kernel_win_0_val_0_1_lo_1, i8* %src_kernel_win_0_val_0_1_1
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1
  br label %2

; <label>:5                                       ; preds = %2
  %empty_77 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1817, i32 %tmp_53)
  br label %0

"filter<0, 0, ap_fixed<16, 2, 0, 3, 0>, int, 1024, 1024, 3, 3>.exit": ; preds = %0
  ret void
}

define internal fastcc void @canny_Filter2D(i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V, i2 %p_kernel_val_0_V_1_read, i2 %p_kernel_val_0_V_2_read, i3 %p_kernel_val_1_V_0_read, i4 %p_kernel_val_1_V_2_read, i2 %p_kernel_val_2_V_0_read, i3 %p_kernel_val_2_V_1_read) {
arrayctor.loop1.i.preheader:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_kernel_val_2_V_1_read_1 = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %p_kernel_val_2_V_1_read)
  %p_kernel_val_2_V_0_read_1 = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %p_kernel_val_2_V_0_read)
  %p_kernel_val_1_V_2_read_1 = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %p_kernel_val_1_V_2_read)
  %p_kernel_val_1_V_0_read_1 = call i3 @_ssdm_op_Read.ap_auto.i3(i3 %p_kernel_val_1_V_0_read)
  %p_kernel_val_0_V_2_read_1 = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %p_kernel_val_0_V_2_read)
  %p_kernel_val_0_V_1_read_1 = call i2 @_ssdm_op_Read.ap_auto.i2(i2 %p_kernel_val_0_V_1_read)
  %k_buf_0_val_3 = alloca [1024 x i8], align 1
  %k_buf_0_val_4 = alloca [1024 x i8], align 1
  %k_buf_0_val_5 = alloca [1024 x i8], align 1
  br label %arrayctor.loop1.i

arrayctor.loop1.i:                                ; preds = %arrayctor.loop1.i, %arrayctor.loop1.i.preheader
  %tmp_s = phi i1 [ %tmp_38, %arrayctor.loop1.i ], [ false, %arrayctor.loop1.i.preheader ]
  %tmp_38 = xor i1 %tmp_s, true
  %rbegin_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s) nounwind
  %rend_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([64 x i8]* @hls_KD_KD_LineBuffer_MD_6_MC_s, i32 %rbegin_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %tmp_s, label %arrayctor.loop1.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %arrayctor.loop1.i
  %src_kernel_win_0_val_0_1 = alloca i8
  %src_kernel_win_0_val_0_1_2 = alloca i8
  %src_kernel_win_0_val_1_1 = alloca i8
  %src_kernel_win_0_val_1_1_2 = alloca i8
  %src_kernel_win_0_val_2_1 = alloca i8
  %src_kernel_win_0_val_2_1_2 = alloca i8
  %right_border_buf_0_val_0_1 = alloca i8
  %right_border_buf_0_val_0_1_2 = alloca i8
  %right_border_buf_0_val_2_1 = alloca i8
  %right_border_buf_0_val_1_1 = alloca i8
  %right_border_buf_0_val_1_1_2 = alloca i8
  %right_border_buf_0_val_2_1_3 = alloca i8
  %OP2_V_0_1_cast = sext i2 %p_kernel_val_0_V_1_read_1 to i10
  %OP2_V_0_2_cast = sext i2 %p_kernel_val_0_V_2_read_1 to i10
  %OP2_V_1_cast = sext i3 %p_kernel_val_1_V_0_read_1 to i11
  %OP2_V_1_2_cast = zext i4 %p_kernel_val_1_V_2_read_1 to i12
  %OP2_V_2_cast = sext i2 %p_kernel_val_2_V_0_read_1 to i10
  %OP2_V_2_1_cast = zext i3 %p_kernel_val_2_V_1_read_1 to i11
  br label %0

; <label>:0                                       ; preds = %5, %._crit_edge.i
  %p_014_0_i = phi i11 [ 0, %._crit_edge.i ], [ %i_V, %5 ]
  %tmp_50_cast_cast = zext i11 %p_014_0_i to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1026, i64 1026, i64 0)
  %exitcond1 = icmp eq i11 %p_014_0_i, -1022
  %i_V = add i11 %p_014_0_i, 1
  br i1 %exitcond1, label %"filter<0, 0, ap_int<8>, int, 1024, 1024, 3, 3>.exit", label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1817) nounwind
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1817)
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_014_0_i, i32 10)
  %tmp_114 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_014_0_i, i32 10)
  %tmp_115 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_014_0_i, i32 1, i32 10)
  %icmp = icmp ne i10 %tmp_115, 0
  %tmp_43 = icmp eq i11 %p_014_0_i, 1
  %tmp_208_1 = icmp eq i11 %p_014_0_i, 0
  %tmp_44 = icmp ugt i11 %p_014_0_i, -1024
  %tmp_45 = add i12 -1, %tmp_50_cast_cast
  %tmp_117 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %tmp_45, i32 11)
  %rev = xor i1 %tmp_117, true
  %tmp_118 = call i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12 %tmp_45, i32 10, i32 11)
  %icmp4 = icmp ne i2 %tmp_118, 1
  %or_cond_i422_i = and i1 %icmp4, %rev
  %tmp_119 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %tmp_45, i32 11)
  %p_assign_7 = sub i11 1, %p_014_0_i
  %p_assign_7_cast = sext i11 %p_assign_7 to i12
  %p_p2_i423_i = select i1 %tmp_119, i12 %p_assign_7_cast, i12 %tmp_45
  %tmp_120 = call i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12 %p_p2_i423_i, i32 10, i32 11)
  %icmp5 = icmp ne i2 %tmp_120, 1
  %tmp_121 = trunc i12 %p_p2_i423_i to i2
  %p_assign_6_1 = add i11 -2, %p_014_0_i
  %tmp_122 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_assign_6_1, i32 10)
  %tmp_123 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_assign_6_1, i32 10)
  %tmp_124 = trunc i11 %p_014_0_i to i2
  %p_assign_6_2 = add i11 -3, %p_014_0_i
  %tmp_125 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_assign_6_2, i32 10)
  %tmp_126 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_assign_6_2, i32 10)
  %tmp_127 = trunc i11 %p_014_0_i to i2
  %tmp_128 = trunc i12 %tmp_45 to i2
  %tmp_129 = trunc i12 %p_p2_i423_i to i2
  %tmp_130 = sub i2 -2, %tmp_121
  %tmp_131 = select i1 %icmp5, i2 %tmp_129, i2 %tmp_130
  %tmp_106 = select i1 %or_cond_i422_i, i2 %tmp_128, i2 %tmp_131
  %row_assign_s = xor i2 %tmp_106, -1
  %tmp_132 = trunc i11 %p_assign_6_1 to i2
  %tmp_133 = sub i2 -2, %tmp_124
  %tmp_134 = select i1 %tmp_123, i2 %tmp_133, i2 %tmp_132
  %tmp_107 = select i1 %tmp_122, i2 %tmp_134, i2 %tmp_132
  %row_assign_10_1_t = xor i2 %tmp_107, -1
  %tmp_135 = trunc i11 %p_assign_6_2 to i2
  %tmp_136 = xor i2 %tmp_127, -1
  %tmp_137 = select i1 %tmp_126, i2 %tmp_136, i2 %tmp_135
  %tmp_108 = select i1 %tmp_125, i2 %tmp_137, i2 %tmp_135
  %row_assign_10_2_t = xor i2 %tmp_108, -1
  br label %2

; <label>:2                                       ; preds = %._crit_edge411.i, %1
  %p_027_0_i = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge411.i ]
  %right_border_buf_0_val_2_1_4 = load i8* %right_border_buf_0_val_2_1_3
  %tmp_53_cast_cast = zext i11 %p_027_0_i to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1026, i64 1026, i64 0)
  %exitcond = icmp eq i11 %p_027_0_i, -1022
  %j_V = add i11 %p_027_0_i, 1
  br i1 %exitcond, label %5, label %.critedge.i_ifconv

.critedge.i_ifconv:                               ; preds = %2
  %right_border_buf_0_val_0_1_s = load i8* %right_border_buf_0_val_0_1
  %right_border_buf_0_val_0_1_3 = load i8* %right_border_buf_0_val_0_1_2
  %right_border_buf_0_val_2_1_s = load i8* %right_border_buf_0_val_2_1
  %right_border_buf_0_val_1_1_s = load i8* %right_border_buf_0_val_1_1
  %right_border_buf_0_val_1_1_3 = load i8* %right_border_buf_0_val_1_1_2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1818) nounwind
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_138 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_027_0_i, i32 1, i32 10)
  %icmp6 = icmp ne i10 %tmp_138, 0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1836) nounwind
  %ImagLoc_x = add i12 -1, %tmp_53_cast_cast
  %ImagLoc_x_cast = sext i12 %ImagLoc_x to i13
  %tmp_139 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %rev7 = xor i1 %tmp_139, true
  %tmp_140 = call i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12 %ImagLoc_x, i32 10, i32 11)
  %icmp7 = icmp ne i2 %tmp_140, 1
  %or_cond_i_i = and i1 %icmp7, %rev7
  %tmp_141 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %p_assign_1 = sub i11 1, %p_027_0_i
  %p_assign_1_cast = sext i11 %p_assign_1 to i12
  %p_p2_i_i = select i1 %tmp_141, i12 %p_assign_1_cast, i12 %ImagLoc_x
  %p_p2_i_i_cast_cast8 = sext i12 %p_p2_i_i to i13
  %tmp_142 = call i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12 %p_p2_i_i, i32 10, i32 11)
  %icmp8 = icmp ne i2 %tmp_142, 1
  %p_assign_2 = sub i12 2046, %p_p2_i_i
  %p_assign_2_cast = zext i12 %p_assign_2 to i13
  %sel_tmp = select i1 %or_cond_i_i, i13 %ImagLoc_x_cast, i13 %p_assign_2_cast
  %icmp54_not = xor i1 %icmp7, true
  %sel_tmp7 = or i1 %tmp_139, %icmp54_not
  %sel_tmp8 = and i1 %icmp8, %sel_tmp7
  %x = select i1 %sel_tmp8, i13 %p_p2_i_i_cast_cast8, i13 %sel_tmp
  %col_assign_cast = sext i13 %x to i32
  %tmp_143 = trunc i13 %x to i2
  %brmerge = or i1 %tmp_114, %icmp7
  %tmp_60 = zext i32 %col_assign_cast to i64
  %k_buf_0_val_3_addr = getelementptr [1024 x i8]* %k_buf_0_val_3, i64 0, i64 %tmp_60
  %k_buf_0_val_3_load = load i8* %k_buf_0_val_3_addr, align 1
  %col_assign_3_t = xor i2 %tmp_143, -1
  %tmp_61 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_0_1_s, i8 %right_border_buf_0_val_0_1_3, i8 undef, i2 %col_assign_3_t)
  %col_buf_0_val_0_0 = select i1 %brmerge, i8 %k_buf_0_val_3_load, i8 %tmp_61
  %k_buf_0_val_4_addr = getelementptr [1024 x i8]* %k_buf_0_val_4, i64 0, i64 %tmp_60
  %k_buf_0_val_4_load = load i8* %k_buf_0_val_4_addr, align 1
  %tmp_62 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_1_1_s, i8 %right_border_buf_0_val_1_1_3, i8 undef, i2 %col_assign_3_t)
  %col_buf_0_val_1_0 = select i1 %brmerge, i8 %k_buf_0_val_4_load, i8 %tmp_62
  %k_buf_0_val_5_addr = getelementptr [1024 x i8]* %k_buf_0_val_5, i64 0, i64 %tmp_60
  %k_buf_0_val_5_load = load i8* %k_buf_0_val_5_addr, align 1
  %tmp_63 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %right_border_buf_0_val_2_1_4, i8 %right_border_buf_0_val_2_1_s, i8 undef, i2 %col_assign_3_t)
  %col_buf_0_val_2_0 = select i1 %brmerge, i8 %k_buf_0_val_5_load, i8 %tmp_63
  br i1 %or_cond_i_i, label %3, label %._crit_edge404.i_ifconv

; <label>:3                                       ; preds = %.critedge.i_ifconv
  br i1 %icmp, label %4, label %borderInterpolate.exit421.i.0

borderInterpolate.exit421.i.0:                    ; preds = %3
  %tmp_149 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  br i1 %tmp_43, label %"operator().exit464.i.0", label %._crit_edge406.i.0

; <label>:4                                       ; preds = %3
  br i1 %tmp, label %._crit_edge404.i_ifconv, label %.preheader388.i.preheader.0

.preheader388.i.preheader.0:                      ; preds = %4
  %right_border_buf_0_val_0_1_4 = load i8* %right_border_buf_0_val_0_1
  %right_border_buf_0_val_1_1_4 = load i8* %right_border_buf_0_val_1_1
  store i8 %k_buf_0_val_4_load, i8* %k_buf_0_val_5_addr, align 1
  store i8 %k_buf_0_val_3_load, i8* %k_buf_0_val_4_addr, align 1
  %tmp_145 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  store i8 %tmp_145, i8* %k_buf_0_val_3_addr, align 1
  store i8 %col_buf_0_val_2_0, i8* %right_border_buf_0_val_2_1_3
  store i8 %right_border_buf_0_val_1_1_4, i8* %right_border_buf_0_val_1_1_2
  store i8 %col_buf_0_val_1_0, i8* %right_border_buf_0_val_1_1
  store i8 %right_border_buf_0_val_2_1_4, i8* %right_border_buf_0_val_2_1
  store i8 %right_border_buf_0_val_0_1_4, i8* %right_border_buf_0_val_0_1_2
  store i8 %col_buf_0_val_0_0, i8* %right_border_buf_0_val_0_1
  br label %._crit_edge404.i_ifconv

"operator().exit464.i.0":                         ; preds = %borderInterpolate.exit421.i.0
  store i8 %tmp_149, i8* %k_buf_0_val_5_addr, align 1
  br label %._crit_edge406.i.0

._crit_edge406.i.0:                               ; preds = %"operator().exit464.i.0", %borderInterpolate.exit421.i.0
  br i1 %tmp_208_1, label %"operator().exit464.i.1", label %._crit_edge406.i.1

"operator().exit464.i.1":                         ; preds = %._crit_edge406.i.0
  store i8 %tmp_149, i8* %k_buf_0_val_4_addr, align 1
  br label %._crit_edge406.i.1

._crit_edge406.i.1:                               ; preds = %"operator().exit464.i.1", %._crit_edge406.i.0
  br i1 %tmp_43, label %"operator().exit464.i.2", label %._crit_edge406.i.2

"operator().exit464.i.2":                         ; preds = %._crit_edge406.i.1
  store i8 %tmp_149, i8* %k_buf_0_val_3_addr, align 1
  br label %._crit_edge406.i.2

._crit_edge406.i.2:                               ; preds = %"operator().exit464.i.2", %._crit_edge406.i.1
  br label %._crit_edge404.i_ifconv

._crit_edge404.i_ifconv:                          ; preds = %4, %._crit_edge406.i.2, %.preheader388.i.preheader.0, %.critedge.i_ifconv
  %tmp_65 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_s)
  %src_kernel_win_0_val_0_0 = select i1 %tmp_44, i8 %tmp_65, i8 %col_buf_0_val_0_0
  %tmp_67 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_10_1_t)
  %src_kernel_win_0_val_1_0 = select i1 %tmp_44, i8 %tmp_67, i8 %col_buf_0_val_1_0
  %tmp_69 = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %col_buf_0_val_0_0, i8 %col_buf_0_val_1_0, i8 %col_buf_0_val_2_0, i2 %row_assign_10_2_t)
  %src_kernel_win_0_val_2_0 = select i1 %tmp_44, i8 %tmp_69, i8 %col_buf_0_val_2_0
  %or_cond_i = and i1 %icmp, %icmp6
  br i1 %or_cond_i, label %.preheader, label %._crit_edge411.i

.preheader:                                       ; preds = %._crit_edge404.i_ifconv
  %src_kernel_win_0_val_0_1_lo = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_0_1_2_s = load i8* %src_kernel_win_0_val_0_1_2
  %src_kernel_win_0_val_1_1_2_s = load i8* %src_kernel_win_0_val_1_1_2
  %src_kernel_win_0_val_2_1_lo = load i8* %src_kernel_win_0_val_2_1
  %src_kernel_win_0_val_2_1_2_s = load i8* %src_kernel_win_0_val_2_1_2
  %OP1_V_0_cast = zext i8 %src_kernel_win_0_val_2_1_2_s to i9
  %p_Val2_s = sub i9 0, %OP1_V_0_cast
  %tmp_252_0_cast = sext i9 %p_Val2_s to i11
  %OP1_V_0_1_cast = zext i8 %src_kernel_win_0_val_2_1_lo to i10
  %p_Val2_0_1 = mul i10 %OP2_V_0_1_cast, %OP1_V_0_1_cast
  %tmp_252_0_1_cast = sext i10 %p_Val2_0_1 to i11
  %p_Val2_13_0_1 = add i11 %tmp_252_0_cast, %tmp_252_0_1_cast
  %OP1_V_0_2_cast = zext i8 %src_kernel_win_0_val_2_0 to i10
  %p_Val2_0_2 = mul i10 %OP2_V_0_2_cast, %OP1_V_0_2_cast
  %tmp_252_0_2_cast_cast = sext i10 %p_Val2_0_2 to i11
  %p_Val2_13_0_2 = add i11 %tmp_252_0_2_cast_cast, %p_Val2_13_0_1
  %p_Val2_13_0_2_cast6 = sext i11 %p_Val2_13_0_2 to i12
  %OP1_V_1_cast = zext i8 %src_kernel_win_0_val_1_1_2_s to i11
  %p_Val2_1 = mul i11 %OP2_V_1_cast, %OP1_V_1_cast
  %tmp_252_1_cast_cast = sext i11 %p_Val2_1 to i12
  %p_Val2_13_1_1 = add i12 %tmp_252_1_cast_cast, %p_Val2_13_0_2_cast6
  %OP1_V_1_2_cast = zext i8 %src_kernel_win_0_val_1_0 to i12
  %p_Val2_1_2 = mul i12 %OP2_V_1_2_cast, %OP1_V_1_2_cast
  %OP1_V_2_cast = zext i8 %src_kernel_win_0_val_0_1_2_s to i10
  %p_Val2_2 = mul i10 %OP2_V_2_cast, %OP1_V_2_cast
  %OP1_V_2_1_cast = zext i8 %src_kernel_win_0_val_0_1_lo to i11
  %p_Val2_2_1 = mul i11 %OP2_V_2_1_cast, %OP1_V_2_1_cast
  %tmp_252_2_2_cast_cast_cast = zext i8 %src_kernel_win_0_val_0_0 to i10
  %tmp2 = add i12 %p_Val2_1_2, %p_Val2_13_1_1
  %tmp4 = add i10 %tmp_252_2_2_cast_cast_cast, %p_Val2_2
  %tmp4_cast = sext i10 %tmp4 to i11
  %tmp3 = add i11 %p_Val2_2_1, %tmp4_cast
  %tmp3_cast = sext i11 %tmp3 to i12
  %p_Val2_4 = add i12 %tmp2, %tmp3_cast
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %p_Val2_4, i32 11)
  %p_Val2_5 = trunc i12 %p_Val2_4 to i8
  %tmp_70 = call i4 @_ssdm_op_PartSelect.i4.i12.i32.i32(i12 %p_Val2_4, i32 8, i32 11)
  %tmp_i_i = xor i1 %isneg, true
  %not_i_i_i = icmp ne i4 %tmp_70, 0
  %overflow = and i1 %not_i_i_i, %tmp_i_i
  %p_mux_i_i_cast = select i1 %tmp_i_i, i8 -1, i8 0
  %tmp_i_i_78 = or i1 %isneg, %overflow
  %p_Val2_7 = select i1 %tmp_i_i_78, i8 %p_mux_i_i_cast, i8 %p_Val2_5
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_V, i8 %p_Val2_7)
  br label %._crit_edge411.i

._crit_edge411.i:                                 ; preds = %.preheader, %._crit_edge404.i_ifconv
  %src_kernel_win_0_val_0_1_lo_2 = load i8* %src_kernel_win_0_val_0_1
  %src_kernel_win_0_val_1_1_lo = load i8* %src_kernel_win_0_val_1_1
  %src_kernel_win_0_val_2_1_lo_2 = load i8* %src_kernel_win_0_val_2_1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1818, i32 %tmp_54)
  store i8 %src_kernel_win_0_val_2_1_lo_2, i8* %src_kernel_win_0_val_2_1_2
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1
  store i8 %src_kernel_win_0_val_1_1_lo, i8* %src_kernel_win_0_val_1_1_2
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1
  store i8 %src_kernel_win_0_val_0_1_lo_2, i8* %src_kernel_win_0_val_0_1_2
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1
  br label %2

; <label>:5                                       ; preds = %2
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1817, i32 %tmp_40)
  br label %0

"filter<0, 0, ap_int<8>, int, 1024, 1024, 3, 3>.exit": ; preds = %0
  ret void
}

define internal fastcc void @"canny_Duplicate<1024, 1024, 0, 0>"(i8* %src_data_stream_V, i8* %dst1_data_stream_V, i8* %dst2_data_stream_V) {
._crit_edge81:
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %4, %._crit_edge81
  %p_s = phi i11 [ 0, %._crit_edge81 ], [ %i_V, %4 ]
  %exitcond2 = icmp eq i11 %p_s, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond2, label %5, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1817) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1817)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %p_6 = phi i11 [ 0, %1 ], [ %j_V, %3 ]
  %exitcond = icmp eq i11 %p_6, -1024
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %j_V = add i11 %p_6, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1818) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_90 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1866)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_150 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1866, i32 %tmp_90)
  %tmp_91 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1858)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_V, i8 %tmp_150)
  %empty_80 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1858, i32 %tmp_91)
  %tmp_92 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1858)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_V, i8 %tmp_150)
  %empty_81 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1858, i32 %tmp_92)
  %empty_82 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1818, i32 %tmp_s)
  br label %2

; <label>:4                                       ; preds = %2
  %empty_83 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1817, i32 %tmp)
  br label %0

; <label>:5                                       ; preds = %0
  ret void
}

define internal fastcc void @canny_Block__proc(i12* %img_0_rows_V_out, i12* %img_0_cols_V_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_cols_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_0_rows_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i12P(i12* %img_0_rows_V_out, i12 1024)
  call void @_ssdm_op_Write.ap_fifo.i12P(i12* %img_0_cols_V_out, i12 1024)
  ret void
}

define internal fastcc void @"canny_AXIvideo2Mat<8, 1024, 1024, 0>"(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12* nocapture %img_rows_V, i12* nocapture %img_cols_V, i8* %img_data_stream_V, i12* %img_rows_V_out, i12* %img_cols_V_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_cols_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_rows_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %rows_V = call i12 @_ssdm_op_Read.ap_fifo.i12P(i12* %img_rows_V)
  %cols_V = call i12 @_ssdm_op_Read.ap_fifo.i12P(i12* %img_cols_V)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_rows_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i12P(i12* %img_rows_V_out, i12 %rows_V)
  call void (...)* @_ssdm_op_SpecInterface(i12* %img_cols_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i12P(i12* %img_cols_V_out, i12 %cols_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  br label %._crit_edge187.i

._crit_edge187.i:                                 ; preds = %._crit_edge187.i, %entry
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1849) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1849)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty = call { i8, i1, i1, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty, 4
  %empty_84 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1849, i32 %tmp_i)
  br i1 %tmp_user_V, label %.preheader186.i.preheader, label %._crit_edge187.i

.preheader186.i.preheader:                        ; preds = %._crit_edge187.i
  %sof_1_i = alloca i1
  store i1 true, i1* %sof_1_i
  br label %.preheader186.i

.preheader186.i:                                  ; preds = %.preheader186.i.preheader, %5
  %axi_last_V1_i = phi i1 [ %axi_last_V_3_i, %5 ], [ %tmp_last_V, %.preheader186.i.preheader ]
  %axi_data_V1_i = phi i8 [ %axi_data_V_3_i, %5 ], [ %tmp_data_V, %.preheader186.i.preheader ]
  %p_i = phi i11 [ %i_V, %5 ], [ 0, %.preheader186.i.preheader ]
  %p_cast_i = zext i11 %p_i to i12
  %exitcond3_i = icmp eq i12 %p_cast_i, %rows_V
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1024, i64 0)
  %i_V = add i11 %p_i, 1
  br i1 %exitcond3_i, label %.exit, label %0

; <label>:0                                       ; preds = %.preheader186.i
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1817) nounwind
  %tmp_149_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1817)
  br label %1

; <label>:1                                       ; preds = %.critedge.i, %0
  %eol = phi i1 [ %axi_last_V1_i, %0 ], [ %axi_last_V_2_i, %.critedge.i ]
  %axi_data_V_1_i = phi i8 [ %axi_data_V1_i, %0 ], [ %p_Val2_s, %.critedge.i ]
  %p_7_i = phi i11 [ 0, %0 ], [ %j_V, %.critedge.i ]
  %eol_i = phi i1 [ false, %0 ], [ %axi_last_V_2_i, %.critedge.i ]
  %p_7_cast_i = zext i11 %p_7_i to i12
  %exitcond_i = icmp eq i12 %p_7_cast_i, %cols_V
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1024, i64 0)
  %j_V = add i11 %p_7_i, 1
  br i1 %exitcond_i, label %.preheader.i, label %2

; <label>:2                                       ; preds = %1
  %sof_1_i_load = load i1* %sof_1_i
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1818) nounwind
  %tmp_150_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %brmerge_i = or i1 %sof_1_i_load, %eol_i
  br i1 %brmerge_i, label %.critedge.i, label %3

; <label>:3                                       ; preds = %2
  %empty_85 = call { i8, i1, i1, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty_85, 0
  %tmp_last_V_1 = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty_85, 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %3, %2
  %axi_last_V_2_i = phi i1 [ %tmp_last_V_1, %3 ], [ %eol, %2 ]
  %p_Val2_s = phi i8 [ %tmp_data_V_1, %3 ], [ %axi_data_V_1_i, %2 ]
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str1819) nounwind
  %tmp_153_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1858)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_V, i8 %p_Val2_s)
  %empty_86 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1858, i32 %tmp_153_i)
  %empty_87 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1818, i32 %tmp_150_i)
  store i1 false, i1* %sof_1_i
  br label %1

.preheader.i:                                     ; preds = %1, %4
  %axi_last_V_3_i = phi i1 [ %tmp_last_V_2, %4 ], [ %eol, %1 ]
  %axi_data_V_3_i = phi i8 [ %tmp_data_V_2, %4 ], [ %axi_data_V_1_i, %1 ]
  %eol_2_i = phi i1 [ %tmp_last_V_2, %4 ], [ %eol_i, %1 ]
  br i1 %eol_2_i, label %5, label %4

; <label>:4                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1850) nounwind
  %tmp_151_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1850)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_88 = call { i8, i1, i1, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %AXI_video_strm_V_data_V, i1* %AXI_video_strm_V_keep_V, i1* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty_88, 0
  %tmp_last_V_2 = extractvalue { i8, i1, i1, i1, i1, i1, i1 } %empty_88, 4
  %empty_89 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1850, i32 %tmp_151_i)
  br label %.preheader.i

; <label>:5                                       ; preds = %.preheader.i
  %empty_90 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1817, i32 %tmp_149_i)
  br label %.preheader186.i

.exit:                                            ; preds = %.preheader186.i
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input_stream.V.data.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"input_stream.V.keep.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"input_stream.V.strb.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input_stream.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"input_stream.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"input_stream.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"input_stream.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 7, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"output_stream.V.data.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"output_stream.V.keep.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"output_stream.V.strb.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"output_stream.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"output_stream.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"output_stream.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"output_stream.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
