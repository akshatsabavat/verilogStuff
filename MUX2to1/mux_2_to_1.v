module mux_2_to_1 (A,B,SEL,OUT,OUT_BAR);

    input A, B, SEL;
    output OUT, OUT_BAR;

    assign OUT = SEL ? A : B;
    assign OUT_BAR = ~OUT;

endmodule