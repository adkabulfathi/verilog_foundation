module and_gate(a,b,y);
//input and output declaration
input reg a,b;
output reg y;

always @(*) begin
assign y=a&b;
end
endmodule
