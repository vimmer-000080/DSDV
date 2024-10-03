`timescale 1ns / 1ps

module tb_excess3_to_binary;
    // Inputs
    reg [2:0] excess3;
    
    // Outputs
    wire [2:0] binary;
    
    // Instantiate the Unit Under Test (UUT)
    excess3_to_binary uut (
        .excess3(excess3),
        .binary(binary)
    );

    // Simulation control
    initial begin
        // Create VCD file for waveform dumping
        $dumpfile("excess3_to_binary.vcd");   // Create the VCD file
        $dumpvars(0, tb_excess3_to_binary);   // Dump all variables of the testbench

        // Display output on the console
        $monitor("Time = %0d, Excess-3 = %b, Binary = %b", $time, excess3, binary);
        
        // Test cases for valid Excess-3 inputs
        excess3 = 3'b011; #10;  // Excess-3 = 3 -> Binary = 0
        excess3 = 3'b100; #10;  // Excess-3 = 4 -> Binary = 1
        excess3 = 3'b101; #10;  // Excess-3 = 5 -> Binary = 2
        excess3 = 3'b110; #10;  // Excess-3 = 6 -> Binary = 3
        excess3 = 3'b111; #10;  // Excess-3 = 7 -> Binary = 4
        excess3 = 3'b000; #10;  // Excess-3 = 0 (invalid input)
        excess3 = 3'b001; #10;  // Excess-3 = 1 (invalid input)
        excess3 = 3'b010; #10;  // Excess-3 = 2 (invalid input)

        // End simulation
        $finish;
    end
endmodule

