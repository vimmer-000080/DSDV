module test_2bit_comparator;
    reg [1:0] A, B;        // 2-bit inputs
    wire A_eq_B, A_lt_B, A_gt_B;  // Outputs for comparison

    // Instantiate the comparator2bit module
    comparator2bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B),
        .A_gt_B(A_gt_B)
    );

    initial begin
        // Setup the dumpfile and dumpvars for waveform analysis
        $dumpfile("comparator2bit.vcd");   // Specifies the output file for simulation dump
        $dumpvars(0, test_2bit_comparator); // Dumps all variables in the testbench

        // Display header
        $display("A  | B  | A_eq_B | A_lt_B | A_gt_B |");
        $display("-----------------------------------");

        // Test case 1: A = 2'b01, B = 2'b10 (A < B)
        A = 2'b01; B = 2'b10; #10;
        $display("%b | %b |    %b    |    %b   |    %b   |", A, B, A_eq_B, A_lt_B, A_gt_B);

        // Test case 2: A = 2'b11, B = 2'b01 (A > B)
        A = 2'b11; B = 2'b01; #10;
        $display("%b | %b |    %b    |    %b   |    %b   |", A, B, A_eq_B, A_lt_B, A_gt_B);

        // End simulation
        $finish;
    end
endmodule

