module half_subtractor(
    input a,
    input b,
    output diff,
    output borrow
);

wire n1;

xor (diff, a, b);
not (n1, a);
and (borrow, n1, b);

endmodule

module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

wire d1;
wire b1;
wire b2;

// First Half Subtractor
half_subtractor HS1(
    .a(a),
    .b(b),
    .diff(d1),
    .borrow(b1)
);

// Second Half Subtractor
half_subtractor HS2(
    .a(d1),
    .b(bin),
    .diff(diff),
    .borrow(b2)
);

// Final Borrow
or (bout, b1, b2);

endmodule