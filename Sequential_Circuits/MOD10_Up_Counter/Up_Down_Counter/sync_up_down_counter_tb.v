module sync_up_down_counter_tb;

reg clk;
reg reset;
reg up_down;

wire [3:0] count;

// Instantiate DUT
sync_up_down_counter dut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// Clock Generation
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test Stimulus
initial
begin

    $monitor("Time=%0t Reset=%b Up_Down=%b Count=%b",
             $time, reset, up_down, count);

    // Reset
    reset = 1;
    up_down = 1;
    #10;

    reset = 0;

    // Count Up
    up_down = 1;
    #50;

    // Count Down
    up_down = 0;
    #50;

    // Count Up Again
    up_down = 1;
    #40;

    $finish;

end

initial
begin
    $dumpfile("wave.vcd");
    $dumpvars(0, sync_up_down_counter_tb);


   
end
endmodule
