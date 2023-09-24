`timescale 1ns/1ps
`include "mux.v"

module mux_tb();

    reg A;
    reg B;
    reg SEL;
    wire OUT;
    wire OUT_BAR;

    // Instantiate the mux_2_to_1 module and connect signals
    mux_2_to_1 mux_2_to_1_uut (
        A,
        B,
        SEL,
        OUT,
        OUT_BAR
    );

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);
        
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

        $display("Test completed");
        $finish;
    end
endmodule
