`timescale 1ns / 1ps

module tb_gray_to_binary;
    // Inputs
    reg [3:0] gray;
    
    // Outputs
    wire [3:0] binary;
    
    // Instantiate the Unit Under Test (UUT)
    gray_to_binary uut (
        .gray(gray),
        .binary(binary)
    );

    initial begin
        $dumpfile("gray_to_binary.vcd"); // Create VCD file
        $dumpvars(0, tb_gray_to_binary); // Dump all variables
        // Initialize the Gray code inputs and monitor outputs
        $monitor("Time = %0d, Gray = %b, Binary = %b", $time, gray, binary);

        // Test cases
        gray = 4'b0000; #10;
        gray = 4'b0001; #10;
        gray = 4'b0011; #10;
        gray = 4'b0010; #10;
        gray = 4'b0110; #10;
        gray = 4'b0111; #10;
        gray = 4'b0101; #10;
        gray = 4'b0100; #10;
        gray = 4'b1100; #10;
        gray = 4'b1101; #10;
        gray = 4'b1111; #10;
        gray = 4'b1110; #10;
        gray = 4'b1010; #10;
        gray = 4'b1011; #10;
        gray = 4'b1001; #10;
        gray = 4'b1000; #10;

        // End simulation
        $finish;
    end
endmodule

