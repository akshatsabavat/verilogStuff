module full_subtractor (a, b, bin, D, bout);

    input a, b, bin;
    output D, bout;

    assign D = a ^ b ^ bin;
    assign bout = = (~a & b) | ((~a | b) & bin);

endmodule