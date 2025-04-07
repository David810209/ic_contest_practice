module CONVEX(
input CLK,
input RST,
input [4:0] PT_XY,
output      READ_PT,
output reg [9:0] DROP_X,
output reg [9:0] DROP_Y,
output reg DROP_V);
// state machine initialize
parameter IDLE = 0,
          READ = 1, 
          FIND = 2, 
          OUTPUT  = 3, 
          SORT = 4,
          START_SORT = 5;
reg [2:0] state, nx_state;

// total point initialize
reg signed [10:0] PT_X [0:11];
reg signed [10:0] PT_Y [0:11];

// new point initialize
reg signed [10:0] new_point_x;
reg signed [10:0] new_point_y;
reg [1:0] counter;

reg [3:0] cut_point1_idx, cut_point2_idx;
integer  i;

wire [3:0] shift_num_tmp, shift_num;
wire [3:0] out_num;
wire [3:0] new_point_idx;
reg [3:0] output_cnt;
wire [3:0] output_idx;
wire [3:0] output_start_idx;
reg [3:0] new_idx[0:11];

reg [2:0] start_idx;

reg [3:0] current_idx;
reg [3:0] next_idx;
reg [3:0] previous_idx;
wire signed [10:0] current_new_x;
wire signed [10:0] current_next_x;
wire signed [10:0] current_previous_x;
wire signed [10:0] current_new_y;
wire signed [10:0] current_next_y;
wire signed [10:0] current_previous_y;
wire signed [22:0] CurrentPrevious_CurrentNew_Result;
wire signed [22:0] CurrentPrevious_CurrentNext_Result;
wire signed [22:0] CurrentNext_CurrentNew_Result;
wire signed [22:0] CurrentNext_CurrentPrevious_Result;
wire firstcondition;
wire secondcondition;
wire insert;
reg  cutpoint_find;
reg [3:0] total_point, previous_total_point;
reg [1:0] current_point_type;
reg p1_prev_inner;

wire same_line;
wire not_same_line;
// calc logic //////////////////////////////////////

assign current_new_x = new_point_x - PT_X[current_idx];
assign current_next_x = PT_X[next_idx] - PT_X[current_idx];
assign current_previous_x = PT_X[previous_idx] - PT_X[current_idx];
assign current_new_y      = new_point_y - PT_Y[current_idx];
assign current_next_y     = PT_Y[next_idx] - PT_Y[current_idx];
assign current_previous_y = PT_Y[previous_idx] - PT_Y[current_idx];


assign CurrentNext_CurrentNew_Result = current_next_x * current_new_y - current_new_x * current_next_y;
assign CurrentPrevious_CurrentNew_Result = current_previous_x * current_new_y - current_new_x * current_previous_y;
assign CurrentNext_CurrentPrevious_Result = current_next_x * current_previous_y - current_next_y *  current_previous_x;
assign CurrentPrevious_CurrentNext_Result = -CurrentNext_CurrentPrevious_Result;

assign firstcondition = (CurrentNext_CurrentNew_Result[22] == CurrentNext_CurrentPrevious_Result[22]) ? 1 : 0;
assign secondcondition = (CurrentPrevious_CurrentNew_Result[22] == CurrentPrevious_CurrentNext_Result[22]) ? 1 : 0; 

// current idx
always @(posedge CLK  ) begin
    if(RST) current_idx <= 0;
    else if(state == READ && counter == 3) current_idx <= 0;
    else if(state == FIND) current_idx <= (current_idx == total_point - 1) ? 0 : current_idx + 1;
    else current_idx <= current_idx;
end

// next idx
always @(posedge CLK  ) begin
    if(RST) next_idx <= 0;
    else if(state == READ && counter == 3) next_idx <= 1;
    else if(state == FIND) next_idx <= (next_idx == total_point - 1) ? 0 : next_idx + 1;
    else next_idx <= next_idx;
end

// previous idx
always @(posedge CLK  ) begin
    if(RST) previous_idx <= 0;
    else if(state == READ && counter == 3) previous_idx <= total_point - 1;
    else if(state == FIND) previous_idx <= (previous_idx == total_point - 1) ? 0 : previous_idx + 1;
    else previous_idx <= previous_idx;
end

