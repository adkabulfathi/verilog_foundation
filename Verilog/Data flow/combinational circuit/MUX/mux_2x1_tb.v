module mux_2x1_tb();

reg a,b,s;
wire y;

mux_2x1(a,b,s,y);

initial begin
	$monitor("a=%0d, b=%0d,s=%0d, y=%0d", a,b,s,y);

	s=0; a=0; b=1;
	#2 s=1;a=1; b=0;
	
	

end
endmodule
