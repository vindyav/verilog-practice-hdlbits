module halfadder_tb;
reg in_a, in_b;
wire out_sum, out_carry;

  halfadder add1(out_sum, out_carry, in_a, in_b);
     
initial     
begin  
  $monitor("a = %b  b = %b, Sum = %b, carry = %b\n",in_a, in_b,out_sum, out_carry);
a = 0; b = 0;
#1
b = 1;
#1
a = 1;
#1
b = 0;
end
endmodule
