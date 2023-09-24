`timescale 1ns/1ps
`include "one_bit_comparator.v"

module one_bit_comparator_tb();

    reg a, b;
    wire lesser_comparator, equals_comparator, greater_comparator;

    one_bit_comparator uut(a, b, lesser_comparator, equals_comparator, greater_comparator);

    initial begin
        $dumpfile("one_bit_comparator_tb.vcd");
        $dumpvars(0, one_bit_comparator_tb);

        // Test case 1: a < b
        a = 0;
        b = 1;
        #20;

        // Test case 2: a = b
        a = 1;
        b = 1;
        #20;

        // Test case 3: a > b
        a = 1;
        b = 0;
        #20;

        // Test case 4: a < b
        a = 0;
        b = 0;
        #20;

        $display("Test complete");
        $finish;
    end

endmodule
