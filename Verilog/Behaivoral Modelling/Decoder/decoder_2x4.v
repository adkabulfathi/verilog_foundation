module decoder_2x4(
    input a,
    input b,
    input en,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);
always @(*) begin
y0 = en & (~a) & (~b);
y1 = en & (~a) & b;
y2 = en & a & (~b);
y3 = en & a & b;
end
endmodule
