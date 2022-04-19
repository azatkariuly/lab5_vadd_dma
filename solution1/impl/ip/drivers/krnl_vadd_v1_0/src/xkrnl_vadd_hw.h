// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of size
//        bit 31~0 - size[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKRNL_VADD_AXILITES_ADDR_A_DATA    0x10
#define XKRNL_VADD_AXILITES_BITS_A_DATA    32
#define XKRNL_VADD_AXILITES_ADDR_SIZE_DATA 0x18
#define XKRNL_VADD_AXILITES_BITS_SIZE_DATA 32

