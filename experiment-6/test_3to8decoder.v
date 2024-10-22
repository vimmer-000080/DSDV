module test_3to8decoder;
    reg [2:0] sel;          // 3-bit select input
    wire [7:0] Y;           // 8-bit output

    // Instantiate the decoder3to8 module
    decoder3to8 uut (
        .sel(sel),
        .Y(Y)
    );

    initial begin
        // Setup the dumpfile and dumpvars for waveform analysis
        $dumpfile("decoder3to8.vcd");   // Specifies the output file for simulation dump
        $dumpvars(0, test_3to8decoder); // Dumps all variables in the testbench

        // Display header
        $display("sel  |   Y     |");
        $display("----------------");

        // Test case 1: Select line is 000
        sel = 3'b000; #10;
        $display("%b   | %b |", sel, Y);

        // Test case 2: Select line is 011
        sel = 3'b011; #10;
        $display("%b   | %b |", sel, Y);

        // End simulation
        $finish;
    end
endmodule

