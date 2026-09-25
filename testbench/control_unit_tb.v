`timescale 1ns/1ps

module control_unit_tb;

    reg [6:0] opcode;

    wire RegWrite;
    wire ALUSrc;
    wire MemRead;
    wire MemWrite;
    wire MemToReg;
    wire Branch;
    wire [1:0] ALUOp;

    control_unit uut (
        .opcode(opcode),
        .RegWrite(RegWrite),
        .ALUSrc(ALUSrc),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .MemToReg(MemToReg),
        .Branch(Branch),
        .ALUOp(ALUOp)
    );

    initial begin

        // R-type
        opcode = 7'b0110011;
        #10;
        $display("R-type: RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b MemToReg=%b Branch=%b ALUOp=%b",
                 RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, ALUOp);

        // Load
        opcode = 7'b0000011;
        #10;
        $display("LOAD:   RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b MemToReg=%b Branch=%b ALUOp=%b",
                 RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, ALUOp);

        // Store
        opcode = 7'b0100011;
        #10;
        $display("STORE:  RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b MemToReg=%b Branch=%b ALUOp=%b",
                 RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, ALUOp);

        // Branch
        opcode = 7'b1100011;
        #10;
        $display("BRANCH: RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b MemToReg=%b Branch=%b ALUOp=%b",
                 RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, ALUOp);

        // I-type ALU
        opcode = 7'b0010011;
        #10;
        $display("I-type: RegWrite=%b ALUSrc=%b MemRead=%b MemWrite=%b MemToReg=%b Branch=%b ALUOp=%b",
                 RegWrite, ALUSrc, MemRead, MemWrite, MemToReg, Branch, ALUOp);

        $finish;

    end

endmodule
