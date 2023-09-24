`timescale 1ns/1ps
`include "full_adder.v"

module full_adder_tb ();

    reg a, b, cin;
    wire S, cout;

    full_adder full_adder_uut(a, b, cin, S, cout);

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

           a = 0;
        b = 0;
        cin = 0;
        #20;

        a = 0;
        b = 0;
        cin = 1;
        #20;

        a = 0;
        b = 1;
        cin = 1;
        #20;

        a = 1;
        b = 0;
        cin = 0;
        #20;

        a = 1;
        b = 0;
        cin = 1;
        #20;

        a = 1;
        b = 1;
        cin = 0;
        #20;

        a = 1;
        b = 1;
        cin = 1;
        #20;

        $display("Test complete");
        $finish;
    end

endmodule