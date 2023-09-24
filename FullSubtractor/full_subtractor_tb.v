`timescale 1ns/1ps
`include "full_subtractor.v"

module full_subtractor_tb();

    reg a;
    reg b;
    reg bin;
    wire D;
    wire bout;

    full_subtractor full_subtractor_uut(a, b, bin, D, bout);

    initial begin
        $dumpfile("full_subtractor_tb.vcd");
        $dumpvars(0, full_subtractor_tb);

        a = 0;
        b = 0;
        bin = 0;
        #20;

        a = 0;
        b = 0;
        bin = 1;
        #20;

        a = 0;
        b = 1;
        bin = 1;
        #20;

        a = 1;
        b = 0;
        bin = 0;
        #20;

        a = 1;
        b = 0;
        bin = 1;
        #20;

        a = 1;
        b = 1;
        bin = 0;
        #20;

        a = 1;
        b = 1;
        bin = 1;
        #20;

        $display("Test complete");
        $finish;
    end

endmodule
