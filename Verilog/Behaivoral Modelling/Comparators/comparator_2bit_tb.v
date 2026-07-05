module comparator_tb;

reg a, b;

wire a_gt_b;
wire a_eq_b;
wire a_lt_b;

comparator dut(
    .a(a),
    .b(b),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
);

initial begin

    $monitor(" a=%b b=%b | a_gt_b=%b a_eq_b=%b a_lt_b=%b",
              a, b, a_gt_b, a_eq_b, a_lt_b);

    // Test Case 1
    a = 0; b = 0;
    #10;

    // Test Case 2
    a = 0; b = 1;
    #10;

    // Test Case 3
    a = 1; b = 0;
    #10;

    // Test Case 4
    a = 1; b = 1;
    

    

end

endmodule


