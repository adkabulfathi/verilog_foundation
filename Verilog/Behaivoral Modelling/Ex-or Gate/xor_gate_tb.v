module xor_gate_tb();

 reg a,b;
 wire y;

 xor_gate(a,b,y);

 initial begin
	 $monitor("a=%0d, b=%0d, y=%0d", a,b,y);
	 
	 a=0; b=0;
	 #2 a=0; b=1;
	 #2 a=1; b=0;
	 #2 a=1; b=1;
	 #2;
 end
 endmodule
