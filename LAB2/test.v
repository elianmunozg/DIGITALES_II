module TEST(
    input  SECADO, INSUFCIENTE, LAVADO, LAVADO_PESADO, VERIFICACION,
    output reg clk, rst, INTRO_MONEDA, FINALIZAR_PAGO
);

always  begin
#5 clk = !clk;
end

initial begin
FINALIZAR_PAGO = 0;
INTRO_MONEDA = 0;
clk = 0;
rst = 1;
#10;
rst  = 0;
       
INTRO_MONEDA = 1;
#10;
INTRO_MONEDA = 0;
FINALIZAR_PAGO = 1;
#10;
FINALIZAR_PAGO = 0;
#40;
     

rst = 1;
#10;
rst = 0;

       

INTRO_MONEDA = 1;
#10;
INTRO_MONEDA = 1;  
#10;
INTRO_MONEDA = 1;
#10;
INTRO_MONEDA = 0;
FINALIZAR_PAGO = 1;
#10;
FINALIZAR_PAGO = 0;
#40;

        

rst = 1;
#10;
rst = 0;

       
INTRO_MONEDA = 1;
#10;
repeat(7) begin
INTRO_MONEDA = 1;
#10;
end
INTRO_MONEDA = 0;
FINALIZAR_PAGO = 1;
#10;
FINALIZAR_PAGO = 0;
#40;

rst = 1;
#10;
rst = 0;

        
INTRO_MONEDA = 1;
#10;
repeat(10) begin
INTRO_MONEDA = 1;
#10;
end
INTRO_MONEDA = 0;
FINALIZAR_PAGO = 1;
#10;
FINALIZAR_PAGO = 0;
#40;

rst=1;
#10;
rst = 0;
#80;   
$finish;


end

endmodule