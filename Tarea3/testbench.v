`include "budin.v"
`include "tester.v"

module tb;

    budin dut(
        .clk(clk),
        .rst(rst),
        .taza_leche(taza_leche),
        .pan(pan),
        .leche_condensada(leche_condensada),
        .barra_mantequilla(barra_mantequilla),
        .vainilla(vainilla),
        .taza_azucar(taza_azucar),
        .huevo(huevo),
        .OINICIO(OINICIO),
        .OCORTAR_PAN(OORTAR_PAN),
        .OAGREGAR_LECHE(OAGREGAR_LECHE),
        .OAGREGAR_RESTO_DE_INGREDIENTES(OAGREGAR_RESTO_DE_INGREDIENTES),
        .OREVOLVER(OREVOLVER),
        .OHORNEAR(OHORNEAR),
        .OBUDIN(OBUDIN),
        .OFRACASO(OFRACASO)
    );

    TEST tester(
        .clk(clk),
        .rst(rst),
        .taza_leche(taza_leche),
        .pan(pan),
        .leche_condensada(leche_condensada),
        .barra_mantequilla(barra_mantequilla),
        .vainilla(vainilla),
        .taza_azucar(taza_azucar),
        .huevo(huevo),
        .OINICIO(OINICIO),
        .OCORTAR_PAN(OCORTAR_PAN),
        .OAGREGAR_LECHE(OAGREGAR_LECHE),
        .OAGREGAR_RESTO_DE_INGREDIENTES(OAGREGAR_RESTO_DE_INGREDIENTES),
        .OREVOLVER(OREVOLVER),
        .OHORNEAR(OHORNEAR),
        .OBUDIN(OBUDIN),
        .OFRACASO(OFRACASO)
    );

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars;
    end

endmodule