module gray_to_binary (
    input [3:0] gray,   // 4-bit Gray code input
    output [3:0] binary // 4-bit Binary output
);

    // Conversion logic
    assign binary[3] = gray[3];               // MSB remains the same
    assign binary[2] = gray[3] ^ gray[2];     // XOR for each subsequent bit
    assign binary[1] = binary[2] ^ gray[1];
    assign binary[0] = binary[1] ^ gray[0];

endmodule

