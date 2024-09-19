module calculadora (
    input clk,
    input rst,
    input [3:0] a,
    input [3:0] b,
    input [1:0] MODO,
    output reg [3:0] c
);

//como se va comportar la salida, respecto a mis entradas

always @(posedge clk ) begin
    if (!rst) begin //rst==0 
        if(MODO == 2'b00) c <= a-b;
        else if (MODO == 2'b01) c <= a+b;
        else if (MODO == 2'b10) c <= a*b;
        else if (MODO == 2'b11) c <= 0;
    end 
    else begin
        c <= 0;
    end
    $display("HOLA MUNDO c %b", c);
end


    
endmodule