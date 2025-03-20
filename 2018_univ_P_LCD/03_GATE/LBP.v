
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
//================================================================
//  INPUT & OUTPUT DECLARATION
//================================================================
input   	clk;
input   	reset;
output  reg [13:0] 	gray_addr;
output          gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output  reg[13:0] 	lbp_addr;
output  reg 	lbp_valid;
output  reg[7:0] 	lbp_data;
output  reg 	finish;

// FSM
reg [1:0] S, S_next;
parameter S_IDLE = 0, S_READ = 1, S_WRITE = 2, S_FINISH = 3;

//read addr, counter
reg [6:0] i, j;
reg [3:0] read_counter;
wire [3:0] read_counter_m2;

// calculation
reg [7:0] center_data;
reg greater_than;
reg [7:0] sum;
wire [7:0] power2;

//===============================================================
//  FSM
//===============================================================

always @(posedge clk or posedge reset)
begin
    if (reset)S <= S_IDLE;
    else S <= S_next;
end

always @(*)
begin
    S_next = S;
    case(S)
        S_IDLE: if(gray_ready)S_next = S_READ;
        S_READ: S_next = (read_counter == 9) ? S_WRITE : S_READ;
        S_WRITE:  S_next = (i == 126 && j == 126) ? S_FINISH : S_READ;
        S_FINISH: S_next = S_IDLE;
    endcase
end

//================================
// i, j
//================================
always @(posedge clk) begin
    if(reset) begin
        i <= 1;
        j <= 1;
    end
    else if(S == S_WRITE) begin
        i <= (j == 126) ? i + 1 : i;
        j <= (j == 126) ? 1 : j + 1;
    end
end

//================================
// read_counter
//================================
always @(posedge clk ) begin
    if(reset) read_counter <= 0;
    else if(S == S_READ)read_counter <= read_counter + 1;
    else read_counter <= 0;
end

//================================
// gray_addr
//================================

always @(*)begin
    case(read_counter) 
        0: gray_addr <= {i, j};
        1: gray_addr <= {i - 7'd1, j - 7'd1};
        2: gray_addr <= {i - 7'd1, j};
        3: gray_addr <= {i - 7'd1, j + 7'd1};
        4: gray_addr <= {i, j - 7'd1};
        5: gray_addr <= {i, j + 7'd1};
        6: gray_addr <= {i + 7'd1, j - 7'd1};
        7: gray_addr <= {i + 7'd1, j};
        8: gray_addr <= {i + 7'd1, j + 7'd1};
        default: gray_addr <= 14'b0;
    endcase

end

assign gray_req = S == S_READ;
//================================
// center_data
//================================
always @(posedge clk ) begin
    if(reset) center_data <= 0;
    else if(S == S_READ && read_counter == 0) center_data <= gray_data;
    else center_data <= center_data;
end

//================================
// greater_than
//================================
always @(posedge clk ) begin
    if(reset) greater_than <= 0;
    else if(S == S_READ) greater_than <= gray_data >= center_data ? 1 : 0;
    else if(S == S_WRITE) greater_than <= 0;
end

//================================
// sum
//================================
assign read_counter_m2 = read_counter - 2;
assign power2 = greater_than << read_counter_m2;

always @(posedge clk ) begin
    if(reset) sum <= 0;
    else if(S == S_READ) sum <= sum + power2;
    else if(S == S_WRITE) sum <= 0;
end

//================================
// lbp_addr
//================================
always @(posedge clk ) begin
    if(reset) lbp_addr <= 0;
    else if(S == S_WRITE) lbp_addr <= {i, j};
    else lbp_addr <= 0;
end

//================================
// lbp_valid
//================================
always @(posedge clk ) begin
    if(reset) lbp_valid <= 0;
    else if(S == S_WRITE) lbp_valid <= 1;
    else lbp_valid <= 0;
end

//================================
// lbp_data
//================================
always @(posedge clk ) begin
    if(reset) lbp_data <= 0;
    else if(S == S_WRITE) lbp_data <= sum;
    else lbp_data <= 0;
end
//================================
// finish
//================================
always @(posedge clk ) begin
    if(reset) finish <= 0;
    else if(S == S_FINISH) finish <= 1;
    else finish <= 0;
end

endmodule
