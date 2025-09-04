module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin, c1, cout;
    
    add16 ins1 (a[15:0], b[15:0], cin, sum[15:0], c1);
    add16 ins2 (a[31:16], b[31:16], c1, sum[31:16], cout);

endmodule
