module full_subtractor(a,b,bin,bo,d);

input a,b,bin;
output bo,d;

assign d= a^b^bin;

assign bo=(a&b)|(~a&bin)|(~a&b);

endmodule
