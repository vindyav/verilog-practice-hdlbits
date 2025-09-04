module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1;
    wire [15:0] s1, s2;
    add16 inst1 ( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(c1));
    add16 inst2 ( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(s1), .cout());
    add16 inst3 ( .a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(s2), .cout());
    assign sum[31:16] = c1 ? s2 : s1;
   /*always @(*) 
        begin 
            case (c1)
                1'b0: sum[31:16] = s1;
                1'b1: sum[31:16] = s2;
            endcase
        end
        */
endmodule
