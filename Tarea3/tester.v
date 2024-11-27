module TEST(
    input OINICIO, OCORTAR_PAN, OAGREGAR_LECHE, OAGREGAR_RESTO_DE_INGREDIENTES, 
                OREVOLVER, OHORNEAR, OBUDIN, OFRACASO,
    output reg clk, rst,
    output reg taza_leche, pan, leche_condensada,
    output reg barra_mantequilla, vainilla, taza_azucar, huevo
);

    // Generación del reloj
    always begin
        #5 clk = !clk;
    end

    // Vector de pruebas
    initial begin
        // Inicialización de señales
        clk = 0;
        rst = 1;
        taza_leche = 0;
        pan = 0;
        leche_condensada = 0;
        barra_mantequilla = 0;
        vainilla = 0;
        taza_azucar = 0;
        huevo = 0;

        // Caso 1: Receta exitosa
        #10 rst = 0;
        
        // Agregar pan
        pan = 1;
     
        
        // Agregar leche (1 taza)
        taza_leche = 1;
      
    
        
        // Agregar resto de ingredientes
        leche_condensada = 1;
        barra_mantequilla = 1;
        vainilla = 1;
        taza_azucar = 1;
        huevo = 1;
        
        
        
        // Desactivar señales
        #10 leche_condensada = 0;
        barra_mantequilla = 0;
        vainilla = 0;
        taza_azucar = 0;
        huevo = 0;
        taza_leche = 0;
        pan = 0;
        
        // Esperar proceso
        #200;

        // Caso 2: Fracaso por faltante de pan
        rst = 1;
        #10 rst = 0;
         // No pan
        #20 pan = 0;
     
        
        // Agregar leche (1 taza)
        taza_leche = 1;
      
    
        
        // Agregar resto de ingredientes
        leche_condensada = 1;
        barra_mantequilla = 1;
        vainilla = 1;
        taza_azucar = 1;
        huevo = 1;
        
        
        
        // Desactivar señales
        #10 leche_condensada = 0;
        barra_mantequilla = 0;
        vainilla = 0;
        taza_azucar = 0;
        huevo = 0;
        taza_leche = 0;
        pan = 0;
        
        // Esperar proceso
        #200
        $finish;
    end



endmodule