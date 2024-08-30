module half_adder(
	               in_a,         //input
	               in_b,         //input 
               	       out_sum,      //output
	               out_carry     //output
                  );

//Declaring Ports

input  in_a;                  //input declaration
input  in_b;                  //input declaration
output out_sum;               //output declaration
output out_carry;             //output declaration
  
//Half adder's Sum and Carry Expressions

assign out_sum   =  in_a ^ in_b;       //xor operation
assign out_carry =  in_a & in_b;       //and operation
  
endmodule 
