module geofence ( clk,reset,X,Y,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output valid;
output is_inside;
//reg valid;
//reg is_inside;

reg [10:0] VX[0:5], VY[0:5];
reg [10:0] targetX, targetY;
reg [2:0] idx, jdx;
reg [2:0] input_cnt;

reg [1:0] S, S_next;
localparam  S_INPUT = 0, S_CALC = 1, S_RESULT = 2;
always @(posedge clk ) begin
    if(reset) begin
        S <= S_INPUT;
    end
    else begin
        S <= S_next;
    end
end

always @(*) begin
    case (S)
        S_INPUT: begin
            if(input_cnt == 7) begin
                S_next = S_CALC;
            end
            else begin
                S_next = S_INPUT;
            end
        end
        S_CALC: begin
            if(idx == 4) begin
                S_next = S_RESULT;
            end
            else begin
                S_next = S_CALC;
            end
        end
        S_RESULT: begin
            S_next = S_INPUT;
        end
        default: 
            S_next = S_INPUT;    
    endcase
end

always @(posedge clk) begin
    if(reset) begin
        input_cnt <= 0;
    end
    else if(S == S_INPUT) begin
        if(input_cnt == 0) begin
            targetX <= {1'b0, X[9:0]};
            targetY <= {1'b0, Y[9:0]};
        end
        else begin
            VX[input_cnt-1] <= {1'b0, X[9:0]};
            VY[input_cnt-1] <= {1'b0, Y[9:0]};
        end
        input_cnt <= input_cnt + 1;
    end
    else begin
        input_cnt <= 0;
    end
end

wire signed [11:0]  V0X[0:5], V0Y[0:5];
assign V0X[1] = VX[1] - VX[0];
assign V0Y[1] = VY[1] - VY[0];
assign V0X[2] = VX[2] - VX[0];
assign V0Y[2] = VY[2] - VY[0];
assign V0X[3] = VX[3] - VX[0];
assign V0Y[3] = VY[3] - VY[0];
assign V0X[4] = VX[4] - VX[0];
assign V0Y[4] = VY[4] - VY[0];
assign V0X[5] = VX[5] - VX[0];
assign V0Y[5] = VY[5] - VY[0];

wire signed [11:0] VT0X, VT0Y, VT1X, VT1Y, VT2X, VT2Y, VT3X, VT3Y, VT4X, VT4Y, VT5X, VT5Y;
assign VT0X = VX[0] - targetX;
assign VT0Y = VY[0] - targetY;
assign VT1X = VX[1] - targetX;
assign VT1Y = VY[1] - targetY;
assign VT2X = VX[2] - targetX;
assign VT2Y = VY[2] - targetY;
assign VT3X = VX[3] - targetX;
assign VT3Y = VY[3] - targetY;
assign VT4X = VX[4] - targetX;
assign VT4Y = VY[4] - targetY;
assign VT5X = VX[5] - targetX;
assign VT5Y = VY[5] - targetY;

wire signed [11:0] V01X, V01Y, V12X, V12Y, V23X, V23Y, V34X, V34Y, V45X, V45Y, V50X, V50Y;
assign V01X = VX[1] - VX[0];
assign V01Y = VY[1] - VY[0];
assign V12X = VX[2] - VX[1];
assign V12Y = VY[2] - VY[1];
assign V23X = VX[3] - VX[2];
assign V23Y = VY[3] - VY[2];
assign V34X = VX[4] - VX[3];
assign V34Y = VY[4] - VY[3];
assign V45X = VX[5] - VX[4];
assign V45Y = VY[5] - VY[4];
assign V50X = VX[0] - VX[5];
assign V50Y = VY[0] - VY[5];

wire signed [31:0]  dot0, dot1, dot2, dot3, dot4, dot5;
assign dot0 = VT0X * V01Y - VT0Y * V01X;
assign dot1 = VT1X * V12Y - VT1Y * V12X;
assign dot2 = VT2X * V23Y - VT2Y * V23X;
assign dot3 = VT3X * V34Y - VT3Y * V34X;
assign dot4 = VT4X * V45Y - VT4Y * V45X;
assign dot5 = VT5X * V50Y - VT5Y * V50X;

wire result;
assign result = dot0[31] & dot1[31] & dot2[31] & dot3[31] & dot4[31] & dot5[31];

wire signed [31:0] tmp_dot;
assign tmp_dot = V0X[idx] * V0Y[jdx] - V0Y[idx] * V0X[jdx];

always @(posedge clk ) begin
    if(reset) begin
        idx <= 1;   
        jdx <= 2;
    end
    else if(S == S_CALC) begin
        if(tmp_dot[31] == 0) begin
            VX[idx] <= VX[jdx];
            VY[idx] <= VY[jdx];
            VX[jdx] <= VX[idx];
            VY[jdx] <= VY[idx];
        end
        if(jdx == 5) begin
            idx <= idx + 1;
            jdx <= idx + 2;
        end
        else begin
            jdx <= jdx + 1;
        end
    end
    else begin
        idx <= 1;
        jdx <= 2;
    end
end

assign valid = (S == S_RESULT);
assign is_inside = result;

endmodule
