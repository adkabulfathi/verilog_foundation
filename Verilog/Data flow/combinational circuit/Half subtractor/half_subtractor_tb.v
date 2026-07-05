module half_subtractor_tb;

reg a,b;
wire d,bo;

half_adder(a,b,d,bo);

initial begin

	$monitor("a=%0d, b=%0b, d=%0d, bo=%0d",a,b,d,bo);
	a=1'b0;b=1'b0;
	#2 a=1'b0;b=1'b1;
	#2 a=1'b1;b=1'b0;
	#2 a=1'b1;b=1'b1;


end
endmodule

