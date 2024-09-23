
module calculadora (
    input clk,
    input rst,
    input [3:0] a,
    input [3:0] b,
    input [1:0] MODO,
    output reg [3:0] c,
    output reg rco
    
);



always @(posedge clk ) begin
    if (!rst) begin //rst==0 
        if(MODO == 2'b00) {rco, c} <= a + b;
        else if (MODO == 2'b01) {rco, c} <= a - b;
        else if (MODO == 2'b10) {rco, c} <= a * b;
        else if (MODO == 2'b11) {rco, c} <= a << 1;
    end 
    else begin
        c <= 0;
        rco <=0;
    end

end


    
endmodule