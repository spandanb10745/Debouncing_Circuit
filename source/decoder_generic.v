
`timescale 1ns / 1ps

module decoder_generic
    #(parameter N = 3)(
    input [N - 1:0] w,
    input en,
    output reg [0: 2 ** N - 1] y
    );

    always @(w, en)
    begin
        y = 'b0; //default
        
        if (en)
            y[w] = 1'b1;
        else
            y = 'b0;
        
    end

endmodule
