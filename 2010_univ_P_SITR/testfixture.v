`timescale 1ns/100ps

`define tb1
`ifdef tb1
  `define INFILE_RB1_in "tb1_RB1_in.dat"
  `define INFILE_RB2 "tb1_RB2_goal.dat"
`endif
`ifdef tb2
  `define INFILE_RB1_in "tb2_RB1_in.dat"
  `define INFILE_RB2 "tb2_RB2_goal.dat"
`endif

`define CYCLE 100
`define SDFFILE_1 "S1_syn.sdf"
`define SDFFILE_2 "S2_syn.sdf"

`include "RB1.v"
`include "RB2.v"
//`include "S1.v"
//`include "S2.v"



module testfixture();

  reg clk,
      rst;

  wire S2_done;
      
  wire rb1_rw,               //memory enable signal
       rb2_rw;
       
  wire [4:0] rb1_a;
  wire [2:0] rb2_a;
  
  wire [7:0] rb1_d,
             rb1_q;
             
  wire [17:0] rb2_d,
              rb2_q;
       
  wire sen,
       sd;
       
  reg [17:0] RB2 [0:7];

  reg [20:0] s1_up;
  
  integer i,j,n,err_RB2,err_up,do_rb2,do_up;
  
  parameter duty = `CYCLE/2;     
       
 
  S1  s1(.clk(clk),
         .rst(rst),
         .RB1_RW(rb1_rw),
         .RB1_A(rb1_a),
         .RB1_D(rb1_d),
	 .RB1_Q(rb1_q),
	 .sen(sen),
         .sd(sd));
              
  S2  s2(.clk(clk),
         .rst(rst),
         .S2_done(S2_done),
         .RB2_RW(rb2_rw),
         .RB2_A(rb2_a),
         .RB2_D(rb2_d),
         .RB2_Q(rb2_q),
         .sen(sen),
         .sd(sd));

  RB1 m1(.CLK(clk),
         .CEN(1'b0),
         .WEN(rb1_rw),
         .A(rb1_a),
         .D(rb1_d),
         .Q(rb1_q));
         
         
  RB2 m2(.CLK(clk),
         .CEN(1'b0),
         .WEN(rb2_rw),
         .A(rb2_a),
         .D(rb2_d),
         .Q(rb2_q));
  
         
  initial 
  begin
    `ifdef FSDB
      $fsdbDumpfile("SI.fsdb");
      $fsdbDumpvars;
    `endif

    `ifdef SDF
      $sdf_annotate(`SDFFILE_1,s1);
      $sdf_annotate(`SDFFILE_2,s2);
    `endif

    $readmemh (`INFILE_RB1_in,m1.mem);
    $readmemh (`INFILE_RB2,RB2);
    
  end
  
  
  initial
  begin
    clk = 1'b0;
    rst = 1'b0;
    #45
      rst = 1'b1;
    #230
      rst = 1'b0;
    err_RB2 = 0;
    err_up = 0;
    n = 0;
    do_rb2 = 0;
    do_up = 0;
 
  end
  
  
  always #duty clk = ~clk;
  
  always@(posedge clk)
  begin
      if(n<8)
      begin
        if(sen === 1'b1)
        begin
          j = 0;
          
        end
        else
        begin
          s1_up[20-j] = sd;
          if(j === 20)
          begin
            #3
            if((RB2[n] !== s1_up[17:0]) || (n !== s1_up[20:18]))
            begin
              err_up = err_up + 1;
              $write("ERROR : The %3dth frame = %3b %b (expect = %3b %b)\n",n,s1_up[20:18],s1_up[17:0],n,RB2[n]);
            end
            n = n+1;
            do_up = 1;
          end
          j=j+1;
        end  
      end
  end  

  initial
  begin
    @(posedge S2_done)  // check RB2
    begin  
      for(j=0;j<8;j=j+1)
      begin
        if(m2.mem[j] !== RB2[j])
        begin
          err_RB2 = err_RB2 + 1;
          $write("ERROR : RB2[%2h] = %h (expect = %h)\n", j,m2.mem[j],RB2[j]);
        end
      end
      do_rb2 = 1;
    end
     
      if(err_RB2 ===0 && err_up === 0 && do_rb2 === 1 && do_up === 1)
      begin
        $display("\n");
        $display("\n");
        $display("        ****************************              ");
        $display("        **                        **        /|__/|");
        $display("        **  Congratulations !!    **      / O,O  |");
        $display("        **                        **    /_____   |");
        $display("        **  Simulation Complete!! **   /^ ^ ^ \\  |");
        $display("        **                        **  |^ ^ ^ ^ |w|");
        $display("        ****************************   \\m___m__|_|");
        $display("\n");
      end
      else if(err_up === 0 && do_up === 1)
      begin
        $write("------------------------------------------\n");
        $write("     S1 function check successfully!\n");
        $write("------------------------------------------\n\n");
      end

      if(do_rb2 === 1 && err_RB2 === 0)
      begin
        $write("------------------------------------------\n");
        $write("      RB2 check successfully!\n");
        $write("------------------------------------------\n\n");
      end
      else
      begin
        $write("------------------------------------------\n");
        if(do_rb2 === 1)
        begin
          $write("There are %4d errors in RB2!\n",err_RB2);
          $write("      RB2 check fail!\n");
        end
        else
          $write("----------No Finish Write RB2-------------\n");  
        $write("------------------------------------------\n\n");
      end  
      
      if(do_up === 1 && err_up === 0)
      begin
        $write("------------------------------------------\n");
        $write("      upload frame check successfully!\n");
        $write("------------------------------------------\n\n");
      end
      else
      begin
        $write("------------------------------------------\n");
        if(do_up === 1)
        begin
          $write("There are %4d errors in during upload!\n",err_up);
          $write("Upload frame check fail!\n");
        end
        else
          $write("----------No Execting upload--------------\n");  
        $write("------------------------------------------\n\n");
      end
      
      #55 $finish;
    end
  

endmodule
