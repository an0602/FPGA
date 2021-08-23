`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: none
// Engineer: Ayaz Noor
// 
// Create Date: 08/22/2021 06:59:13 PM
// Design Name:
// Module Name: blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:  This code was taken from a tutorial:
// https://digilent.com/reference/vivado/getting_started/2018.2?_ga=2.80474452.2137337815.1629595070-528812340.1625333456
//////////////////////////////////////////////////////////////////////////////////


module blink(
    input clk,
    output led
    );
reg[24:0] count = 0;
assign led = count[24];
always @ (posedge(clk)) count <= count + 1;    
endmodule
