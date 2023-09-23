module mux_2_to_1_tb ();

    reg A, B, SEL;
    wire OUTPUT, OUTPUT_BAR;

    mux_2_to_1 mux_2_to_1_uut(A,B,SEL,OUTPUT,OUTPUT_BAR);

    initial begin
         // test case 1: SEL=0, A=1, B=0
    SEL = 0;
    A = 1;
    B = 0;
    #10;
    
    // test case 2: SEL=1, A=0, B=1
    SEL = 1;
    A = 0;
    B = 1;
    #10;
    
    // test case 3: SEL=0, A=0, B=1
    SEL = 0;
    A = 0;
    B = 1;
    #10;
    
    // test case 4: SEL=1, A=1, B=0
    SEL = 1;
    A = 1;
    B = 0;
    #10;
    end


endmodule