`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2023 06:26:14 PM
// Design Name: 
// Module Name: blc
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


module blc_1 #(
    parameter BIT_WIDTH = 10
    )(
    input [BIT_WIDTH-1:0] x,
    input [BIT_WIDTH-1:0] saturation_offset,
    output [BIT_WIDTH*2-1:0] L
    );
    
    assign L = (x / (saturation_offset)) * (2**BIT_WIDTH - 1);
endmodule

module blc_2 #(
    parameter BIT_WIDTH = 10
    )(
    input [BIT_WIDTH-1:0] x,
    input [BIT_WIDTH-1:0] constant,
    output [BIT_WIDTH*2-1:0] L
    );
    
    assign L = x * constant;
endmodule