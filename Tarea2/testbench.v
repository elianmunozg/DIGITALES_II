`include "master.v"
`include "slaves.v"

module testbench (
    output reg clk,
    output reg reset,
    output reg [15:0] datain,
    input sclk,
    input CS_SLAVE1,
    input CS_SLAVE2,
    input [15:0] MISO,
    input [15:0] MOSI,
    input [15:0] counter,
    input [15:0] counter2
    );

master uut (
    .clk(clk),
    .reset(reset),
    .datain(datain),
    .CS_SLAVE1(CS_SLAVE1),
    .CS_SLAVE2(CS_SLAVE2),
    .sclk(sclk),
    .MOSI(MOSI [15:0]),
    .MISO(MISO [15:0]),
    .counter(counter [15:0]),
    .counter2(counter2 [15:0])
);

slave SLAVE1(
    .CS_SLAVE1(CS_SLAVE1),
    .sclk(sclk),
    .MOSI(MOSI [15:0]),
    .MISO(MISO [15:0]),
    .counter(counter [15:0]),
    .counter2(counter2 [15:0])

);

slave2 SLAVE2(
    .CS_SLAVE2(CS_SLAVE2),
    .sclk(sclk),
    .MOSI(MOSI [15:0]),
    .MISO(MISO [15:0]),
    .counter(counter [15:0]),
    .counter2(counter2 [15:0])

);

always #5 clk = !clk;

initial begin
    reset = 1;
    clk = 0;
    datain = 0;
    #10;
    reset = 0;
    #10;
    datain = 16'hA569;
    #2000;
    $finish;
end

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end

    
endmodule