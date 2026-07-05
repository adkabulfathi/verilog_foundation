module full_adder(a,b,cin,cout,s);

input a,b,cin;

output reg cout,s;
always @(*)begin
s=a^b^cin;

cout=(a&b)|(b&cin)|(a&cin);
end
endmodule
