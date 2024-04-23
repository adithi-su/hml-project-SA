module systolic_array_pe #(
        parameter INST_WIDTH    = 16;

        parameter OPCODE_WIDTH  = 4;
        parameter BUF_ID_WIDTH  = 2;
        parameter MEM_LOC_WIDTH = 10;

        parameter OPCODE_ARRAY_INDEX    = BUF_ID_ARRAY_INDEX + OPCODE_WIDTH;
        parameter BUF_ID_ARRAY_INDEX    = MEM_LOC_ARRAY_INDEX + BUF_ID_WIDTH;
        parameter MEM_LOC_ARRAY_INDEX   = MEM_LOC_WIDTH;

        parameter opcode_LD             = 4'b0010,
        parameter opcode_ST             = 4'b0011,
        parameter opcode_GEMM           = 4'b0100,
        parameter opcode_DRAINSYS       = 4'b0101 
)(
        input                                   start_reading,
        input           [INST_WIDTH - 1: 0]     inst,
        output reg      [OPCODE_WIDTH - 1: 0]   opcode,
        output reg      [BUF_ID_WIDTH - 1: 0]   buf_id,
        output reg      [MEM_LOC_WIDTH - 1: 0]  mem_loc
);

always@(posedge clk and start_reading)
        begin
                opcode = inst[OPCODE_ARRAY_INDEX - 1    : BUF_ID_ARRAY_INDEX]
                buf_id = inst[BUF_ID_ARRAY_INDEX - 1    : MEM_LOC_ARRAY_INDEX]
                mem_loc = inst[MEM_LOC_ARRAY_INDEX - 1  : 0]

                if (opcode == opcode_LD)
                        begin
                        end
                else if (opcode == opcode_ST)
                        begin
                        end
                else if (opcode == opcode_GEMM)
                        begin
                        end
                else if (opcode == opcode_DRAINSYS)
                        begin
                        end
        end

endmodule