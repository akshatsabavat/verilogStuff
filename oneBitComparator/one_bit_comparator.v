module one_bit_comparator (
    input a, b,
    output lesser_comparator, equals_comparator, greater_comparator 
);

assign lesser_comparator = (~a) & b;
assign greater_comparator = a & (~b);
assign equals_comparator = a ~^ b;

endmodule