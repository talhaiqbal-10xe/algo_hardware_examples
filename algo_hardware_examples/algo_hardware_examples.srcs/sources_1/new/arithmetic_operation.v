`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2023 05:36:51 PM
// Design Name: 
// Module Name: arithmetic_operation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module arithmetic_operation1 #(
    parameter WIDTH = 32
    )(
    input [WIDTH-1:0] W,
    input [WIDTH-1:0] X,
    input [WIDTH-1:0] Y,
    input [WIDTH-1:0] Z,
    output [((WIDTH+2)+(WIDTH)-1):0] F
    );
    assign F = W * (X + Y + Z);    
//    assign F = W*X + W*Y + W*Z;
endmodule

module arithmetic_operation2 #(
    parameter WIDTH = 32
    )(
    input [WIDTH-1:0] W,
    input [WIDTH-1:0] X,
    input [WIDTH-1:0] Y,
    input [WIDTH-1:0] Z,
    output [((WIDTH+2)+(WIDTH)-1):0] F
    );
//    assign F = W * (X + Y + Z);    
    assign F = W*X + W*Y + W*Z;
endmodule