module binary_to_gray (
    input [2:0] binary,  // 3-bit Binary input
    output [2:0] gray    // 3-bit Gray code output
);

    // Conversion logic: Gray[i] = Binary[i] ^ Binary[i+1]
    assign gray[2] = binary[2];                // MSB stays the same
    assign gray[1] = binary[2] ^ binary[1];    // XOR for each subsequent bit
    assign gray[0] = binary[1] ^ binary[0];

endmodule

