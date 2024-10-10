// and_gate.v
module and_gate(
    input wire a,       // First input
    input wire b,       // Second input
    output wire out     // Output
);

// AND gate logic
assign out = a & b;

endmodule
