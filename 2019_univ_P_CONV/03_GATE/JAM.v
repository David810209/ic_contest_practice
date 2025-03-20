module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

// state machine initalize
parameter IDLE = 0, SORT = 1, CALC = 2, OUTPUT = 3, DETERMINE = 4, INPUT = 5, FIND_MINI = 6, SWAP = 7, FLIP = 8;
reg [3:0] state, nx_state;

// cost initalize
reg last;
reg [6:0] cost0 [0:7];
reg [6:0] cost1 [0:7];
reg [6:0] cost2 [0:7];
reg [6:0] cost3 [0:7];
reg [6:0] cost4 [0:7];
reg [6:0] cost5 [0:7];
reg [6:0] cost6 [0:7];
reg [6:0] cost7 [0:7];
integer i;
reg [3:0] sort [0:7];

reg [3:0]swap_number_reg;
reg [3:0]mini_idx;
wire comp_01;
wire comp_12;
wire comp_23;
wire comp_34;
wire comp_45;
wire comp_56;
wire comp_67;

wire [3:0]swap_number;
reg [3:0]  swap_number_const;
wire [6:0] iter_num, swap_num, mini_num;
wire finish ;
reg [9:0] min_cost;
reg  [9:0] current;
reg [3:0] match_count;


// input logic
always @(posedge CLK ) begin
    if(RST) last <= 0;
    else if(W == 7 && J == 7) last <= 1;
    else last <= 0;
end

always @(posedge CLK) begin
    if(RST) begin
        W <= 0;
        J <= 0;
    end
    else if(state == INPUT) begin
        if(J == 7) begin
            W <= W + 1;
            J <= 0;
        end
        else begin
            W <= W;
            J <= J + 1;
        end
    end
    else begin
        W <= W;
        J <= J;
    end
end

always @(posedge CLK) begin
    if(RST) begin
        for(i = 0; i < 8; i = i + 1) begin
            cost0[i] <= 0;
            cost1[i] <= 0;
            cost2[i] <= 0;
            cost3[i] <= 0;
            cost4[i] <= 0;
            cost5[i] <= 0;
            cost6[i] <= 0;
            cost7[i] <= 0;
        end
    end
    else if(state == INPUT) begin
        case (W)
            0: cost0[J] <= Cost;
            1: cost1[J] <= Cost;
            2: cost2[J] <= Cost;
            3: cost3[J] <= Cost;
            4: cost4[J] <= Cost;
            5: cost5[J] <= Cost;
            6: cost6[J] <= Cost;
            7: cost7[J] <= Cost;
            default:  begin
                for(i = 0; i < 8; i = i + 1) begin
                    cost0[i] <= cost0[i];
                    cost1[i] <= cost1[i];
                    cost2[i] <= cost2[i];
                    cost3[i] <= cost3[i];
                    cost4[i] <= cost4[i];
                    cost5[i] <= cost5[i];
                    cost6[i] <= cost6[i];
                    cost7[i] <= cost7[i];
                end
            end
        endcase
    end
    else begin
        for(i = 0; i < 8; i = i + 1) begin
            cost0[i] <= cost0[i];
            cost1[i] <= cost1[i];
            cost2[i] <= cost2[i];
            cost3[i] <= cost3[i];
            cost4[i] <= cost4[i];
            cost5[i] <= cost5[i];
            cost6[i] <= cost6[i];
            cost7[i] <= cost7[i];
        end
    end
end

assign comp_01 = (sort[0] < sort[1]) ? 1 : 0;
assign comp_12 = (sort[1] < sort[2]) ? 1 : 0;
assign comp_23 = (sort[2] < sort[3]) ? 1 : 0;
assign comp_34 = (sort[3] < sort[4]) ? 1 : 0;
assign comp_45 = (sort[4] < sort[5]) ? 1 : 0;
assign comp_56 = (sort[5] < sort[6]) ? 1 : 0;
assign comp_67 = (sort[6] < sort[7]) ? 1 : 0;

assign swap_number = (comp_67) ? 6 :
                     (comp_56) ? 5 :
                     (comp_45) ? 4 :
                     (comp_34) ? 3 :
                     (comp_23) ? 2 :
                     (comp_12) ? 1 :
                     (comp_01) ? 0 :
                     0;

assign finish = (sort[0] == 7 && sort[1] == 6 && sort[2] == 5 && sort[3] == 4 && sort[4] == 3 && sort[5] == 2 && sort[6] == 1 && sort[7] == 0);


always @(posedge CLK ) begin
    if(RST) swap_number_reg <= 0;
    else if(state == SORT) swap_number_reg <= swap_number + 1;
    else if(state == FIND_MINI || state == SWAP) 
        swap_number_reg <= swap_number_reg == 7 ? 7 : swap_number_reg + 1;
    else swap_number_reg <= swap_number_reg;
