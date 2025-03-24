
`timescale 1ns/10ps

module  CONV(
	input			    clk,
	input			    reset,
	output	reg		    busy,	
	input			    ready,	
			
	output	reg [11:0]	iaddr,
	input signed [19:0]      idata,	
	
	output	 reg	    cwr,
	output	 reg [11:0]	caddr_wr,
	output	 reg [19:0]	cdata_wr,
	
	output	reg 	    crd,
	output reg [11:0]   caddr_rd,
	input	signed [19:0]	    cdata_rd,
	
	output	reg [2:0]   csel
	);

// FSM
reg [2:0] S, S_next;
localparam  S_IDLE = 0, S_CONV = 1, S_RESULT_L0 = 2, S_DELAY = 3, S_POOL = 4, S_RESULT_L1 = 5, S_FINISH = 6;

// conv layer
reg [5:0] L0_i, L0_j;
reg [3:0] conv_counter;
wire signed [19:0] conv_result;
wire signed [39:0] conv_temp_result;
reg  signed [39:0] temp_sum;
reg  signed [19:0] conv_image;
reg signed [19:0] WEIGHT;
wire signed [39:0] bias;
assign bias = 40'h0013100000;

//pooling layer 
reg [5:0] L1_i, L1_j;
reg signed [19:0] max_val;
reg [2:0] pooling_counter;

//==============
//  FSM
//==============
always @(posedge clk)
begin
	if(reset)S <= S_IDLE;
	else S <= S_next;
end

always @(*)
begin
	S_next = S;
	case(S)
		S_IDLE: S_next = S_CONV;
		S_CONV: S_next = (conv_counter == 10) ? S_RESULT_L0 : S_CONV;
		S_RESULT_L0: S_next = (L0_i == 0 && L0_j == 0) ? S_DELAY : S_CONV;
		S_DELAY: S_next = S_POOL;
		S_POOL: S_next = (pooling_counter == 5) ? S_RESULT_L1 : S_POOL;
		S_RESULT_L1: S_next = (L1_i == 62 && L1_j == 62) ? S_FINISH : S_DELAY;
		S_FINISH: S_next = S_FINISH;
		default: S_next = S_IDLE;
	endcase
end

//==============
//  busy 
//==============
always@( posedge clk or posedge reset )  begin
	if( reset ) busy <= 1'd0;
	else if( ready ) busy <= 1'd1; 
	else if( S == S_FINISH ) busy <= 1'd0;
end

////////////////////////////////////////////////////////////////
//  conv layer 
////////////////////////////////////////////////////////////////

//==============
//  conv counter 
//==============
always @(posedge clk)
begin
	if(reset) conv_counter <= 0;
	else if(S_next == S_CONV)  conv_counter <= conv_counter + 1;
	else if(S_next == S_RESULT_L0) conv_counter <= 0;
end

//==============
//  L0_i, L0_j
//==============
always@(posedge clk) begin
	if( reset ) begin
		L0_i <= 6'd0; L0_j <= 6'd0;
	end
	else if( S_next == S_RESULT_L0 ) begin
		L0_j <= L0_j + 1; 
		L0_i <= (L0_j== 63)? L0_i + 1 : L0_i;
	end
end

//==============
//  iaddr
//==============
always @(posedge clk) begin
	if(reset) iaddr <= 0;
	else if(S_next == S_CONV) begin
		case(conv_counter) 
		0: iaddr <= {L0_i - 6'd1, L0_j - 6'd1};
		1: iaddr <= {L0_i - 6'd1, L0_j};
		2: iaddr <= {L0_i - 6'd1, L0_j + 6'd1};
		3: iaddr <= {L0_i, L0_j - 6'd1};
		4: iaddr <= {L0_i, L0_j};
		5: iaddr <= {L0_i, L0_j + 6'd1};
		6: iaddr <= {L0_i + 6'd1, L0_j - 6'd1};
		7: iaddr <= {L0_i + 6'd1, L0_j};
		8: iaddr <= {L0_i + 6'd1, L0_j + 6'd1};
		endcase
	end
end

//============== 
//  conv image 
//==============
always @(*)
begin
	case(conv_counter) 
		1: conv_image <= (L0_i == 0 || L0_j == 0) ? 20'd0 : idata;
		2: conv_image <= (L0_i == 0) ? 20'd0 : idata;
		3: conv_image <= (L0_i == 0 || L0_j == 63) ? 20'd0 : idata;
		4: conv_image <= (L0_j == 0) ? 20'd0 : idata;
		5: conv_image <= idata;
		6: conv_image <= (L0_j == 63) ? 20'd0 : idata;
		7: conv_image <= (L0_i == 63 || L0_j == 0) ? 20'd0 : idata;
		8: conv_image <= (L0_i == 63) ? 20'd0 : idata;
		9: conv_image <= (L0_i == 63 || L0_j == 63) ? 20'd0 : idata;
		default: conv_image <= 20'd0;
	endcase
end

//==============
//  weight 
//==============

always @(posedge clk) begin
	case( conv_counter )
		0: WEIGHT = 20'h0A89E;
		1: WEIGHT = 20'h092D5;
		2: WEIGHT = 20'h06D43;
		3: WEIGHT = 20'h01004;
		4: WEIGHT = 20'hF8F71;
		5: WEIGHT = 20'hF6E54;
		6: WEIGHT = 20'hFA6D7;
		7: WEIGHT = 20'hFC834;
		8: WEIGHT = 20'hFAC19;
	default: WEIGHT = 20'd0;
	endcase
end

//==============
//  temp_sum 
//==============
assign conv_temp_result = conv_image * WEIGHT;

always @(posedge clk ) begin
	if(reset) temp_sum <= 0;
	else begin
		if( conv_counter == 0 ) temp_sum <= 0;
		else if( conv_counter == 10 ) temp_sum <= temp_sum + bias;
		else temp_sum <= temp_sum + conv_temp_result;
	end
end
assign conv_result = ( temp_sum[15] )? {temp_sum[35:16]} + 20'd1 : {temp_sum[35:16]} ;

////////////////////////////////////////////////////////////////
//  pooling layer 
////////////////////////////////////////////////////////////////

//==============
//  L1_i, L1_j
//==============
always@(posedge clk) begin
	if( reset ) begin
		L1_i <= 0; L1_j <= 0;
	end
	else if( S == S_RESULT_L1 ) begin
		L1_j <= (L1_j == 62) ? 0: L1_j + 2;
		L1_i <= (L1_j == 62)? L1_i + 2 : L1_i;
	end
end

always @(posedge clk)	
begin
	if(reset) pooling_counter <= 0;
	else if(S_next == S_RESULT_L1) pooling_counter <= 0;
	else if(S_next == S_POOL) pooling_counter <= pooling_counter + 1;
end

//==============
//  caddr_rd
//==============
always @(posedge clk) begin
	if(reset) caddr_rd <= 0;
	else if(S_next == S_POOL) begin
		case(pooling_counter)
			0: caddr_rd <= {L1_i, L1_j};
			1: caddr_rd <= {L1_i, L1_j + 6'd1};
			2: caddr_rd <= {L1_i + 6'd1, L1_j};
			3: caddr_rd <= {L1_i + 1'd1, L1_j + 6'd1};
			default: caddr_rd <= 0;
		endcase
	end
end

//==============
//  crd
//==============
always @(posedge clk) begin
	if(reset) crd <= 0;
	else if(S_next == S_POOL && pooling_counter < 4) crd <= 1;
	else crd <= 0;
end

always @(posedge clk)
begin
	if(reset) max_val <= 20'd0;
	else if(S == S_RESULT_L1) max_val <= 0;
	else if(S == S_POOL && pooling_counter > 0) max_val <= (cdata_rd > max_val) ? cdata_rd : max_val;
	else 		max_val <= 0;
end

////////////////////////////////////////////////////////////////
//  data output
////////////////////////////////////////////////////////////////

//==============
//  cdata_wr
//==============

always@(posedge clk) begin
	if( reset ) cdata_wr <= 20'd0;
	else if( S == S_RESULT_L0 ) cdata_wr <= ( temp_sum[39] )? 20'd0 : conv_result;
	else if(S == S_RESULT_L1) cdata_wr <= max_val;
	else cdata_wr <= 20'd0;
end

//==============
//  csel
//==============
always @(posedge clk)
begin
	if(reset) csel <= 0;
	else if(S == S_RESULT_L0) csel <= 1;
	else if(S == S_RESULT_L1) csel <= 3;
	else if(S_next == S_POOL) csel <= 1;
	else csel <= 0;
end

//==============
//  cwr
//==============
always @(posedge clk) begin
	if( reset ) cwr <= 1'd0;
	else if( S == S_RESULT_L0 ) cwr <= 1'd1;
	else if( S == S_RESULT_L1 ) cwr <= 1'd1;
	else cwr <= 1'd0;
end

//==============
//  caddr_wr
//==============
always @(posedge clk) begin
	if( reset ) caddr_wr <= 12'd0;
	else if( S == S_RESULT_L0 ) caddr_wr <= {L0_i,L0_j} - 1;
	else if( S == S_RESULT_L1 ) caddr_wr <= {L1_i[5:1],L1_j[5:1]};
	else caddr_wr <= 12'd0;
end

endmodule