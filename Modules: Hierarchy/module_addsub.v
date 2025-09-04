module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire c1;
    assign b[15:0] = b ^ sub;
    add16( .a(a[15:0]), .b(b[15:0]), .cin(sub), .sum(sum[15:0]), .cout(c1));
    add16( .a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout());
endmodule