end

always@(posedge CLK)begin
    if(RST) swap_number_const <= 0;
    else if(state == SORT) swap_number_const <= swap_number;
    else swap_number_const <= swap_number_const;
end

assign iter_num = sort[swap_number_reg];
assign swap_num = sort[swap_number_const];
assign mini_num = sort[mini_idx];

always@(posedge CLK)begin
    if(RST) mini_idx <= 0;
    else if(state == SORT) mini_idx <= swap_number + 1; 
    else if(state == FIND_MINI || state == SWAP)begin
        if(swap_num < iter_num && iter_num < mini_num)mini_idx <= swap_number_reg;
        else mini_idx <= mini_idx;
    end
    else mini_idx <= mini_idx;
end

always@(posedge CLK)begin
    if(RST)begin
        for (i = 0; i < 8; i = i + 1) begin
                sort[i] <= i;
            end
    end
    else if(state == SWAP)begin
        sort[swap_number_const] <= sort[mini_idx];
        sort[mini_idx] <= sort[swap_number_const];
    end
    else if(state == FLIP)begin
        case(swap_number_const)
            5:
                begin
                    sort[6] <= sort[7];
                    sort[7] <= sort[6];
                end
            4:begin
                    sort[5] <= sort[7];
                    sort[6] <= sort[6];
                    sort[7] <= sort[5];
                end
            3:
                begin
                    sort[4] <= sort[7];
                    sort[5] <= sort[6];
                    sort[6] <= sort[5];
                    sort[7] <= sort[4];
                end
            2:
                begin
                    sort[3] <= sort[7];
                    sort[4] <= sort[6];
                    sort[5] <= sort[5];
                    sort[6] <= sort[4];
                    sort[7] <= sort[3];
                end
            1:
                begin
                    sort[2] <= sort[7];
                    sort[3] <= sort[6];
                    sort[4] <= sort[5];
                    sort[5] <= sort[4];
                    sort[6] <= sort[3];
                    sort[7] <= sort[2];
                end
            0:
                begin
                    sort[1] <= sort[7];
                    sort[2] <= sort[6];
                    sort[3] <= sort[5];
                    sort[4] <= sort[4];
                    sort[5] <= sort[3];
                    sort[6] <= sort[2];
                    sort[7] <= sort[1];
                end
            default:
            for (i = 0; i < 8; i = i + 1) begin
                sort[i] <= sort[i];
            end
        endcase
    end
    else begin
        for (i = 0; i < 8; i = i + 1) begin
            sort[i] <= sort[i];
        end
    end
end


always@(posedge CLK)begin
    if(RST)begin
        current <= 0;
    end
    else if(state == CALC)begin
        current <= cost0[sort[0]] + cost1[sort[1]] 
                    + cost2[sort[2]] + cost3[sort[3]] 
                    + cost4[sort[4]] + cost5[sort[5]] 
                    + cost6[sort[6]] + cost7[sort[7]];
    end
end

always @(posedge CLK) begin
    if(RST) min_cost <= 10'b1111111111;
    else if(state == DETERMINE)begin
        if(current < min_cost)min_cost <= current;
        else min_cost <= min_cost;
    end
    else min_cost <= min_cost;
end

always @(posedge CLK) begin
    if(RST) match_count <= 0;
    else if(state == DETERMINE)begin
        if(current < min_cost)match_count <= 1;
        else if(current == min_cost) match_count <= match_count + 1;
        else match_count <= match_count;
    end
    else match_count <= match_count;
end

//valid logic
always @(posedge CLK ) begin
    if(RST)  Valid <= 0;
    else if(state == OUTPUT) Valid <= 1;
    else Valid <= 0;
end

// MatchCount and MinCost logic
always @(posedge CLK ) begin
    if(RST) begin
        MatchCount <= 0;
        MinCost <= 0;
    end
    else if(state == OUTPUT) begin
        MatchCount <= match_count;
        MinCost <= min_cost;
    end
    else begin
        MatchCount <= 0;
        MinCost <= 0;
    end
end

always@( posedge CLK or posedge RST )
begin
	if( RST ) state <= IDLE;
	else state <= nx_state;
end

always@( * )begin
	case( state ) 
	    IDLE: nx_state = INPUT; 
        INPUT: nx_state = last ? SORT : INPUT; 
        SORT:  nx_state = FIND_MINI;
        FIND_MINI: nx_state = (swap_number_reg == 7) ? SWAP : FIND_MINI;
        SWAP : nx_state = FLIP;
        FLIP: nx_state = CALC;
        CALC:nx_state = DETERMINE;
        DETERMINE:nx_state = finish ? OUTPUT : SORT;
        OUTPUT: nx_state = IDLE;
        default: nx_state = IDLE;
    endcase
end

endmodule
