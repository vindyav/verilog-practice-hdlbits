module top_module (
    input a,
    input b,
    input c,
    output w,
    output x,
    output y,
    output z  
);

    // Direct one-to-one connections between inputs and outputs
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;

    // Alternative approach:
    // The concatenation operator { } can be used to connect
    // multiple signals in a single statement, as long as
    // the bit widths match correctly.
    // Example: assign {w, x, y, z} = {a, b, b, c};

endmodule
