
`timescale 1ns/1ps

module sync_up_counter_tb;

reg clk;
reg reset;
wire [3:0] count;

// Instantiate the Design Under Test
sync_up_counter dut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation: 10 ns period
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test stimulus
initial begin
    reset = 1;

    $monitor("Time=%0t Reset=%b Count=%b",
             $time, reset, count);

    #12;
    reset = 0;

    #150;
    $finish;
end

// Waveform generation
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, sync_up_counter_tb);
end

endmodule
