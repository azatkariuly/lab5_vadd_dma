// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkrnl_vadd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKrnl_vadd_CfgInitialize(XKrnl_vadd *InstancePtr, XKrnl_vadd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKrnl_vadd_Set_a(XKrnl_vadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Axilites_BaseAddress, XKRNL_VADD_AXILITES_ADDR_A_DATA, Data);
}

u32 XKrnl_vadd_Get_a(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Axilites_BaseAddress, XKRNL_VADD_AXILITES_ADDR_A_DATA);
    return Data;
}

void XKrnl_vadd_Set_size(XKrnl_vadd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKrnl_vadd_WriteReg(InstancePtr->Axilites_BaseAddress, XKRNL_VADD_AXILITES_ADDR_SIZE_DATA, Data);
}

u32 XKrnl_vadd_Get_size(XKrnl_vadd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKrnl_vadd_ReadReg(InstancePtr->Axilites_BaseAddress, XKRNL_VADD_AXILITES_ADDR_SIZE_DATA);
    return Data;
}