assign not_same_line = CurrentNext_CurrentNew_Result != 0 && CurrentPrevious_CurrentNew_Result != 0 && CurrentNext_CurrentPrevious_Result != 0 && CurrentPrevious_CurrentNext_Result != 0;
assign same_line = ((CurrentPrevious_CurrentNew_Result == 0 && current_previous_x[10] == current_new_x[10] && ((!current_new_x[10] &&  current_new_x > current_previous_x) ||(current_new_x[10] &&  current_new_x < current_previous_x) ))
                     || (CurrentNext_CurrentNew_Result == 0 && (current_next_x[10] == current_new_x[10] && ((!current_new_x[10] && current_new_x > current_next_x) || (current_new_x[10] && current_new_x < current_next_x)))));
// cutpoint find
always@(posedge CLK)begin
    if(RST) cutpoint_find <= 0;
    else if(state == FIND)begin
        if(((not_same_line &&firstcondition != secondcondition) ||same_line) && cutpoint_find == 0)  cutpoint_find <= cutpoint_find + 1;
        else cutpoint_find <= cutpoint_find;
    end
    else if(state == READ) cutpoint_find <= 0;
    else cutpoint_find <= cutpoint_find;
end

always@(posedge CLK)begin
    if(RST)begin
        current_point_type <= 0;
    end
    else if(state == FIND)begin
        if((not_same_line &&firstcondition != secondcondition)  ||same_line) begin
            current_point_type <= 1; // one for cut point
        end
        else  if((firstcondition == 0 && firstcondition == 0) ||(!not_same_line && !same_line)) begin
            current_point_type <= 2; // two for 內
        end
        else current_point_type <= 0; // zero for 其他
    end
end

// cut point1 and cut point2
always@(posedge CLK)begin
    if(RST)begin
        cut_point1_idx <= 0;
        cut_point2_idx <= 0;
        p1_prev_inner <= 0;
    end
    else if(state == FIND)begin
        if((not_same_line &&firstcondition != secondcondition) ||same_line) begin
            if(cutpoint_find == 0)begin
                if(current_point_type == 2) p1_prev_inner <= 1;
                else p1_prev_inner <= 0;
                cut_point1_idx <= current_idx;
                cut_point2_idx <= cut_point2_idx;
            end
            else if(cutpoint_find == 1)begin
                if((current_point_type != 2 && current_point_type != 1) || p1_prev_inner) begin
                    cut_point1_idx <= current_idx;
                    cut_point2_idx <= cut_point1_idx;
                end
                else begin
                    cut_point1_idx <= cut_point1_idx;
                    cut_point2_idx <= current_idx;
                end
                
            end
        end
    end
    else if(state == READ) begin
        cut_point1_idx <= 0;
        cut_point2_idx <= 0;
        p1_prev_inner <= 0;
    end
    else begin
        cut_point1_idx <= cut_point1_idx;
        cut_point2_idx <= cut_point2_idx;
    end
end

//sort logic////////////////////////////////////////////////////////////////////////////
assign shift_num_tmp = cut_point1_idx > cut_point2_idx ? total_point + cut_point2_idx - cut_point1_idx - 1 : cut_point2_idx - cut_point1_idx - 1;
assign shift_num = shift_num_tmp > 0 ? shift_num_tmp : 0;
assign out_num = shift_num;

assign insert = (cut_point1_idx + 1 == cut_point2_idx) ? 1 : 0;

// new index
always @(*) begin
    for(i = 0;i < 12;i = i + 1)begin
        new_idx[i] = cut_point2_idx + i > previous_total_point - 1 ? cut_point2_idx + i - previous_total_point : cut_point2_idx + i;
    end
end

assign new_point_idx = total_point - 1;

