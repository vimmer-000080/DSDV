`timescale 1ns / 1ps

module tb_binary_to_gray;
    // Inputs
    reg [2:0] binary;
    
    // Outputs
    wire [2:0] gray;
    
    // Instantiate the Unit Under Test (UUT)
    binary_to_gray uut (
        .binary(binary),
        .gray(gray)
    );

    // Simulation control
    initial begin
        // Create VCD file for waveform dumping
        $dumpfile("binary_to_gray.vcd");   // Create the VCD file
        $dumpvars(0, tb_binary_to_gray);   // Dump all variables of the testbench

        // Display output on the console
        $monitor("Time = %0d, Binary = %b, Gray = %b", $time, binary, gray);
        
        // Test cases
        binary = 3'b000; #10;
        binary = 3'b001; #10;
        binary = 3'b010; #10;
        binary = 3'b011; #10;
        binary = 3'b100; #10;
        binary = 3'b101; #10;
        binary = 3'b110; #10;
        binary = 3'b111; #10;

        // End simulation
        $finish;
    end
endmodule

