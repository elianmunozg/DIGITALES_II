`include "cmos_cells_delay.v"
module lavadora
#(parameter Verificacion = 0, Secado = 1, Lavado = 2, Lavado_Pesado = 3)
(
input clk, rst, INTRO_MONEDA, FINALIZAR_PAGO,
output reg INSUFCIENTE, SECADO, LAVADO, LAVADO_PESADO, VERIFICACION
);

reg [3:0] counter, counter2;

reg [1:0] state, next_state;

always @(posedge clk ) begin
if (rst) begin
state <= Verificacion;
next_state <= Verificacion;
counter <= 0;
counter2 <= 4;
VERIFICACION <= 0;
SECADO <= 0;
LAVADO <= 0;
LAVADO_PESADO <= 0;
INSUFCIENTE <= 0;

end else begin
state <= next_state;
counter <= INTRO_MONEDA ? (counter + 1): counter;
if (state == Lavado || state == Secado || state == Lavado_Pesado) begin
            counter2 <= (counter2 == 0) ? 3 : (counter2 - 1);  // Control de la duración de los pulsos
        end

end

end

always @* begin
case (state)
Verificacion: begin
VERIFICACION =1;

if (FINALIZAR_PAGO) begin

    if (counter >= 2 && counter < 7 ) begin
    next_state = Lavado;

    end else if (counter >= 7 && counter < 9 ) begin
    next_state = Secado;

    end else if (counter >= 9) begin
    next_state = Lavado_Pesado;

    end else begin
        INSUFCIENTE = 1;
    end
end else begin

    next_state = Verificacion;
end
end
Lavado : begin
VERIFICACION = 0;
INSUFCIENTE = 0;
if (counter2 > 0) begin
    LAVADO = !LAVADO;
    next_state = Lavado;
end else begin
next_state = Verificacion;
end
end

Secado : begin
VERIFICACION = 0;
INSUFCIENTE = 0;
if (counter2 > 0) begin
                SECADO = ~SECADO;  // Generar el pulso (toggle)
                next_state = Secado;
            end else begin
                next_state = Verificacion;
            end
        end


Lavado_Pesado : begin
VERIFICACION = 0;
INSUFCIENTE = 0;
 if (counter2 > 0) begin
                LAVADO_PESADO = ~LAVADO_PESADO;  // Generar el pulso (toggle)
                next_state = Lavado_Pesado;
            end else begin
                next_state = Verificacion;
            end
        end


endcase

end
endmodule