module mux_2_1 (a, b, sel, out, outbar);

    input a, b, sel;
    output out, outbar;

    assign out = sel ? a : b;
    assign outbar = ~out;
    
endmodule