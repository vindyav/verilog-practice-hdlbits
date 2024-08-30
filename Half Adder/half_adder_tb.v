module halfadder_tb;
reg in_a, in_b;
wire out_sum, out_carry;


halfadder add1(
  .in_a(in_a),
  .in_b(in_b),
  .out_sum(out_sum),
  .out_carry(out_carry)
);

initial begin  
  $monitor("a = %b  b = %b, Sum = %b, carry = %b", in_a, in_b, out_sum, out_carry);
  
  in_a = 0; in_b = 0;
  #1
  in_b = 1;
  #1
  in_a = 1;
  #1
  in_b = 0;
end
endmodule
