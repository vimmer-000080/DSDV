module binary_to_excess3 (
    input [3:0] binary,  // 4-bit Binary input
    output [3:0] excess3 // 4-bit Excess-3 output
);

    // Conversion logic: Excess-3 = Binary + 3
    assign excess3 = binary + 4'b0011;  // Add 3 (0011 in binary)

endmodule

