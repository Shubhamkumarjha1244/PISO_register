`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 15:49:55
// Design Name: 
// Module Name: 16bit_PISO_register
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


module sixteen_bit_PISO_register(clk,inn_out,inn0,inn1,inn2,inn3,inn4,
inn5,inn6,inn7,inn8,inn9,inn10,inn11,inn12,inn13,inn14,inn15,out,mem);

input clk,inn_out; //inn_out 1 pe data store hoga & 0 pe out hoga

input inn0,inn1,inn2,inn3,inn4,inn5,inn6,inn7,inn8,inn9,inn10,inn11,inn12,inn13,inn14,inn15;
output reg out;

output reg[15:0] mem;

 always @(posedge clk)
    if(~inn_out)
        begin
        mem[0]<=inn0;mem[1]<=inn1;mem[2]<=inn2;mem[3]<=inn3;
        mem[4]<=inn4;mem[5]<=inn5;mem[6]<=inn6;mem[7]<=inn7;
        mem[8]<=inn8;mem[9]<=inn9;mem[10]<=inn10;mem[11]<=inn11;
        mem[12]<=inn12;mem[13]<=inn13;mem[14]<=inn14;mem[15]<=inn15;
        end
    else
        begin
        out<= mem[0];
        mem<= mem<<1;
        end
        
endmodule
