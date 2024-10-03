`timescale 1ns / 1ps

module tb_binary_to_excess3;
    // Inputs
    reg [3:0] binary;
    
    // Outputs
    wire [3:0] excess3;
    
    // Instantiate the Unit Under Test (UUT)
    binary_to_excess3 uut (
        .binary(binary),
        .excess3(excess3)
    );

    // Simulation control
    initial begin
        // Create VCD file for waveform dumping
        $dumpfile("binary_to_excess3.vcd");   // Create the VCD file
        $dumpvars(0, tb_binary_to_excess3);   // Dump all variables of the testbench

        // Display output on the console
        $monitor("Time = %0d, Binary = %b, Excess-3 = %b", $time, binary, excess3);
        
        // Test cases
        binary = 4'b0000; #10;  // 0  -> 3 (Excess-3)
        binary = 4'b0001; #10;  // 1  -> 4
        binary = 4'b0010; #10;  // 2  -> 5
        binary = 4'b0011; #10;  // 3  -> 6
        binary = 4'b0100; #10;  // 4  -> 7
        binary = 4'b0101; #10;  // 5  -> 8
        binary = 4'b0110; #10;  // 6  -> 9
        binary = 4'b0111; #10;  // 7  -> 10 (out of valid BCD range, but valid result)
        binary = 4'b1000; #10;  // 8  -> 11
        binary = 4'b1001; #10;  // 9  -> 12
        binary = 4'b1010; #10;  // 10 -> 13 (Invalid BCD but valid excess-3 output)
        binary = 4'b1011; #10;  // 11 -> 14
        binary = 4'b1100; #10;  // 12 -> 15
        binary = 4'b1101; #10;  // 13 -> 16
        binary = 4'b1110; #10;  // 14 -> 17
        binary = 4'b1111; #10;  // 15 -> 18

        // End simulation
        $finish;
    end
endmodule

