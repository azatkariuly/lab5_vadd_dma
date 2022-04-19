#include "vadd_dma.h"
#define DATA_SIZE 4096

// TRIPCOUNT identifier
const int c_size = DATA_SIZE;


static void load_input(AXI_T* in, STREAM_FLOAT& inStream, int size) {
mem_rd:
    for (int i = 0; i < size; i++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
#pragma HLS PIPELINE II=1
        inStream << pop_stream<float>(in[i]);
    }
}

static void compute_add(STREAM_FLOAT& in1_stream,
                        STREAM_FLOAT& in2_stream,
						float a,
                        STREAM_FLOAT& out_stream,
                        int size) {
// The kernel is operating with vector of NUM_WORDS integers. The + operator performs
// an element-wise add, resulting in NUM_WORDS parallel additions.
execute:
    for (int i = 0; i < size; i++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
#pragma HLS PIPELINE II=1
        out_stream << (a*in1_stream.read() + in2_stream.read());
    }
}

static void store_result(AXI_T* out, STREAM_FLOAT& out_stream, int size) {
mem_wr:
    for (int i = 0; i < size; i++) {
#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
#pragma HLS PIPELINE II=1
        out[i] = push_stream<float>(out_stream.read(), i == size - 1);
    }
}

/*
    Vector Addition Kernel
    Arguments:
        in1  (input)  --> Input vector 1
        in2  (input)  --> Input vector 2
        out  (output) --> Output vector
        size (input)  --> Number of elements in vector
*/


/*
 *
 * ap_axiu<32, 1, 1, 1>
 *AXI_T.data : 32bit
 *AXI_T.
 *AXI_T.last
 *
 *
 */
void krnl_vadd(AXI_T* in1, AXI_T* in2, float a, AXI_T* out, int size) {
#pragma HLS INTERFACE axis port = in1 depth=10
#pragma HLS INTERFACE axis port = in2 depth=10
#pragma HLS INTERFACE axis port = out depth=10
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = a
#pragma HLS INTERFACE ap_ctrl_none port=return



    static STREAM_FLOAT in1_stream("input_stream_1");
    static STREAM_FLOAT in2_stream("input_stream_2");
    //static STREAM_FLOAT a_stream("input_stream_3");
    static STREAM_FLOAT out_stream("output_stream");

#pragma HLS dataflow
    // dataflow pragma instruct compiler to run following three APIs in parallel
    load_input(in1, in1_stream, size);
    load_input(in2, in2_stream, size);
    compute_add(in1_stream, in2_stream, a, out_stream, size);
    store_result(out, out_stream, size);
}
