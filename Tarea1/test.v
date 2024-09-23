`timescale 1ps/1ps

module test (
    output reg clk,
    output reg rst,
    output reg [3:0] a,
    output reg [3:0] b,
    output reg [1:0] MODO,
    input [3:0] c,
    input rco
);

always begin
    #5 clk = !clk;
end

initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;

    MODO = 2'b00;
    a = 4'b0010;
    b = 4'b0011;
    #20;

    a = 4'b1111;
    b = 4'b0001;
    #20;

    MODO = 2'b01;
    a = 4'b0100;
    b = 4'b0010;
    #20;

    a = 4'b0010;
    b = 4'b0110;
    #20;

    MODO = 2'b10;
    a = 4'b0010;
    b = 4'b0010;
    #20;

    a = 4'b1110;
    b = 4'b0010;
    #20;

    MODO = 2'b11;
    a = 4'b0010;
    b = 0;
    #20;

    a = 4'b1100;
    #20;

    $finish;
end

endmodule
