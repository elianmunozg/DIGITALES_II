module slave (
    input CS_SLAVE1,
    input sclk,
    input [15:0] MOSI,
    output reg [15:0] MISO,
    input [15:0] counter,
    input [15:0] counter2
);

reg [15:0] MISO_SHIFT;

always @(posedge sclk ) begin
    if(CS_SLAVE1) begin
        MISO <= 16'bz;
        MISO_SHIFT<=16'bz;

    end else begin
        if (counter>0 || counter2 >16) begin
            MISO_SHIFT <= MISO_SHIFT << 1 ;
            MISO_SHIFT[0] <= MOSI;   
        end else if (counter2 >0) begin
            MISO <= MISO_SHIFT[counter2-1];
        end else begin
            MISO <= 16'bz;
            MISO_SHIFT<=16'bz;

        end
    end
end


endmodule 
module slave2 (
    input CS_SLAVE2,
    input sclk,
    input [15:0] MOSI,
    output reg [15:0] MISO,
    input [15:0] counter,
    input [15:0] counter2
);

reg [15:0] MISO_SHIFT;

always @(posedge sclk ) begin
    if(CS_SLAVE2) begin
        MISO <= 16'bz;
        MISO_SHIFT<=16'bz;

    end else begin
        if (counter>0 || counter2 >16) begin
            MISO_SHIFT <= MISO_SHIFT << 1 ;
            MISO_SHIFT[0] <= MOSI;   
        end else if (counter2 >0) begin
            MISO <= MISO_SHIFT[counter2-1];
        end else begin
            MISO <= 16'bz;
            MISO_SHIFT<=16'bz;


        end
    end
end


endmodule 