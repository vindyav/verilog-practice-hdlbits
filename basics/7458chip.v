// Method 1: Direct assigns
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    assign p1y = (p1c&p1b&p1a)|(p1f&p1e&p1d);
        assign p2y = (p2a & p2b) | (p2c & p2d);
endmodule
/* Method 2: Using wires for intermediate signals
module top_module ( 
    input  p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input  p2a, p2b, p2c, p2d,
    output p2y 
);
    wire w1, w2, w3, w4;

    assign w1 = p1a & p1b & p1c;
    assign w2 = p1d & p1e & p1f;
    assign p1y = w1 | w2;

    assign w3 = p2a & p2b;
    assign w4 = p2c & p2d;
    assign p2y = w3 | w4;
endmodule
*/
