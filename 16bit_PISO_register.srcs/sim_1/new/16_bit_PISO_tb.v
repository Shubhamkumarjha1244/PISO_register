`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 16:10:52
// Design Name: 
// Module Name: 16_bit_PISO_tb
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


module sixteen_bit_PISO_tb();
reg[15:0] inn;
reg clk=0;
reg in_out;
wire out;
sixteen_bit_PISO_register dut(.clk(clk),.inn_out(in_out),.inn0(inn[0]),.inn1(inn[1]),.inn2(inn[2]),.inn3(inn[3]),
.inn4(inn[4]),.inn5(inn[5]),.inn6(inn[6]),.inn7(inn[7]),.inn8(inn[8]),.inn9(inn[9]),.inn10(inn[10]),.inn11(inn[11]),
.inn12(inn[12]),.inn13(inn[13]),.inn14(inn[14]),.inn15(inn[15]),.out(out));

always
    #5 clk=~clk;


initial 
    begin
        in_out=0;
        inn=16'b1010101010101010;
        #7
        in_out=1;
    end
    
    
initial 
    begin
    #500 $finish;
    end
        
        
         
            
    




endmodule