// PT_X , PT_Y
always @(posedge CLK  ) begin
    if(RST) begin
       for(i=0; i<12; i=i+1) begin
           PT_X[i] <= 10'd0;
           PT_Y[i] <= 10'd0;
       end
    end
    else if(state == START_SORT) begin
        if(CurrentNext_CurrentPrevious_Result[22] == 1) begin
            PT_X[2] <= PT_X[1];
            PT_Y[2] <= PT_Y[1];
            PT_X[1] <= PT_X[2];
            PT_Y[1] <= PT_Y[2];
        end
    end
    else if(state == SORT) begin
        if(start_idx < 4) begin
            PT_X[start_idx - 1] <= new_point_x;
            PT_Y[start_idx - 1] <= new_point_y;
        end
        else if(cutpoint_find) begin
            for(i=0; i<12; i=i+1) begin
                if(i == new_point_idx)begin
                    PT_X[i] <= new_point_x;
                    PT_Y[i] <= new_point_y;
                end
                else begin
                    PT_X[i] <= PT_X[new_idx[i]];
                    PT_Y[i] <= PT_Y[new_idx[i]];
                end
            end
        end
    end
end

//total_point
always @(posedge CLK ) begin
    if(RST)begin
         total_point <= 3;
         previous_total_point <= 3;
    end
    else if(state == OUTPUT && nx_state == SORT) begin
        if(cutpoint_find) begin
            total_point <= total_point - out_num + 1;
            previous_total_point <= total_point;
        end
        else  total_point <= total_point;
    end
    else total_point <= total_point;
end

// first three point
always @(posedge CLK ) begin
    if(RST) start_idx <= 0;
    else if(state == READ && counter == 3) start_idx <= start_idx == 4 ? start_idx : start_idx + 1;
    else start_idx <= start_idx;
end

assign READ_PT = (nx_state == READ) ? 1 : 0;

// counter
always @(posedge CLK  ) begin
    if(RST) counter <= 0;
    else if(state == READ) counter <= counter + 1;
    else counter <= 0;
end

// new point_x , new point_y
always@(posedge CLK)begin
    if(RST)begin
        new_point_x <= 0;
        new_point_y <= 0;
    end
    else if(state == READ)begin
        case(counter)
            0: new_point_x[10:5] <= {1'b0, PT_XY};
            1: new_point_x[4:0] <= PT_XY;
            2: new_point_y[10:5] <= {1'b0, PT_XY};
            3: new_point_y[4:0] <= PT_XY;
            default: begin
                new_point_x <= new_point_x;
                new_point_y <= new_point_y;
            end
        endcase
    end
end


// output logic////////////////////////////////////////////////////////////////////////
// output_cnt
assign output_start_idx = cut_point1_idx == 11  ? 0 : cut_point1_idx + 1;
assign output_idx = output_start_idx + output_cnt > total_point-1 ? output_start_idx + output_cnt - total_point : output_start_idx + output_cnt;
always @(posedge CLK ) begin
    if(RST) output_cnt <= 0;
    else if(state == OUTPUT) output_cnt <= output_cnt + 1;
    else output_cnt <= 0;
end

// DROP_V
always @(posedge CLK ) begin
    if(RST) DROP_V <= 0;
    else if(state == OUTPUT && out_num > 0) DROP_V <= 1;
    else DROP_V <= 0;
end

// DROP_X , DROP_Y
always @(posedge CLK ) begin
    if(RST)begin
        DROP_X <= 0;
        DROP_Y <= 0;
    end
    else if(state == OUTPUT)begin
        if(!cutpoint_find) begin
            DROP_X <= new_point_x[9:0];
            DROP_Y <= new_point_y[9:0];
        end
        else if(out_num > 0) begin
            DROP_X <= PT_X[output_idx][9:0];
            DROP_Y <= PT_Y[output_idx][9:0];
        end
        else begin
            DROP_X <= 0;
            DROP_Y <= 0;
        end
    end 
    else begin
        DROP_X <= 0;
        DROP_Y <= 0;
    end
end

// FSM
always@( posedge CLK or posedge RST )
begin
	if( RST ) state <= IDLE;
	else state <= nx_state;
end

always@( * )begin
	case( state ) 
	    IDLE: nx_state = READ; 
        READ: nx_state = (counter == 3) ? start_idx < 3 ? SORT : FIND : READ;
        FIND: nx_state = (current_idx == total_point - 1) ? OUTPUT: FIND;
        OUTPUT: nx_state = (out_num != 0 && output_cnt < out_num - 1 && cutpoint_find) ?  OUTPUT : SORT;
        SORT: nx_state = start_idx == 3 ? START_SORT : READ;
        START_SORT: nx_state = READ;
        default: nx_state = IDLE;
    endcase
end

endmodule
