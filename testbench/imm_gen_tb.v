`timescale 1ns/1ps

module imm_gen_tb;

    reg [31:0] instruction;
    wire [31:0] immediate;

    imm_gen uut (
        .instruction(instruction),
        .immediate(immediate)
    );

    initial begin

        // I-type: ADDI x1, x0, 10
        instruction = 32'b000000001010_00000_000_00001_0010011;
        #10;
        $display("I-type: immediate = %d", $signed(immediate));

        // S-type: SW x2, 20(x1)
        instruction = 32'b0000000_00010_00001_010_10100_0100011;
        #10;
        $display("S-type: immediate = %d", $signed(immediate));

        // B-type: BEQ x1, x2, 16
        instruction = 32'b0000000_00010_00001_000_1000_0_1100011;
        #10;
        $display("B-type: immediate = %d", $signed(immediate));

        $finish;

    end

endmodule
