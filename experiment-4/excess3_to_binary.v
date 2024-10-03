module excess3_to_binary (
    input [2:0] excess3,  // 3-bit Excess-3 input
    output [2:0] binary   // 3-bit Binary output
);

    // Conversion logic: Binary = Excess-3 - 3
    assign binary = excess3 - 3'b011;  // Subtract 3 (011 in binary)

endmodule

