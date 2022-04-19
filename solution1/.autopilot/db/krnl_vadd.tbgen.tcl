set moduleName krnl_vadd
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {krnl_vadd}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1_data_V int 32 regular {axi_s 0 volatile  { in1 Data } }  }
	{ in1_keep_V int 4 regular {axi_s 0 volatile  { in1 Keep } }  }
	{ in1_strb_V int 4 regular {axi_s 0 volatile  { in1 Strb } }  }
	{ in1_user_V int 4 regular {axi_s 0 volatile  { in1 User } }  }
	{ in1_last_V int 1 regular {axi_s 0 volatile  { in1 Last } }  }
	{ in1_id_V int 5 regular {axi_s 0 volatile  { in1 ID } }  }
	{ in1_dest_V int 5 regular {axi_s 0 volatile  { in1 Dest } }  }
	{ in2_data_V int 32 regular {axi_s 0 volatile  { in2 Data } }  }
	{ in2_keep_V int 4 regular {axi_s 0 volatile  { in2 Keep } }  }
	{ in2_strb_V int 4 regular {axi_s 0 volatile  { in2 Strb } }  }
	{ in2_user_V int 4 regular {axi_s 0 volatile  { in2 User } }  }
	{ in2_last_V int 1 regular {axi_s 0 volatile  { in2 Last } }  }
	{ in2_id_V int 5 regular {axi_s 0 volatile  { in2 ID } }  }
	{ in2_dest_V int 5 regular {axi_s 0 volatile  { in2 Dest } }  }
	{ a float 32 regular {axi_slave 0}  }
	{ out_data_V int 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_keep_V int 4 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ out_strb_V int 4 regular {axi_s 1 volatile  { out_r Strb } }  }
	{ out_user_V int 4 regular {axi_s 1 volatile  { out_r User } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_id_V int 5 regular {axi_s 1 volatile  { out_r ID } }  }
	{ out_dest_V int 5 regular {axi_s 1 volatile  { out_r Dest } }  }
	{ size int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in2.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in2.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in2.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in2.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in2.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in2.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in2.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "out_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "out_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "size", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in1_TDATA sc_in sc_lv 32 signal 0 } 
	{ in1_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in1_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in1_TUSER sc_in sc_lv 4 signal 3 } 
	{ in1_TLAST sc_in sc_lv 1 signal 4 } 
	{ in1_TID sc_in sc_lv 5 signal 5 } 
	{ in1_TDEST sc_in sc_lv 5 signal 6 } 
	{ in2_TDATA sc_in sc_lv 32 signal 7 } 
	{ in2_TKEEP sc_in sc_lv 4 signal 8 } 
	{ in2_TSTRB sc_in sc_lv 4 signal 9 } 
	{ in2_TUSER sc_in sc_lv 4 signal 10 } 
	{ in2_TLAST sc_in sc_lv 1 signal 11 } 
	{ in2_TID sc_in sc_lv 5 signal 12 } 
	{ in2_TDEST sc_in sc_lv 5 signal 13 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 15 } 
	{ out_r_TKEEP sc_out sc_lv 4 signal 16 } 
	{ out_r_TSTRB sc_out sc_lv 4 signal 17 } 
	{ out_r_TUSER sc_out sc_lv 4 signal 18 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 19 } 
	{ out_r_TID sc_out sc_lv 5 signal 20 } 
	{ out_r_TDEST sc_out sc_lv 5 signal 21 } 
	{ in1_TVALID sc_in sc_logic 1 invld 6 } 
	{ in1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in2_TVALID sc_in sc_logic 1 invld 13 } 
	{ in2_TREADY sc_out sc_logic 1 inacc 13 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 21 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 21 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"a","role":"data","value":"16"},{"name":"size","role":"data","value":"24"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1_data_V", "role": "default" }} , 
 	{ "name": "in1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in1_keep_V", "role": "default" }} , 
 	{ "name": "in1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in1_strb_V", "role": "default" }} , 
 	{ "name": "in1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in1_user_V", "role": "default" }} , 
 	{ "name": "in1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_last_V", "role": "default" }} , 
 	{ "name": "in1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in1_id_V", "role": "default" }} , 
 	{ "name": "in1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in1_dest_V", "role": "default" }} , 
 	{ "name": "in2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2_data_V", "role": "default" }} , 
 	{ "name": "in2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in2_keep_V", "role": "default" }} , 
 	{ "name": "in2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in2_strb_V", "role": "default" }} , 
 	{ "name": "in2_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in2_user_V", "role": "default" }} , 
 	{ "name": "in2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_last_V", "role": "default" }} , 
 	{ "name": "in2_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in2_id_V", "role": "default" }} , 
 	{ "name": "in2_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in2_dest_V", "role": "default" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data_V", "role": "" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_keep_V", "role": "" }} , 
 	{ "name": "out_r_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_strb_V", "role": "" }} , 
 	{ "name": "out_r_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_user_V", "role": "" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }} , 
 	{ "name": "out_r_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_id_V", "role": "" }} , 
 	{ "name": "out_r_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_dest_V", "role": "" }} , 
 	{ "name": "in1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1_dest_V", "role": "default" }} , 
 	{ "name": "in1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1_dest_V", "role": "default" }} , 
 	{ "name": "in2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2_dest_V", "role": "default" }} , 
 	{ "name": "in2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2_dest_V", "role": "default" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_dest_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_dest_V", "role": "Y" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "11", "19", "22", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "krnl_vadd",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4112", "EstimateLatencyMax" : "4112",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "krnl_vadd_entry42_U0"},
			{"ID" : "3", "Name" : "load_input20_U0"},
			{"ID" : "11", "Name" : "load_input_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "store_result_U0"}],
		"Port" : [
			{"Name" : "in1_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_data_V"}]},
			{"Name" : "in1_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_keep_V"}]},
			{"Name" : "in1_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_strb_V"}]},
			{"Name" : "in1_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_user_V"}]},
			{"Name" : "in1_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_last_V"}]},
			{"Name" : "in1_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_id_V"}]},
			{"Name" : "in1_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in_dest_V"}]},
			{"Name" : "in2_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_data_V"}]},
			{"Name" : "in2_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_keep_V"}]},
			{"Name" : "in2_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_strb_V"}]},
			{"Name" : "in2_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_user_V"}]},
			{"Name" : "in2_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_last_V"}]},
			{"Name" : "in2_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_id_V"}]},
			{"Name" : "in2_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in_dest_V"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_data_V"}]},
			{"Name" : "out_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_keep_V"}]},
			{"Name" : "out_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_strb_V"}]},
			{"Name" : "out_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_user_V"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_last_V"}]},
			{"Name" : "out_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_id_V"}]},
			{"Name" : "out_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_dest_V"}]},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_stream_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "load_input20_U0", "Port" : "in1_stream_V"},
					{"ID" : "19", "SubInstance" : "compute_add_U0", "Port" : "in1_stream_V"}]},
			{"Name" : "in2_stream_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "load_input_U0", "Port" : "in2_stream_V"},
					{"ID" : "19", "SubInstance" : "compute_add_U0", "Port" : "in2_stream_V"}]},
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "store_result_U0", "Port" : "out_stream_V"},
					{"ID" : "19", "SubInstance" : "compute_add_U0", "Port" : "out_stream_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_vadd_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.krnl_vadd_entry42_U0", "Parent" : "0",
		"CDFG" : "krnl_vadd_entry42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "a_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "size_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_input20_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "load_input20",
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
					{"Name" : "in1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in1_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "in1_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_user_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_last_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_id_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input20_U0.regslice_both_in_dest_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_input_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18"],
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
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "in2_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_data_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_keep_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_strb_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_user_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_last_V_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_id_V_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_input_U0.regslice_both_in_dest_V_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_add_U0", "Parent" : "0", "Child" : ["20", "21"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_computedEe_U",
		"Port" : [
			{"Name" : "a", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "a_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "size_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "size_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in1_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "in1_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "in2_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_add_U0.krnl_vadd_fadd_32bkb_U27", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_add_U0.krnl_vadd_fmul_32cud_U28", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_result_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27", "28", "29"],
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
		"StartSource" : "19",
		"StartFifo" : "start_for_store_reOg_U",
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
			{"Name" : "size", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "size_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_data_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_keep_V_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_strb_V_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_user_V_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_last_V_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_id_V_U", "Parent" : "22"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_result_U0.regslice_both_out_dest_V_U", "Parent" : "22"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_c_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_c9_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_c10_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in1_stream_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in2_stream_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.size_c11_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_computedEe_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_store_reOg_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_vadd {
		in1_data_V {Type I LastRead 1 FirstWrite -1}
		in1_keep_V {Type I LastRead 1 FirstWrite -1}
		in1_strb_V {Type I LastRead 1 FirstWrite -1}
		in1_user_V {Type I LastRead 1 FirstWrite -1}
		in1_last_V {Type I LastRead 1 FirstWrite -1}
		in1_id_V {Type I LastRead 1 FirstWrite -1}
		in1_dest_V {Type I LastRead 1 FirstWrite -1}
		in2_data_V {Type I LastRead 1 FirstWrite -1}
		in2_keep_V {Type I LastRead 1 FirstWrite -1}
		in2_strb_V {Type I LastRead 1 FirstWrite -1}
		in2_user_V {Type I LastRead 1 FirstWrite -1}
		in2_last_V {Type I LastRead 1 FirstWrite -1}
		in2_id_V {Type I LastRead 1 FirstWrite -1}
		in2_dest_V {Type I LastRead 1 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		out_data_V {Type O LastRead -1 FirstWrite 2}
		out_keep_V {Type O LastRead -1 FirstWrite 2}
		out_strb_V {Type O LastRead -1 FirstWrite 2}
		out_user_V {Type O LastRead -1 FirstWrite 2}
		out_last_V {Type O LastRead -1 FirstWrite 2}
		out_id_V {Type O LastRead -1 FirstWrite 2}
		out_dest_V {Type O LastRead -1 FirstWrite 2}
		size {Type I LastRead 0 FirstWrite -1}
		in1_stream_V {Type IO LastRead -1 FirstWrite -1}
		in2_stream_V {Type IO LastRead -1 FirstWrite -1}
		out_stream_V {Type IO LastRead -1 FirstWrite -1}}
	krnl_vadd_entry42 {
		a {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		a_out {Type O LastRead -1 FirstWrite 0}
		size_out {Type O LastRead -1 FirstWrite 0}
		size_out1 {Type O LastRead -1 FirstWrite 0}}
	load_input20 {
		in_data_V {Type I LastRead 1 FirstWrite -1}
		in_keep_V {Type I LastRead 1 FirstWrite -1}
		in_strb_V {Type I LastRead 1 FirstWrite -1}
		in_user_V {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_id_V {Type I LastRead 1 FirstWrite -1}
		in_dest_V {Type I LastRead 1 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		size_out {Type O LastRead -1 FirstWrite 0}
		in1_stream_V {Type O LastRead -1 FirstWrite 2}}
	load_input {
		in_data_V {Type I LastRead 1 FirstWrite -1}
		in_keep_V {Type I LastRead 1 FirstWrite -1}
		in_strb_V {Type I LastRead 1 FirstWrite -1}
		in_user_V {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_id_V {Type I LastRead 1 FirstWrite -1}
		in_dest_V {Type I LastRead 1 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		in2_stream_V {Type O LastRead -1 FirstWrite 2}}
	compute_add {
		a {Type I LastRead 0 FirstWrite -1}
		size {Type I LastRead 0 FirstWrite -1}
		size_out {Type O LastRead -1 FirstWrite 0}
		in1_stream_V {Type I LastRead 2 FirstWrite -1}
		in2_stream_V {Type I LastRead 2 FirstWrite -1}
		out_stream_V {Type O LastRead -1 FirstWrite 12}}
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
	{"Name" : "Latency", "Min" : "4112", "Max" : "4112"}
	, {"Name" : "Interval", "Min" : "4109", "Max" : "4109"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_data_V { axis {  { in1_TDATA in_data 0 32 } } }
	in1_keep_V { axis {  { in1_TKEEP in_data 0 4 } } }
	in1_strb_V { axis {  { in1_TSTRB in_data 0 4 } } }
	in1_user_V { axis {  { in1_TUSER in_data 0 4 } } }
	in1_last_V { axis {  { in1_TLAST in_data 0 1 } } }
	in1_id_V { axis {  { in1_TID in_data 0 5 } } }
	in1_dest_V { axis {  { in1_TDEST in_data 0 5 }  { in1_TVALID in_vld 0 1 }  { in1_TREADY in_acc 1 1 } } }
	in2_data_V { axis {  { in2_TDATA in_data 0 32 } } }
	in2_keep_V { axis {  { in2_TKEEP in_data 0 4 } } }
	in2_strb_V { axis {  { in2_TSTRB in_data 0 4 } } }
	in2_user_V { axis {  { in2_TUSER in_data 0 4 } } }
	in2_last_V { axis {  { in2_TLAST in_data 0 1 } } }
	in2_id_V { axis {  { in2_TID in_data 0 5 } } }
	in2_dest_V { axis {  { in2_TDEST in_data 0 5 }  { in2_TVALID in_vld 0 1 }  { in2_TREADY in_acc 1 1 } } }
	out_data_V { axis {  { out_r_TDATA out_data 1 32 } } }
	out_keep_V { axis {  { out_r_TKEEP out_data 1 4 } } }
	out_strb_V { axis {  { out_r_TSTRB out_data 1 4 } } }
	out_user_V { axis {  { out_r_TUSER out_data 1 4 } } }
	out_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_id_V { axis {  { out_r_TID out_data 1 5 } } }
	out_dest_V { axis {  { out_r_TDEST out_data 1 5 }  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
