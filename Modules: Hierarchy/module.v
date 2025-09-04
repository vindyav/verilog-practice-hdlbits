module top_module ( input a, input b, output out );
    mod_a ins1(
        .in1(a),
        .in2(b),
        .out(out));
    // or mod_a inst2 (a, b, out);
endmodule
