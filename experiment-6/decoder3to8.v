module decoder3to8(
    input wire [2:0] sel,   // 3-bit select input
    output reg [7:0] Y      // 8-bit output
);
    always @(*) begin
        Y = 8'b00000000;    // Default all outputs to 0
        case(sel)
            3'b000: Y[0] = 1;
            3'b001: Y[1] = 1;
            3'b010: Y[2] = 1;
            3'b011: Y[3] = 1;
            3'b100: Y[4] = 1;
            3'b101: Y[5] = 1;
            3'b110: Y[6] = 1;
            3'b111: Y[7] = 1;
        endcase
    end
endmodule

