set moduleName load_input
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
set C_modelName {load_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_V int 32 regular {axi_s 0 volatile  { in2 Data } }  }
	{ in_keep_V int 4 regular {axi_s 0 volatile  { in2 Keep } }  }
	{ in_strb_V int 4 regular {axi_s 0 volatile  { in2 Strb } }  }
	{ in_user_V int 4 regular {axi_s 0 volatile  { in2 User } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in2 Last } }  }
	{ in_id_V int 5 regular {axi_s 0 volatile  { in2 ID } }  }
	{ in_dest_V int 5 regular {axi_s 0 volatile  { in2 Dest } }  }
	{ size int 32 regular {fifo 0}  }
	{ in2_stream_V float 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "in_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in2_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ in2_TDATA sc_in sc_lv 32 signal 0 } 
	{ in2_TVALID sc_in sc_logic 1 invld 6 } 
	{ in2_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in2_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in2_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in2_TUSER sc_in sc_lv 4 signal 3 } 
	{ in2_TLAST sc_in sc_lv 1 signal 4 } 
	{ in2_TID sc_in sc_lv 5 signal 5 } 
	{ in2_TDEST sc_in sc_lv 5 signal 6 } 
	{ size_dout sc_in sc_lv 32 signal 7 } 
	{ size_empty_n sc_in sc_logic 1 signal 7 } 
	{ size_read sc_out sc_logic 1 signal 7 } 
	{ in2_stream_V_din sc_out sc_lv 32 signal 8 } 
	{ in2_stream_V_full_n sc_in sc_logic 1 signal 8 } 
	{ in2_stream_V_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_V", "role": "default" }} , 
 	{ "name": "in2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_dest_V", "role": "" }} , 
 	{ "name": "in2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_dest_V", "role": "" }} , 
 	{ "name": "in2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_keep_V", "role": "default" }} , 
 	{ "name": "in2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_strb_V", "role": "default" }} , 
 	{ "name": "in2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_user_V", "role": "default" }} , 
 	{ "name": "in2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "default" }} , 
 	{ "name": "in2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_id_V", "role": "default" }} , 
 	{ "name": "in2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_dest_V", "role": "default" }} , 
 	{ "name": "size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "dout" }} , 
 	{ "name": "size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "empty_n" }} , 
 	{ "name": "size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "read" }} , 
 	{ "name": "in2_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "din" }} , 
 	{ "name": "in2_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "full_n" }} , 
 	{ "name": "in2_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "load_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_id_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_input {
		in_data_V {Type I LastRead 1 FirstWrite -1}
		in_keep_V {Type I LastRead 1 FirstWrite -1}
		in_strb_V {Type I LastRead 1 FirstWrite -1}
		in_user_V {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_id_V {Type I LastRead 1 FirstWrite -1}
		in_dest_V {Type I LastRead 1 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		in2_stream_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_data_V { axis {  { in2_TDATA in_data 0 32 } } }
	in_keep_V { axis {  { in2_TKEEP in_data 0 4 } } }
	in_strb_V { axis {  { in2_TSTRB in_data 0 4 } } }
	in_user_V { axis {  { in2_TUSER in_data 0 4 } } }
	in_last_V { axis {  { in2_TLAST in_data 0 1 } } }
	in_id_V { axis {  { in2_TID in_data 0 5 } } }
	in_dest_V { axis {  { in2_TVALID in_vld 0 1 }  { in2_TREADY in_acc 1 1 }  { in2_TDEST in_data 0 5 } } }
	size { ap_fifo {  { size_dout fifo_data 0 32 }  { size_empty_n fifo_status 0 1 }  { size_read fifo_update 1 1 } } }
	in2_stream_V { ap_fifo {  { in2_stream_V_din fifo_data 1 32 }  { in2_stream_V_full_n fifo_status 0 1 }  { in2_stream_V_write fifo_update 1 1 } } }
}
