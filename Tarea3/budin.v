module budin #(
    parameter   INICIO = 0, CORTAR_PAN = 1, AGREGAR_LECHE = 2, AGREGAR_RESTO_DE_INGREDIENTES = 3, 
                REVOLVER = 4, HORNEAR = 5, BUDIN = 6, FRACASO = 7
) (
    input clk, rst,
    input taza_leche, pan, leche_condensada,
    input barra_mantequilla,
    input vainilla,
    input taza_azucar,
    input huevo,
    output reg  OINICIO, OCORTAR_PAN, OAGREGAR_LECHE, OAGREGAR_RESTO_DE_INGREDIENTES, 
                OREVOLVER, OHORNEAR, OBUDIN, OFRACASO
);
reg [2:0] state, next_state;
reg [3:0] hornear_counter;
reg [2:0] counter;
reg ingredientes_completos;






always @(posedge clk) begin
    if (rst) begin
        state <= 0;
        next_state <= 0;
        counter <= 0;
        hornear_counter <= 0;
        // Reset todos los registros de ingredientes
       ingredientes_completos <= 0;
        OINICIO <= 0; OCORTAR_PAN <= 0; OAGREGAR_LECHE <= 0; 
        OAGREGAR_RESTO_DE_INGREDIENTES <= 0; OREVOLVER <= 0; 
        OHORNEAR <= 0; OBUDIN <= 0; OFRACASO <= 0;
    end else begin
        state <= next_state;
        
        // Contadores para timeout de cada estado
        case(state)
          
            AGREGAR_LECHE: begin
                if (counter < 2) begin
                    counter <= counter + 1;
                end 
            end
            HORNEAR: begin
                if (hornear_counter < 10)
                    hornear_counter <= hornear_counter + 1;
            end
        endcase
    end 
end

always @* begin
   if ( pan && taza_leche && leche_condensada && barra_mantequilla && vainilla &&  taza_azucar && huevo) begin
        ingredientes_completos = 1;  
   end else
    case (state)
        INICIO: begin
            OINICIO = 1;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = CORTAR_PAN;
        end
        
        CORTAR_PAN: begin
            OINICIO = 0;
            OCORTAR_PAN = 1;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = AGREGAR_LECHE;
            
        end
        
        AGREGAR_LECHE: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 1;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0; 
            if (counter >= 2) begin
                next_state = AGREGAR_RESTO_DE_INGREDIENTES;
            end else begin
                next_state = AGREGAR_LECHE;
            end
           
        end
        
        AGREGAR_RESTO_DE_INGREDIENTES: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 1;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = REVOLVER;
          
        end
        
        REVOLVER: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 1;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = HORNEAR;
        end
        HORNEAR: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 1;
            OBUDIN = 0;
            OFRACASO = 0;
            if (hornear_counter >= 10) begin
                next_state = BUDIN;
            end else begin
                next_state = HORNEAR;
            end
        end
        
        BUDIN: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            if (ingredientes_completos) begin
                OBUDIN = 1;
                next_state = BUDIN;
                
            end else begin
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = FRACASO;
            end
        end
        
        FRACASO: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 1;
            next_state = FRACASO;
        end
        
        default: begin
            OINICIO = 0;
            OCORTAR_PAN = 0;
            OAGREGAR_LECHE = 0;
            OAGREGAR_RESTO_DE_INGREDIENTES = 0;
            OREVOLVER = 0;
            OHORNEAR = 0;
            OBUDIN = 0;
            OFRACASO = 0;
            next_state = INICIO;
        end
    endcase
end
endmodule