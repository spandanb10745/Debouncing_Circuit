`timescale 1ns / 1ps

module button_tb;

    reg clk, reset_n;
    reg button_in;
    wire [7:0] AN;
    wire [6:0] sseg;
    wire DP;

    // Instantiate unit under test (UUT)
    button_test_circuit uut (
        .clk(clk),
        .reset_n(reset_n),
        .button_in(button_in),
        .AN(AN),
        .sseg(sseg),
        .DP(DP)
    );

    // Generate stimuli
    localparam T = 10;
    always begin
        clk = 1'b0;
        #(T / 2);
        clk = 1'b1;
        #(T / 2);
    end

    localparam DELAY = 50_000_000;
    integer i;

    initial begin
        // Issue a quick reset for 2 ns
        reset_n = 1'b0;
        button_in = 1'b0;
        #2;
        reset_n = 1'b1;

        repeat(2) @(negedge clk);
        button_in = 1'b1;

        #(DELAY);
        button_in = 1'b0;

        #(DELAY);

        repeat(20) @(negedge clk);
        for (i = 0; i < 5; i = i + 1)
            #(DELAY / 40) button_in = ~button_in;

        #(DELAY / 2);
        for (i = 0; i < 5; i = i + 1)
            #(DELAY / 40) button_in = ~button_in;

        #(DELAY / 2);
        button_in = ~button_in;
        for (i = 0; i < 5; i = i + 1)
            #(DELAY / 40) button_in = ~button_in;

        #(DELAY / 2);
        button_in = ~button_in;

        #(DELAY / 2);
        for (i = 0; i < 6; i = i + 1)
            #(DELAY / 40) button_in = ~button_in;

        #(DELAY / 2) button_in = 1'b0;
        #(DELAY) $stop;
    end

endmodule
