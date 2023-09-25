`timescale 1ns/1ps
`include "mux_2_1.v"

module mux_4_2 (data_in, sel, y);

    input [3:0] data_in;
    input [1:0] sel;
    output reg y;

    mux_2_1 mux_first(.a(data_in[0]), .b(data_in[1]), .sel(sel[0]), .y(mux_first_out));
    mux_2_1 mux_second(.a(data_in[2]), .b(data_in[3]), .sel(sel[0]), .y(mux_second_out));
    mux_2_1 mux_first(.a(mux_first_out), .b(mux_second_out), .sel(sel[1]), .y(mux_4_2_out));


endmodule