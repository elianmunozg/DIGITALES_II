`include "synth.v"
`include "test.v"


module tb;
 
 lavadora uut (
        .clk(clk),
        .rst(rst),
        .INTRO_MONEDA(INTRO_MONEDA),
        .FINALIZAR_PAGO(FINALIZAR_PAGO),
        .INSUFCIENTE(INSUFICIENTE),
        .SECADO(SECADO),
        .LAVADO(LAVADO),
        .LAVADO_PESADO(LAVADO_PESADO),
        .VERIFICACION(VERIFICACION)
    );

TEST tester (

      .clk(clk),
        .rst(rst),
        .INTRO_MONEDA(INTRO_MONEDA),
        .FINALIZAR_PAGO(FINALIZAR_PAGO),
        .INSUFCIENTE(INSUFICIENTE),
        .SECADO(SECADO),
        .LAVADO(LAVADO),
        .LAVADO_PESADO(LAVADO_PESADO),
        .VERIFICACION(VERIFICACION)

);

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end

endmodule