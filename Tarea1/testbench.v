`include "calculadora.v"
`include "test.v"


module tb;
wire clk;
wire rst;
wire [3:0] a;
wire [3:0] b;
wire [1:0] MODO;
wire [3:0] c;

calculadora DUT(
    .clk(clk),
    .rst(rst),
    .a(a[3:0]),
    .b(b[3:0]),
    .MODO(MODO[1:0]),
    .c(c[3:0])
);

test tester(
    .clk(clk),
    .rst(rst),
    .a(a[3:0]),
    .b(b[3:0]),
    .MODO(MODO[1:0]),
    .c(c[3:0])
);

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end

endmodule
