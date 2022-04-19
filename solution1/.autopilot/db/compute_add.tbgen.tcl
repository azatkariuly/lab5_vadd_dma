set moduleName compute_add
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
set C_modelName {compute_add}
set C_modelType { void 0 }
set C_modelArgList {
	{ a float 32 regular {fifo 0}  }
	{ size int 32 regular {fifo 0}  }
	{ size_out int 32 regular {fifo 1}  }
	{ in1_stream_V float 32 regular {fifo 0 volatile } {global 0}  }
	{ in2_stream_V float 32 regular {fifo 0 volatile } {global 0}  }
	{ out_stream_V float 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "size_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in1_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "in2_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ a_dout sc_in sc_lv 32 signal 0 } 
	{ a_empty_n sc_in sc_logic 1 signal 0 } 
	{ a_read sc_out sc_logic 1 signal 0 } 
	{ size_dout sc_in sc_lv 32 signal 1 } 
	{ size_empty_n sc_in sc_logic 1 signal 1 } 
	{ size_read sc_out sc_logic 1 signal 1 } 
	{ size_out_din sc_out sc_lv 32 signal 2 } 
	{ size_out_full_n sc_in sc_logic 1 signal 2 } 
	{ size_out_write sc_out sc_logic 1 signal 2 } 
	{ in1_stream_V_dout sc_in sc_lv 32 signal 3 } 
	{ in1_stream_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ in1_stream_V_read sc_out sc_logic 1 signal 3 } 
	{ in2_stream_V_dout sc_in sc_lv 32 signal 4 } 
	{ in2_stream_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ in2_stream_V_read sc_out sc_logic 1 signal 4 } 
	{ out_stream_V_din sc_out sc_lv 32 signal 5 } 
	{ out_stream_V_full_n sc_in sc_logic 1 signal 5 } 
	{ out_stream_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "a_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "dout" }} , 
 	{ "name": "a_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "empty_n" }} , 
 	{ "name": "a_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "read" }} , 
 	{ "name": "size_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size", "role": "dout" }} , 
 	{ "name": "size_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "empty_n" }} , 
 	{ "name": "size_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size", "role": "read" }} , 
 	{ "name": "size_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "size_out", "role": "din" }} , 
 	{ "name": "size_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_out", "role": "full_n" }} , 
 	{ "name": "size_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "size_out", "role": "write" }} , 
 	{ "name": "in1_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1_stream_V", "role": "dout" }} , 
 	{ "name": "in1_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_stream_V", "role": "empty_n" }} , 
 	{ "name": "in1_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_stream_V", "role": "read" }} , 
 	{ "name": "in2_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "dout" }} , 
 	{ "name": "in2_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "empty_n" }} , 
 	{ "name": "in2_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_stream_V", "role": "read" }} , 
 	{ "name": "out_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V", "role": "din" }} , 
 	{ "name": "out_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "full_n" }} , 
 	{ "name": "out_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "compute_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4108", "EstimateLatencyMax" : "4108",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "a_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in1_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in1_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in2_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_vadd_fadd_32bkb_U27", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_vadd_fmul_32cud_U28", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_add {
		a {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		size_out {Type O LastRead -1 FirstWrite 0}
		in1_stream_V {Type I LastRead 2 FirstWrite -1}
		in2_stream_V {Type I LastRead 2 FirstWrite -1}
		out_stream_V {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4108", "Max" : "4108"}
	, {"Name" : "Interval", "Min" : "4108", "Max" : "4108"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a { ap_fifo {  { a_dout fifo_data 0 32 }  { a_empty_n fifo_status 0 1 }  { a_read fifo_update 1 1 } } }
	size { ap_fifo {  { size_dout fifo_data 0 32 }  { size_empty_n fifo_status 0 1 }  { size_read fifo_update 1 1 } } }
	size_out { ap_fifo {  { size_out_din fifo_data 1 32 }  { size_out_full_n fifo_status 0 1 }  { size_out_write fifo_update 1 1 } } }
	in1_stream_V { ap_fifo {  { in1_stream_V_dout fifo_data 0 32 }  { in1_stream_V_empty_n fifo_status 0 1 }  { in1_stream_V_read fifo_update 1 1 } } }
	in2_stream_V { ap_fifo {  { in2_stream_V_dout fifo_data 0 32 }  { in2_stream_V_empty_n fifo_status 0 1 }  { in2_stream_V_read fifo_update 1 1 } } }
	out_stream_V { ap_fifo {  { out_stream_V_din fifo_data 1 32 }  { out_stream_V_full_n fifo_status 0 1 }  { out_stream_V_write fifo_update 1 1 } } }
}
