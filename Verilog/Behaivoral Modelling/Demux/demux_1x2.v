module demux_1x2(
    input  din,
    input  sel,
    output reg y0,
    output reg y1
);
always @(*)begin
y0 = (~sel) & din;
y1 = sel & din;
end

endmodule
