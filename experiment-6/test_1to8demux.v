module test_1to8demux;
    reg D;
    reg [2:0] sel;
    wire [7:0] Y;

    // Instantiate the demux1to8 module
    demux1to8 uut (
        .D(D),
        .sel(sel),
        .Y(Y)
    );

    initial begin
        // Display the header
        $display("D    |   sel  |    Y    |");
        $display("------------------------");

        // Test case 1
        D = 1'b1; sel = 3'b000; #10;
        $display("%b   |  %b   |  %b   |", D, sel, Y);

        // Test case 2
        D = 1'b1; sel = 3'b001; #10;
        $display("%b   |  %b   |  %b   |", D, sel, Y);

        // Additional test cases can be added here
    end
endmodule

