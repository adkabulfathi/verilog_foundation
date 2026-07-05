module encoder_4x2(
    input a0,
    input a1,
    input a2,
    input a3,
    output reg y1,
    output reg y0
);
always @(*) begin
assign y1 = a2 | a3;
assign y0 = a1 | a3;
end
endmodule
