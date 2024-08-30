module full_adder_1bit(
                      in_a,        //input 
                      in_b,        //input 
                      in_cin,      //input 
                      out_sum,     //output 
                      out_carry    //output 
                      );

//Declaring Ports

input in_a ,in_b ,in_cin ;    
output out_sum ,out_carry ;

//Full adder's sum and carry expression
  assign out_sum   = in_a ^ in_b ^ in_cin;     //xor operation

  assign out_carry = (in_a & in_b) | (in_b & in_cin) | (in_cin & in_a);

endmodule
