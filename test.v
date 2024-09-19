`timescale 1ps/1ps

module test (
    output reg clk,
    output reg rst,
    output reg [3:0] a,
    output reg [3:0] b,
    output reg [1:0] MODO,
    input [3:0] c
);


always begin
    #5 clk = !clk;
end

initial begin
    clk = 0;
    rst = 1; //yo quiero comenzar reseteando mi calculadora
    #10;
    rst = 0;
    MODO = 2'b01;
    a = 1; // a = 4'b1111
    b = 1; // b = 4'b1111
    #30;
    $finish;
end

    
endmodule