`timescale 1ns/1ps

module regfile_tb;

    reg clk;
    reg reset;

    reg [4:0] rs1;
    reg [4:0] rs2;
    reg [4:0] rd;

    reg [31:0] write_data;
    reg reg_write;

    wire [31:0] read_data1;
    wire [31:0] read_data2;

    regfile uut (
        .clk(clk),
        .reset(reset),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_data(write_data),
        .reg_write(reg_write),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 0;
        reset = 1;
        rs1 = 0;
        rs2 = 0;
        rd = 0;
        write_data = 0;
        reg_write = 0;

        #10;

        reset = 0;

        // Write 100 into x1
        rd = 5'd1;
        write_data = 32'd100;
        reg_write = 1;

        #10;

        // Write 200 into x2
        rd = 5'd2;
        write_data = 32'd200;

        #10;

        reg_write = 0;

        // Read x1 and x2
        rs1 = 5'd1;
        rs2 = 5'd2;

        #1;

        $display("x1 = %d", read_data1);
        $display("x2 = %d", read_data2);

        // Test x0
        rs1 = 5'd0;

        #1;

        $display("x0 = %d", read_data1);

        $finish;
    end

endmodule
