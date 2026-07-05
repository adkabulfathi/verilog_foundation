module full_subtractor_tb;

reg a,b,bin;
wire bo,d;

full_subtractor dut(a,b,bin,bo,d);

initial begin

	$monitor("a=%0b, b=%0b, bin=%0b, bo=%0b, d=%0b",a,b,bin,bo,d);
	a=1'b0;b=1'b0;bin=1'b0;
	#2 a=1'b0;b=1'b0;bin=1'b1;
	#2 a=1'b0;b=1'b1;bin=1'b0;
	#2 a=1'b0;b=1'b1;bin=1'b1;


end
endmodule

