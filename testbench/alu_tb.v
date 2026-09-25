`timescale 1ns/1ps

module alu_tb;

    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] alu_control;

    wire [31:0] result;
    wire zero;

    alu uut (
        .a(a),
        .b(b),
        .alu_control(alu_control),
        .result(result),
        .zero(zero)
    );

    initial begin

        // ADD
        a = 10;
        b = 5;
        alu_control = 4'b0000;
        #10;
        $display("ADD: %d + %d = %d", a, b, result);

        // SUB
        a = 10;
        b = 5;
        alu_control = 4'b0001;
        #10;
        $display("SUB: %d - %d = %d", a, b, result);

        // AND
        a = 10;
        b = 5;
        alu_control = 4'b0010;
        #10;
        $display("AND: %d & %d = %d", a, b, result);

        // OR
        a = 10;
        b = 5;
        alu_control = 4'b0011;
        #10;
        $display("OR:  %d | %d = %d", a, b, result);

        // XOR
        a = 10;
        b = 5;
        alu_control = 4'b0100;
        #10;
        $display("XOR: %d ^ %d = %d", a, b, result);

        // SLT
        a = 5;
        b = 10;
        alu_control = 4'b0101;
        #10;
        $display("SLT: %d < %d = %d", a, b, result);

        $finish;
    end

endmodule
