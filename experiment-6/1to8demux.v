module demux1to8(
    input wire D,            // The input data
    input wire [2:0] sel,    // The select line
    output reg [7:0] Y       // The output line
);
    always @(*) begin
        Y = 8'b00000000;  // Default all outputs to 0
        case(sel)
            3'b000: Y[0] = D;
            3'b001: Y[1] = D;
            3'b010: Y[2] = D;
            3'b011: Y[3] = D;
            3'b100: Y[4] = D;
            3'b101: Y[5] = D;
            3'b110: Y[6] = D;
            3'b111: Y[7] = D;
        endcase
    end
endmodule

