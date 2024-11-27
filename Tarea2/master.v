//Master con Cpol=0
module master (
    input clk,
    input reset,
    input [15:0] datain,
    output reg CS_SLAVE1,
    output reg CS_SLAVE2,
    output sclk,
    output reg [15:0] MOSI,
    input [15:0] MISO,
    output [15:0] counter,
    output reg [15:0] counter2
);


reg [3:0] state;
reg [4:0] count;
reg spi_sclk;


always @(posedge clk) begin
    if(reset) begin
        MOSI <= 16'b0;
        count <= 5'd16;
        counter2 <= 15'd17 ;
        CS_SLAVE1 <= 1'b1;
        spi_sclk <= 1'b0; //porque nada puede empezar hasta el CS no baje
    end else begin
        case (state)
            0 : begin
                CS_SLAVE1 <= 1;
                CS_SLAVE2 <= 1;
                spi_sclk <= 0;
                state <= 1;
            end 
            1 :  begin
                spi_sclk <= 1;
                CS_SLAVE1 <= 0;
                if (count > 0) begin
                    MOSI <= datain[count-1];  
                    count <= count -1;
                    state <= 2;
                end else begin
                    
                    state <=2;
                end
            end
            2 : begin
                spi_sclk <= !spi_sclk;
                if(count > 0 && !CS_SLAVE1) begin
                    state <= 1;
                end else if(count > 0 && !CS_SLAVE2) begin
                    state <= 5;
                
                end else if (CS_SLAVE1)begin

                    state = 4;
                end else if (CS_SLAVE2) begin
                    state = 3;
                end
            end

        3: begin
            MOSI<=0;
            spi_sclk <=!spi_sclk;
            if (counter2>1) begin
                counter2<=counter2 - 1;
                state<=2;
                
            end else begin
                count <= 5'd16;
                counter2 <= 15'd18;
                

                state<=4;
            end
        end
        

        4 : begin
            MOSI<=0;
            spi_sclk <= !spi_sclk;
            CS_SLAVE1 <= 1;
            CS_SLAVE2 <= 0;
            if (counter2>0) begin
                counter2<=counter2 - 1;
                state<=2;
                
            end else begin
                count <= 5'd16;
                counter2 <= 15'd17;
                

                state<=0;
            end

        end

        5 :  begin
                spi_sclk <= !spi_sclk;
                CS_SLAVE1 <= 1;
                if (count > 0) begin
                    MOSI <= datain[count-1];  
                    count <= count -1;
                    state <= 2;
                end else begin
                    
                    state <=2;
                end
            end


            default: state <= 0;
        endcase
    end
end


assign counter = count;
assign sclk = spi_sclk;
    
endmodule