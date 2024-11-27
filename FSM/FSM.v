module FSM
#(parameter = S0 = 0, S1 = 1, S2 = 2)
(
input clk, rst, in,
output out
);
        
reg [1:0] state, next_state;

always @(posedge clk) begin
if (rst) begin
state <= S0;
next_state <= S0;
end else begin
state <= next_state
end
end

always @* begin
case (state)
S0: begin
out = 0;
if(in)
next_state = S1;
else
next_state = S0;
end

S1: begin
out = 0;
next_state = in ? S2 : S0;
end

S2: begin
out = 1;
next_state = in ? S2 : S0;
end
default;
endcase

end




endmodule