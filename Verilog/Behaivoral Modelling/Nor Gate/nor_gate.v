module nor_gate(a,b,y);

input a,b;
output reg y;

always @(*)begin
assign y=~(a|b);
end
endmodule
