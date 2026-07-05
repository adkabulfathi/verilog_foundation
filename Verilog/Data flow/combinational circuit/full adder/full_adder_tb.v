module full_adder_tb;

reg a,b,cin;
wire s,cout;

full_adder dut(a,b,cin,s,cout);

initial begin

	$monitor("a=%0b, b=%0b, s=%0b, cin=%0b, cout=%0b",a,b,s,cin,cout);
	a=1'b0;b=1'b0;cin=1'b0;
	#2 a=1'b0;b=1'b0;cin=1'b1;
	#2 a=1'b0;b=1'b1;cin=1'b0;
	#2 a=1'b0;b=1'b1;cin=1'b1;


end
endmodule

