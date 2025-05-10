`timescale 1ns/10ps
module LEDDC( DCK, DAI, DEN, GCK, Vsync, mode, rst, OUT);
input           DCK;
input           DAI;
input           DEN;
input           GCK;
input           Vsync;
input           mode;
input           rst;
output reg [15:0]   OUT;

integer i;
// wire & reg
wire [15:0] QA;
wire  CLKA;
reg  CENA;
wire  CLKB;
reg CENB;
reg [8:0] AA;
reg [8:0] AB;
reg [15:0] DB;

//
wire [15:0] QA2;
wire  CLKA2;
reg  CENA2;
wire  CLKB2;
reg CENB2;
reg [8:0] AA2;
reg [8:0] AB2;
reg [15:0] DB2;

//input 
reg [9:0] input_cnt;
reg DEN_reg;
reg DEN_reg_reg;
reg [15:0] tmp_input_reg;

// output 
reg [15:0] output_reg_buffer[0:15];
reg [15:0] output_reg [0:15];
reg [15:0] output_cnt;
reg [5:0] scanline_cnt;
reg next_round;

reg [14:0] output_reg_first [0:15];
reg [14:0] output_reg_second [0:15];

// round
reg [1:0] read_round_cnt, write_round_cnt;

parameter IDLE = 0;
parameter READ = 1;
parameter cal_next_pixel = 2;
reg [3:0] Readstate, ReadNx_state;
reg read_delay;
reg [10:0] readPixelcounter;
reg [8:0] read_address;
reg finish_one_scanline;
reg first;
reg [10:0] prev_VysyncCounter;
reg [10:0] VsyncCounter;
parameter VsyncE0 = 0;
parameter VsyncE1 = 1;
reg [3:0] Vsyncstate, VsyncNx_state;

// input cnt
always @(posedge DCK or posedge rst) begin
    if (rst)  input_cnt <= 10'b0;
    else if(DEN_reg == 0 && DEN == 1)  input_cnt <= input_cnt + 1;
    else if(input_cnt == 512 && DEN_reg == 1 && DEN == 0) input_cnt <= 513;
    else if(input_cnt == 513) input_cnt <= 0;
    else input_cnt <= input_cnt;
end

always @(posedge DCK or posedge rst) begin
    if (rst)  DEN_reg <= 1'b0;
    else DEN_reg <= DEN;
end
always @(posedge DCK or posedge rst) begin
    if (rst)  DEN_reg_reg <= 1'b0;
    else DEN_reg_reg <= DEN_reg;
end

always @(posedge DCK or posedge rst) begin
    if (rst)  tmp_input_reg <= 16'b0;
    else if(DEN == 1)  tmp_input_reg <= {DAI, tmp_input_reg[15:1]};
    else tmp_input_reg <= tmp_input_reg;
end

// CLKB, CENB
// AB, DB

assign CLKB = DCK;

always @(posedge DCK or posedge rst) begin
    if(rst) CENB <= 1;
    else if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 0 || write_round_cnt == 2)) CENB <= 0;
    else CENB <= 1;
end

always @(posedge DCK or posedge rst) begin
    if(rst) AB <= 9'b0;
    else if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 0 || write_round_cnt == 2)) AB <= input_cnt == 513 ? 511 : input_cnt - 1;
    else AB <= 9'b0;
end

always @(posedge DCK or posedge rst) begin
    if(rst) DB <= 16'b0;
    else  if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 0 || write_round_cnt == 2)) DB <= tmp_input_reg;
    else DB <= 16'b0;
end

assign CLKB2 = DCK;

always @(posedge DCK or posedge rst) begin
    if(rst) CENB2 <= 1;
    else if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 1 || write_round_cnt == 3)) CENB2 <= 0;
    else CENB2 <= 1;
end

always @(posedge DCK or posedge rst) begin
    if(rst) AB2 <= 9'b0;
    else if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 1 || write_round_cnt == 3)) AB2 <= input_cnt == 513 ? 511 : input_cnt - 1;
    else AB2 <= 9'b0;
end

always @(posedge DCK or posedge rst) begin
    if(rst) DB2 <= 16'b0;
    else  if(DEN_reg_reg == 1 && DEN_reg == 0 && (write_round_cnt == 1 || write_round_cnt == 3)) DB2 <= tmp_input_reg;
    else DB2 <= 16'b0;
end


// my part



always@( posedge GCK or posedge rst ) begin
	if( rst ) Vsyncstate <= VsyncE0;
	else Vsyncstate <= VsyncNx_state;
end

always@( * )begin
	case( Vsyncstate ) 
	    VsyncE0: VsyncNx_state = (Vsync == 1) ? VsyncE1 : VsyncE0;
        VsyncE1: VsyncNx_state = (Vsync == 0) ? VsyncE0 : VsyncE1;
        default: VsyncNx_state = VsyncE0;
    endcase
end

always@(posedge GCK or posedge rst)begin
    if(rst)begin
        VsyncCounter <= 0;
    end
    else if(Vsyncstate == VsyncE0 && Vsync == 1)begin
        VsyncCounter <= VsyncCounter + 1;
    end
    else if(VsyncCounter == 32 && Vsyncstate == 1 && VsyncNx_state ==0)begin
        VsyncCounter <= 0;
    end
    else begin
        VsyncCounter <= VsyncCounter;
    end
end

always @(posedge GCK or posedge rst)begin
    if(rst)begin
        prev_VysyncCounter <= 0;
    end
    else begin
        prev_VysyncCounter <= VsyncCounter;
    end
end

always @(posedge DCK or posedge rst) begin
    if(rst)  begin
        write_round_cnt <= 0;
        
    end
    else if(mode == 0) begin
        write_round_cnt <= 0;
    end
    else if(input_cnt == 513)begin
        write_round_cnt <= write_round_cnt + 1;
    end
    else begin
        write_round_cnt <= write_round_cnt;
    end
end

always @(posedge GCK or posedge rst) begin
    if(rst)  begin
        read_round_cnt <= 0;
    end
    else if(mode == 0) begin
        read_round_cnt <= 0;
    end
    else if(prev_VysyncCounter == 31 && Vsyncstate == VsyncE0 && Vsync == 1 && next_round)begin
        if(write_round_cnt > 0) read_round_cnt <= read_round_cnt + 1;
        else read_round_cnt <= read_round_cnt;
    end
    else begin
        read_round_cnt <= read_round_cnt;
    end
end

// output ram part

always@( posedge GCK or posedge rst ) begin
	if( rst ) Readstate <= IDLE;
	else Readstate <= ReadNx_state;
end

always@( * )begin
	case( Readstate ) 
	    IDLE: ReadNx_state = (Vsync == 1 && ((VsyncCounter == 32 && finish_one_scanline == 0) || (finish_one_scanline == 0 && first == 1))) ? READ : IDLE;
        READ: ReadNx_state = cal_next_pixel;
        cal_next_pixel: ReadNx_state = (readPixelcounter == 15) ? IDLE : READ;
        default: ReadNx_state = IDLE;
    endcase
end

always@( posedge GCK or posedge rst )begin
    if(rst)begin
        first <= 0;
    end
    else begin
        if(Readstate == IDLE && VsyncCounter == 32)begin
            first <= 1;
        end
    end
end

always@( posedge GCK or posedge rst )begin
    if(rst)begin
        finish_one_scanline <= 0;
    end
    else begin
        if(Readstate == cal_next_pixel && ReadNx_state == IDLE)begin
            finish_one_scanline <= 1;
        end
        else if(VsyncCounter == 32 && Vsyncstate == 1 && VsyncNx_state ==0 || Vsyncstate == VsyncE0 && Vsync == 1)begin
            finish_one_scanline <= 0;
        end
        else begin
            finish_one_scanline <= finish_one_scanline;
        end
    end
end

always@( posedge GCK or posedge rst )begin
    if(rst)begin
        readPixelcounter <= 0;
    end
    else begin
        if(Readstate == cal_next_pixel)begin
            readPixelcounter <= readPixelcounter + 1;
        end
        else if(read_delay)begin
            readPixelcounter <= 0;
        end
        else begin
            readPixelcounter <= readPixelcounter;
        end
    end
end

always@( posedge GCK or posedge rst )begin
    if(rst)begin
        read_address <= 0;
    end
    else begin
        if(Readstate == cal_next_pixel)begin
            read_address <= read_address + 1;
        end
        else begin
            read_address <= read_address;
        end
    end
end

assign CLKA = GCK;

always@(posedge GCK or posedge rst)begin
    if(rst)begin
        CENA <= 1;
        AA <= 0;
    end
    else if(Readstate == READ && (read_round_cnt == 0 || read_round_cnt == 2))begin
        CENA <= 0;
        AA <= read_address;
    end
    else begin
        CENA <= 1;
        AA <= AA;
    end
end

assign CLKA2 = GCK;

always@(posedge GCK or posedge rst)begin
    if(rst)begin
        CENA2 <= 1;
        AA2 <= 0;
    end
    else if(Readstate == READ && (read_round_cnt == 1 || read_round_cnt == 3))begin
        CENA2 <= 0;
        AA2 <= read_address;
    end
    else begin
        CENA2 <= 1;
        AA2 <= AA2;
    end
end

always @(posedge GCK or posedge rst)begin
    if(rst)begin
        read_delay <= 0;
    end
    else begin
        if(Readstate == cal_next_pixel && ReadNx_state == IDLE)begin
            read_delay <= 1;
        end
        else begin
            read_delay <= 0;
        end
    end
end

always@(posedge GCK or posedge rst)begin
    if(rst)begin
       for(i = 0; i <= 15; i = i + 1) begin
           output_reg_buffer[i] <= 0;
        end
    end
    else if(Readstate == cal_next_pixel || read_delay)begin
        for(i = 0; i <= 15; i = i + 1) begin
            if(readPixelcounter > 0)begin
                if(read_round_cnt == 0 || read_round_cnt == 2)
                    output_reg_buffer[readPixelcounter-1] <= QA;
                else if(read_round_cnt == 1 || read_round_cnt == 3)
                    output_reg_buffer[readPixelcounter-1] <= QA2;
            end
        end
    end
    else begin
        for(i = 0; i <= 15; i = i + 1) begin
            output_reg_buffer[i] <= output_reg_buffer[i];
        end
    end
end

// output part
always @(posedge GCK or posedge  rst) begin
        if(rst) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg[i] <= 16'd0;
            end
        end
        else if(Vsync) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg[i] <= output_reg[i] == 0 ? 0 : output_reg[i] - 1;
            end
        end
        else begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg[i] <= output_reg_buffer[i];
            end
        end
end

always @(posedge GCK or posedge  rst) begin
    if(rst) begin
        OUT <= 16'b0;
    end
    else if(Vsync) begin
        for(i = 0; i < 16 ;i = i + 1) begin
            if(mode) begin
                if(next_round == 0) OUT[i] <= output_reg_first[i] > 0 ? 1 : 0;
                else OUT[i] <= output_reg_second[i] > 0 ? 1 : 0;
            end
            else OUT[i] <= output_reg[i] > 0 ? 1 : 0;
        end
    end
    else begin
        OUT <= 16'b0;
    end
end

always @(posedge GCK or posedge  rst) begin
    if(rst) begin
        output_cnt <= 0;
    end
    else if(Vsync) begin
        output_cnt <= output_cnt + 1;
    end
    else begin
        output_cnt <= 0;
    end
end

always @(posedge GCK or posedge  rst) begin
    if(rst) begin
        scanline_cnt <= 0;
    end
    else if(scanline_cnt == 32)begin
        scanline_cnt <= 0;
    end
    else if(output_cnt == 32768) begin
        scanline_cnt <= scanline_cnt + 1;
    end
    else begin
        scanline_cnt <= scanline_cnt;
    end
end

always @(posedge GCK or posedge  rst) begin
    if(rst) begin
        next_round <= 0;
    end
    else if(scanline_cnt == 32) begin
        next_round <= next_round == 1 ? 0 : 1;
    end
    else begin
        next_round <= next_round;
    end
end

// output part
always @(posedge GCK or posedge  rst) begin
    
        if(rst) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg_first[i] <= 0;
            end
        end
        else if(Vsync) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                if(next_round == 0) output_reg_first[i] <= output_reg_first[i] > 0 ? output_reg_first[i] - 1 : 0;
                else output_reg_first[i] <=  output_reg_first[i];
            end
        end
        else begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg_first[i] <= (output_reg_buffer[i] >> 1)  + {14'b0, output_reg_buffer[i][0]};
            end
        end
end

always @(posedge GCK or posedge  rst) begin
    
        if(rst) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg_second[i] <= 0;
            end
        end
        else if(Vsync) begin
            for(i = 0; i < 16 ;i = i + 1) begin
                if(next_round == 1) output_reg_second[i] <=  output_reg_second[i] > 0 ? output_reg_second[i] - 1 : 0;
                else output_reg_second[i] <=  output_reg_second[i];
            end
        end
        else begin
            for(i = 0; i < 16 ;i = i + 1) begin
                output_reg_second[i] <= output_reg_buffer[i] >> 1;
        
            end
        end
end

sram_512x16 sram_512x16_1(
    .QA(QA),
    .AA(AA),
    .CLKA(CLKA),
    .CENA(CENA),
    .AB(AB),
    .DB(DB),
    .CLKB(CLKB),
    .CENB(CENB)
);

sram_512x16 sram_512x16_2(
    .QA(QA2),
    .AA(AA2),
    .CLKA(CLKA2),
    .CENA(CENA2),
    .AB(AB2),
    .DB(DB2),
    .CLKB(CLKB2),
    .CENB(CENB2)
);

endmodule