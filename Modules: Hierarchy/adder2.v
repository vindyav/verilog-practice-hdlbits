module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1;
    
    add16 inst1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(c1));
    add16 inst2 (.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout());
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
    assign cout = (a&b) | (cin & (a^b));
    // assign cout = (a&b)|(b^cin)|(cin&a);
    assign sum = a^b^cin;

endmodule
