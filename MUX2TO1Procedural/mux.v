module mux (A,B,SEL,OUT,OUT_BAR);

    input A, B, SEL;
    output OUT, OUT_BAR;
    reg OUT, OUT_BAR;

    always @(A or B or SEL) begin

        if (SEL) OUT = A;
        else OUT = B;

        assign OUT_BAR = ~OUT;

    end
    
endmodule