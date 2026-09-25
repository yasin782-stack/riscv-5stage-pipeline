`timescale 1ns/1ps

module control_unit(
    input  [6:0] opcode,

    output reg       RegWrite,
    output reg       ALUSrc,
    output reg       MemRead,
    output reg       MemWrite,
    output reg       MemToReg,
    output reg       Branch,
    output reg [1:0] ALUOp
);

always @(*) begin

    // Default values
    RegWrite = 0;
    ALUSrc   = 0;
    MemRead  = 0;
    MemWrite = 0;
    MemToReg = 0;
    Branch   = 0;
    ALUOp    = 2'b00;

    case (opcode)

        // R-type
        7'b0110011: begin
            RegWrite = 1;
            ALUSrc   = 0;
            ALUOp    = 2'b10;
        end

        // I-type Load
        7'b0000011: begin
            RegWrite = 1;
            ALUSrc   = 1;
            MemRead  = 1;
            MemToReg = 1;
            ALUOp    = 2'b00;
        end

        // S-type Store
        7'b0100011: begin
            ALUSrc   = 1;
            MemWrite = 1;
            ALUOp    = 2'b00;
        end

        // B-type Branch
        7'b1100011: begin
            Branch = 1;
            ALUOp  = 2'b01;
        end

        // I-type ALU
        7'b0010011: begin
            RegWrite = 1;
            ALUSrc   = 1;
            ALUOp    = 2'b11;
        end

        default: begin
            // Keep default control signals
        end

    endcase
end

endmodule
