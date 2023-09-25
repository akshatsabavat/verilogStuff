`timescale 1ns/1ps
`include "mux_2_1.v"

module mux_4_2 (data_in, sel, out);

    input [3:0] data_in;
    input [1:0] sel;
    output out;

    wire mux_first_out, mux_second_out, mux_4_2_out; // Define missing wires

    mux_2_1 mux_first (.a(data_in[0]), .b(data_in[1]), .sel(sel[0]), .out(mux_first_out));
    mux_2_1 mux_second (.a(data_in[2]), .b(data_in[3]), .sel(sel[0]), .out(mux_second_out));
    mux_2_1 mux_final (.a(mux_first_out), .b(mux_second_out), .sel(sel[1]), .out(mux_4_2_out));

    assign out = mux_4_2_out; // Connect the output of the final mux to out

endmodule
