module half_adder_tb;

reg a,b;
wire s,c;

half_adder(a,b,s,c);

initial begin

	$monitor("a=%0d, b=%0b, s=%0d, c=%0d",a,b,c,s);
	a=1'b0;b=1'b0;
	#2 a=1'b0;b=1'b1;
	#2 a=1'b1;b=1'b0;
	#2 a=1'b1;b=1'b1;


end
endmodule

