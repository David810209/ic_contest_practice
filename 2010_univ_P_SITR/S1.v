module S1(clk,
	  rst,
	  RB1_RW,
	  RB1_A,
	  RB1_D,
	  RB1_Q,
	  sen,
	  sd);

  input clk,
        rst,

  output RB1_RW;
  
  output [4:0] RB1_A;
  
  output [7:0] RB1_D;
  
  input [7:0] RB1_Q;
  
  output sen,
        sd;
  

endmodule
