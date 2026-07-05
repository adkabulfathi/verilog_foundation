module full_subtractor(a,b,bin,bo,d);

input a,b,bin;
output reg bo,d;
always@(*) begin
	
d= a^b^bin;

bo=(a&b)|(~a&bin)|(~a&b);
end
endmodule
