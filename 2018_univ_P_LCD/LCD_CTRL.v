module LCD_CTRL(clk, reset, cmd, cmd_valid, IROM_Q, IROM_rd, IROM_A, IRAM_valid, IRAM_D, IRAM_A, busy, done);
input clk;
input reset;
input [3:0] cmd;
input cmd_valid;
input [7:0] IROM_Q;
output reg IROM_rd;
output reg [5:0] IROM_A;
output reg IRAM_valid;
output reg [7:0] IRAM_D;
output reg [5:0] IRAM_A;
output busy;
output done;

reg [1:0] counter;
reg calc_done;
reg [7:0] min_val, max_val;
reg [9:0] accum_val;
reg [7:0] image [0:63];
reg [5:0] IROM_A_nxt;
reg finish_input;
reg [5:0] IRAM_CNT;
reg finish_output;
reg [2:0] S, S_nxt;

localparam S_idle = 0, S_input = 1, S_wait = 2, S_calc = 3,  S_output = 4; 

always @(posedge clk) begin
    if(reset) S = S_idle;
    else S = S_nxt;
end

always @(*) begin
    case (S)
        S_idle:
            if(!reset) begin
                S_nxt = S_input;
            end
        S_input:
            if(finish_input) begin
                S_nxt = S_wait;
            end
        S_wait:
            if(cmd_valid) begin
                if(cmd >= 5 && cmd <= 7) S_nxt = S_calc;
                else if(cmd == 0)  S_nxt = S_output;
                else S_nxt = S_wait;
            end
        S_calc:
            if(calc_done) begin
                S_nxt = S_wait;
            end
        S_output:
            if(finish_output)
                S_nxt = S_idle;
        default:
        S_nxt = S_idle;
    endcase
end

assign busy = S != S_wait;
assign done = S == S_output && S_nxt == S_idle;


wire [5:0] tmp_idx3;
wire [5:0] tmp_idx2;
wire [5:0] tmp_idx1;
wire [5:0] tmp_idx0;
wire [7:0] avg;
reg [2:0] dx, dy;
assign tmp_idx3 = dy * 8 + dx;
assign tmp_idx2 = tmp_idx3 - 1;
assign tmp_idx1 = tmp_idx2 - 7;
assign tmp_idx0 = tmp_idx1 - 1;
assign avg = accum_val /     4;

always @(posedge clk) begin
    if(reset)begin
         IROM_A <= 0;
         IROM_A_nxt <= 0;
         finish_input <= 0;
    end
    else if(S == S_input)begin
        IROM_A_nxt <= IROM_A_nxt + 1;
        IROM_A <= IROM_A_nxt;
        image[IROM_A] <= IROM_Q;
        if(IROM_A == 63) begin
            finish_input <= 1;
        end
    end
    else if(calc_done) begin
        if(cmd == 5) begin
            image[tmp_idx0] <= max_val;
            image[tmp_idx1] <= max_val;
            image[tmp_idx2] <= max_val;
            image[tmp_idx3] <= max_val;
        end
        else if(cmd == 6) begin
            image[tmp_idx0] <= min_val;
            image[tmp_idx1] <= min_val;
            image[tmp_idx2] <= min_val;
            image[tmp_idx3] <= min_val;
        end
        else if(cmd == 7) begin
            image[tmp_idx0] <= avg;
            image[tmp_idx1] <= avg;
            image[tmp_idx2] <= avg;
            image[tmp_idx3] <= avg;
        end
    end
    else if(S == S_wait && cmd_valid) begin
        if(cmd == 8)begin
            image[tmp_idx0] <= image[tmp_idx1];
            image[tmp_idx1] <= image[tmp_idx3];
            image[tmp_idx2] <= image[tmp_idx0];
            image[tmp_idx3] <= image[tmp_idx2];
        end
        else if(cmd == 9)begin
            image[tmp_idx0] <= image[tmp_idx2];
            image[tmp_idx1] <= image[tmp_idx0];
            image[tmp_idx2] <= image[tmp_idx3];
            image[tmp_idx3] <= image[tmp_idx1];
        end
        else if(cmd == 10)begin
            image[tmp_idx0] <= image[tmp_idx2];
            image[tmp_idx1] <= image[tmp_idx3];
            image[tmp_idx2] <= image[tmp_idx0];
            image[tmp_idx3] <= image[tmp_idx1];
        end
        else if(cmd == 11)begin
            image[tmp_idx0] <= image[tmp_idx1];
            image[tmp_idx1] <= image[tmp_idx0];
            image[tmp_idx2] <= image[tmp_idx3];
            image[tmp_idx3] <= image[tmp_idx2];
        end
    end
end


always @(*) begin
    if(reset) IROM_rd <= 1;
    else if(S == S_input && S_nxt == S_calc) IROM_rd <= 0;
    else IROM_rd <= IROM_rd;
end


always @(posedge clk)begin
    if(reset) begin
        dx <= 4;
        dy <= 4;
    end
    else if(S == S_wait && cmd_valid) begin
        if(cmd == 1)begin
            dy <= dy == 1 ? dy : dy - 1;
        end
        else if(cmd == 2) begin
            dy <= dy == 7 ? dy : dy + 1;
        end
        else if(cmd == 3) begin
            dx <= dx == 1 ? dx : dx - 1;
        end
        else if(cmd == 4) begin
            dx <= dx == 7 ? dx : dx + 1;
        end
    end
end



always @(posedge clk) begin
   if(reset) begin
        min_val <= 0;
        max_val <= 0;
        accum_val <= 0;
        calc_done <= 0;
        counter <= 0;
   end 
   else if(S == S_wait && cmd_valid) begin
        accum_val <= 0;
        calc_done <= 0;
   end
   else if(S == S_calc) begin
        if(counter == 0) begin
            min_val <= image[tmp_idx0];
            max_val <= image[tmp_idx0];
            accum_val <= accum_val + image[tmp_idx0];
            counter <= counter + 1;
        end
        else if(counter == 1) begin
            if(image[tmp_idx1] < min_val) min_val <= image[tmp_idx1];
            if(image[tmp_idx1] > max_val) max_val <= image[tmp_idx1];
            accum_val <= accum_val + image[tmp_idx1];
            counter <= counter + 1;
        end
        else if(counter == 2)begin
            if(image[tmp_idx2] < min_val) min_val <= image[tmp_idx2];
            if(image[tmp_idx2] > max_val) max_val <= image[tmp_idx2];
            accum_val <= accum_val + image[tmp_idx2];
            counter <= counter + 1;
        end
        else if(counter == 3)begin
            if(image[tmp_idx3] < min_val) min_val <= image[tmp_idx3];
            if(image[tmp_idx3] > max_val) max_val <= image[tmp_idx3];
            accum_val <= accum_val + image[tmp_idx3];
            counter <= counter + 1;
            calc_done <= 1;
        end
   end
end

always @(posedge clk) begin
    if(reset) begin
        IRAM_CNT <= 0;
        IRAM_A <= 0;
        IRAM_D <= 0;
        IRAM_valid <= 0;
        finish_output <= 0;
    end
    else if(S == S_output) begin
        IRAM_CNT <= IRAM_CNT + 1;
        IRAM_A <= IRAM_CNT;
        IRAM_D <= image[IRAM_CNT];
        IRAM_valid <= 1;
        if(IRAM_A == 63) begin
            finish_output <= 1;
        end
    end
    else begin
        IRAM_A <= 0;
        IRAM_CNT <= 0;
        IRAM_D <= 0;
        IRAM_valid <= 0;
        finish_output <= 0;
    end
end

endmodule
