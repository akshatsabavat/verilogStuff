module full_adder (
    input a, b, cin,
    output S, cout
);

    assign S = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);

endmodule