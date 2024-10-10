// tb_and_gate.v
`timescale 1ns / 1ps

module tb_and_gate;

// Declare inputs and output
reg a;
reg b;
wire out;

// Instantiate the and_gate module
and_gate uut (
    .a(a),
    .b(b),
    .out(out)
);

initial begin
    // Initialize inputs
    a = 0;
    b = 0;
    #10;  // Wait for 10 time units
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    
    // Finish simulation
    $finish;
end

// Monitor the outputs
initial begin
    $monitor("Time = %0t, a = %b, b = %b, out = %b", $time, a, b, out);
end

initial begin
    // Set up VCD dumping
    $dumpfile("and_gate_tb.vcd");   // Name of the VCD file to be generated
    $dumpvars(0, tb_and_gate);       // Dump all signals in the testbench
end

endmodule
