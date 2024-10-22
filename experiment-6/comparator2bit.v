module comparator2bit(
    input wire [1:0] A,   // 2-bit input A
    input wire [1:0] B,   // 2-bit input B
    output reg A_eq_B,    // A equals B
    output reg A_lt_B,    // A is less than B
    output reg A_gt_B     // A is greater than B
);
    always @(*) begin
        // Default outputs
        A_eq_B = 0;
        A_lt_B = 0;
        A_gt_B = 0;

        if (A == B)
            A_eq_B = 1;
        else if (A < B)
            A_lt_B = 1;
        else
            A_gt_B = 1;
    end
endmodule

