`timescale 1ns/1ps
`include "mux_4_2.v" // Include the 4:2 mux module

module mux_4_2_tb();

    reg [3:0] data_in;
    reg [1:0] sel;
    wire y;

    mux_4_2 uut (
        .data_in(data_in),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("mux_4_2_tb.vcd");
        $dumpvars(0, mux_4_2_tb);

        // Loop through all combinations of data_in and sel
        for (data_in = 4'b0000; data_in <= 4'b1111; data_in = data_in + 1'b1) begin
            for (sel = 2'b00; sel <= 2'b11; sel = sel + 1'b1) begin
                #20; // Delay for waveform observation
            end
        end

        $display("Test complete");
        $finish;
    end

endmodule
