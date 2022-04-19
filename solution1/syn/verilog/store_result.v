// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module store_result (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST,
        out_r_TID,
        out_r_TDEST,
        size_dout,
        size_empty_n,
        size_read,
        out_stream_V_dout,
        out_stream_V_empty_n,
        out_stream_V_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output  [3:0] out_r_TKEEP;
output  [3:0] out_r_TSTRB;
output  [3:0] out_r_TUSER;
output  [0:0] out_r_TLAST;
output  [4:0] out_r_TID;
output  [4:0] out_r_TDEST;
input  [31:0] size_dout;
input   size_empty_n;
output   size_read;
input  [31:0] out_stream_V_dout;
input   out_stream_V_empty_n;
output   out_stream_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg size_read;
reg out_stream_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    out_r_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln34_reg_188;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln34_reg_188_pp0_iter1_reg;
reg    size_blk_n;
reg    out_stream_V_blk_n;
reg   [30:0] i_0_i_i_reg_136;
reg   [31:0] size_read_reg_178;
reg    ap_block_state1;
wire   [31:0] add_ln37_fu_147_p2;
reg   [31:0] add_ln37_reg_183;
wire   [0:0] icmp_ln34_fu_157_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] i_fu_162_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln37_fu_168_p2;
reg   [0:0] icmp_ln37_reg_197;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] zext_ln34_fu_153_p1;
wire    ap_CS_fsm_state5;
wire    regslice_both_out_data_V_U_apdone_blk;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [31:0] out_r_TDATA_int;
reg    out_r_TVALID_int;
wire    out_r_TREADY_int;
wire    regslice_both_out_data_V_U_vld_out;
wire    regslice_both_out_keep_V_U_apdone_blk;
wire    regslice_both_out_keep_V_U_ack_in_dummy;
wire    regslice_both_out_keep_V_U_vld_out;
wire    regslice_both_out_strb_V_U_apdone_blk;
wire    regslice_both_out_strb_V_U_ack_in_dummy;
wire    regslice_both_out_strb_V_U_vld_out;
wire    regslice_both_out_user_V_U_apdone_blk;
wire    regslice_both_out_user_V_U_ack_in_dummy;
wire    regslice_both_out_user_V_U_vld_out;
wire    regslice_both_out_last_V_U_apdone_blk;
wire    regslice_both_out_last_V_U_ack_in_dummy;
wire    regslice_both_out_last_V_U_vld_out;
wire    regslice_both_out_id_V_U_apdone_blk;
wire    regslice_both_out_id_V_U_ack_in_dummy;
wire    regslice_both_out_id_V_U_vld_out;
wire    regslice_both_out_dest_V_U_apdone_blk;
wire    regslice_both_out_dest_V_U_ack_in_dummy;
wire    regslice_both_out_dest_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

regslice_both #(
    .DataWidth( 32 ))
regslice_both_out_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(out_r_TDATA_int),
    .vld_in(out_r_TVALID_int),
    .ack_in(out_r_TREADY_int),
    .data_out(out_r_TDATA),
    .vld_out(regslice_both_out_data_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd15),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_keep_V_U_ack_in_dummy),
    .data_out(out_r_TKEEP),
    .vld_out(regslice_both_out_keep_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd15),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_strb_V_U_ack_in_dummy),
    .data_out(out_r_TSTRB),
    .vld_out(regslice_both_out_strb_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(4'd0),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_user_V_U_ack_in_dummy),
    .data_out(out_r_TUSER),
    .vld_out(regslice_both_out_user_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(icmp_ln37_reg_197),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_last_V_U_ack_in_dummy),
    .data_out(out_r_TLAST),
    .vld_out(regslice_both_out_last_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 5 ))
regslice_both_out_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(5'd0),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_id_V_U_ack_in_dummy),
    .data_out(out_r_TID),
    .vld_out(regslice_both_out_id_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 5 ))
regslice_both_out_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(5'd0),
    .vld_in(out_r_TVALID_int),
    .ack_in(regslice_both_out_dest_V_U_ack_in_dummy),
    .data_out(out_r_TDEST),
    .vld_out(regslice_both_out_dest_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_out_data_V_U_apdone_blk == 1'b0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln34_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_i_i_reg_136 <= i_fu_162_p2;
    end else if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_reg_136 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln37_reg_183 <= add_ln37_fu_147_p2;
        size_read_reg_178 <= size_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln34_reg_188 <= icmp_ln34_fu_157_p2;
        icmp_ln34_reg_188_pp0_iter1_reg <= icmp_ln34_reg_188;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln34_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln37_reg_197 <= icmp_ln37_fu_168_p2;
    end
end

always @ (*) begin
    if ((icmp_ln34_fu_157_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_out_data_V_U_apdone_blk == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_out_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln34_reg_188_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln34_reg_188 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_r_TDATA_blk_n = out_r_TREADY_int;
    end else begin
        out_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln34_reg_188 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_r_TVALID_int = 1'b1;
    end else begin
        out_r_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln34_reg_188 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_blk_n = out_stream_V_empty_n;
    end else begin
        out_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln34_reg_188 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_stream_V_read = 1'b1;
    end else begin
        out_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_blk_n = size_empty_n;
    end else begin
        size_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        size_read = 1'b1;
    end else begin
        size_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln34_fu_157_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((icmp_ln34_fu_157_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_out_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln37_fu_147_p2 = ($signed(size_dout) + $signed(32'd4294967295));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln34_reg_188 == 1'd1) & (out_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln34_reg_188 == 1'd1) & (out_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln34_reg_188 == 1'd1) & (out_stream_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (size_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((icmp_ln34_reg_188 == 1'd1) & (out_r_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln34_reg_188 == 1'd1) & (out_stream_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((icmp_ln34_reg_188_pp0_iter1_reg == 1'd1) & (out_r_TREADY_int == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_162_p2 = (i_0_i_i_reg_136 + 31'd1);

assign icmp_ln34_fu_157_p2 = (($signed(zext_ln34_fu_153_p1) < $signed(size_read_reg_178)) ? 1'b1 : 1'b0);

assign icmp_ln37_fu_168_p2 = ((zext_ln34_fu_153_p1 == add_ln37_reg_183) ? 1'b1 : 1'b0);

assign out_r_TDATA_int = out_stream_V_dout;

assign out_r_TVALID = regslice_both_out_data_V_U_vld_out;

assign zext_ln34_fu_153_p1 = i_0_i_i_reg_136;

endmodule //store_result
