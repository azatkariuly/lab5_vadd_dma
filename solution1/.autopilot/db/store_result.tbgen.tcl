set moduleName store_result
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {store_result}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_data_V int 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_keep_V int 4 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ out_strb_V int 4 regular {axi_s 1 volatile  { out_r Strb } }  }
	{ out_user_V int 4 regular {axi_s 1 volatile  { out_r User } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_id_V int 5 regular {axi_s 1 volatile  { out_r ID } }  }
	{ out_dest_V int 5 regular {axi_s 1 volatile  { out_r Dest } }  }
	{ size int 32 regular {fifo 0}  }
	{ out_stream_V float 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 0 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 6 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 6 } 
	{ out_r_TKEEP sc_out sc_lv 4 signal 1 } 
	{ out_r_TSTRB sc_out sc_lv 4 signal 2 } 
	{ out_r_TUSER sc_out sc_lv 4 signal 3 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 4 } 
	{ out_r_TID sc_out sc_lv 5 signal 5 } 
	{ out_r_TDEST sc_out sc_lv 5 signal 6 } 
	{ size_dout sc_in sc_lv 32 signal 7 } 
	{ size_empty_n sc_in sc_logic 1 signal 7 } 
	{ size_read sc_out sc_logic 1 signal 7 } 
	{ out_stream_V_dout sc_in sc_lv 32 signal 8 } 
	{ out_stream_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ out_stream_V_read sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data_V", "role": "" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_dest_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_dest_V", "role": "Y" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_keep_V", "role": "" }} , 
 	{ "name": "out_r_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_strb_V", "role": "" }} , 
 	{ "name": "out_r_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_user_V", "role": "" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }} , 
 	{ "name": "out_r_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_id_V", "role": "" }} , 
 	{ "name": "out_r_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_dest_V", "role": "" }} , 
 	{ "name": "size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "dout" }} , 
 	{ "name": "size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "empty_n" }} , 
 	{ "name": "size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "read" }} , 
 	{ "name": "out_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V", "role": "dout" }} , 
 	{ "name": "out_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "empty_n" }} , 
 	{ "name": "out_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "store_result",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_id_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	store_result {
		out_data_V {Type O LastRead -1 FirstWrite 2}
		out_keep_V {Type O LastRead -1 FirstWrite 2}
		out_strb_V {Type O LastRead -1 FirstWrite 2}
		out_user_V {Type O LastRead -1 FirstWrite 2}
		out_last_V {Type O LastRead -1 FirstWrite 2}
		out_id_V {Type O LastRead -1 FirstWrite 2}
		out_dest_V {Type O LastRead -1 FirstWrite 2}
		size {Type I LastRead 0 FirstWrite -1}
		out_stream_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4099", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "4099", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_data_V { axis {  { out_r_TDATA out_data 1 32 } } }
	out_keep_V { axis {  { out_r_TKEEP out_data 1 4 } } }
	out_strb_V { axis {  { out_r_TSTRB out_data 1 4 } } }
	out_user_V { axis {  { out_r_TUSER out_data 1 4 } } }
	out_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_id_V { axis {  { out_r_TID out_data 1 5 } } }
	out_dest_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 }  { out_r_TDEST out_data 1 5 } } }
	size { ap_fifo {  { size_dout fifo_data 0 32 }  { size_empty_n fifo_status 0 1 }  { size_read fifo_update 1 1 } } }
	out_stream_V { ap_fifo {  { out_stream_V_dout fifo_data 0 32 }  { out_stream_V_empty_n fifo_status 0 1 }  { out_stream_V_read fifo_update 1 1 } } }
}
