/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 25 02:09:09 2025
/////////////////////////////////////////////////////////////


module LBP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, N29, N30, N31, N32, N33, N34, N51, N52,
         N53, N54, N55, N56, N57, N66, N68, N69, N113, N114, N115, N116, N117,
         N118, N120, N121, N122, N123, N124, N125, N140, N141, N142, N143,
         N144, N145, N146, greater_than, N212, N222, N223, N224, N225, N226,
         N227, N228, N229, N244, N245, N246, N247, N248, N249, N250, N251,
         N252, N253, N254, N255, N256, N257, N261, N265, N266, N267, N268,
         N269, N270, N271, N272, N276, N282, N356, n13, n31, n32, n33, n40,
         n41, n42, n43, n44, n45, n46, n47, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, N363, N362, N361, N360, N359, N358, N357,
         n137, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244;
  wire   [1:0] S;
  wire   [3:0] read_counter;
  wire   [6:0] i;
  wire   [6:0] j;
  wire   [7:0] center_data;
  wire   [3:0] read_counter_m2;
  wire   [7:0] power2;
  wire   [7:0] sum;
  wire   SYNOPSYS_UNCONNECTED__0;

  LBP_DW01_add_0 add_123_S2 ( .A(sum), .B(power2), .CI(1'b0), .SUM({N229, N228, 
        N227, N226, N225, N224, N223, N222}) );
  LBP_DW01_inc_0_DW01_inc_1 r416 ( .A(j), .SUM({N146, N145, N144, N143, N142, 
        N141, N140}) );
  LBP_DW01_inc_1_DW01_inc_2 r411 ( .A(i), .SUM({N34, N33, N32, N31, N30, N29, 
        SYNOPSYS_UNCONNECTED__0}) );
  LBP_DW01_inc_2_DW01_inc_3 add_63_aco ( .A({N363, N362, N361, N360, N359, 
        N358, N357}), .SUM({N57, N56, N55, N54, N53, N52, N51}) );
  DFFX1 \sum_reg[7]  ( .D(n105), .CK(clk), .Q(sum[7]), .QN(n40) );
  DFFX1 \sum_reg[6]  ( .D(n106), .CK(clk), .Q(sum[6]), .QN(n41) );
  DFFQX1 \center_data_reg[7]  ( .D(n121), .CK(clk), .Q(center_data[7]) );
  DFFX1 \sum_reg[5]  ( .D(n107), .CK(clk), .Q(sum[5]), .QN(n42) );
  DFFX1 \sum_reg[4]  ( .D(n108), .CK(clk), .Q(sum[4]), .QN(n43) );
  DFFX1 \sum_reg[3]  ( .D(n109), .CK(clk), .Q(sum[3]), .QN(n44) );
  DFFQX1 \center_data_reg[6]  ( .D(n120), .CK(clk), .Q(center_data[6]) );
  DFFX1 \sum_reg[2]  ( .D(n110), .CK(clk), .Q(sum[2]), .QN(n45) );
  DFFX1 \sum_reg[1]  ( .D(n111), .CK(clk), .Q(sum[1]), .QN(n46) );
  DFFX1 \sum_reg[0]  ( .D(n112), .CK(clk), .Q(sum[0]), .QN(n47) );
  DFFQX1 \center_data_reg[5]  ( .D(n119), .CK(clk), .Q(center_data[5]) );
  DFFQX1 \center_data_reg[3]  ( .D(n117), .CK(clk), .Q(center_data[3]) );
  DFFQX1 \center_data_reg[0]  ( .D(n114), .CK(clk), .Q(center_data[0]) );
  DFFQX1 \center_data_reg[1]  ( .D(n115), .CK(clk), .Q(center_data[1]) );
  DFFQX1 greater_than_reg ( .D(n113), .CK(clk), .Q(greater_than) );
  DFFQX1 \center_data_reg[4]  ( .D(n118), .CK(clk), .Q(center_data[4]) );
  DFFQX1 \center_data_reg[2]  ( .D(n116), .CK(clk), .Q(center_data[2]) );
  DFFQX1 \j_reg[6]  ( .D(n135), .CK(clk), .Q(j[6]) );
  DFFRX1 \S_reg[0]  ( .D(n217), .CK(clk), .RN(n214), .Q(S[0]), .QN(n13) );
  DFFRX1 \S_reg[1]  ( .D(n136), .CK(clk), .RN(n214), .Q(S[1]) );
  DFFQX1 \i_reg[6]  ( .D(n122), .CK(clk), .Q(i[6]) );
  DFFQX1 \read_counter_reg[0]  ( .D(N66), .CK(clk), .Q(read_counter_m2[0]) );
  DFFX1 \j_reg[3]  ( .D(n132), .CK(clk), .Q(j[3]), .QN(n31) );
  DFFX1 \j_reg[2]  ( .D(n131), .CK(clk), .Q(j[2]), .QN(n32) );
  DFFX1 \j_reg[1]  ( .D(n130), .CK(clk), .Q(j[1]), .QN(n33) );
  DFFQX1 \read_counter_reg[3]  ( .D(N69), .CK(clk), .Q(read_counter[3]) );
  DFFQX1 \read_counter_reg[2]  ( .D(N68), .CK(clk), .Q(read_counter[2]) );
  DFFQX1 \j_reg[5]  ( .D(n134), .CK(clk), .Q(j[5]) );
  DFFQX1 \j_reg[4]  ( .D(n133), .CK(clk), .Q(j[4]) );
  DFFQX1 \i_reg[5]  ( .D(n123), .CK(clk), .Q(i[5]) );
  DFFQX1 \i_reg[4]  ( .D(n124), .CK(clk), .Q(i[4]) );
  DFFQX1 \i_reg[3]  ( .D(n125), .CK(clk), .Q(i[3]) );
  DFFQX1 \i_reg[2]  ( .D(n126), .CK(clk), .Q(i[2]) );
  DFFQX1 \i_reg[1]  ( .D(n127), .CK(clk), .Q(i[1]) );
  DFFQX1 finish_reg ( .D(N276), .CK(clk), .Q(n282) );
  DFFQX1 \lbp_data_reg[0]  ( .D(N265), .CK(clk), .Q(n281) );
  DFFQX1 \lbp_data_reg[1]  ( .D(N266), .CK(clk), .Q(n280) );
  DFFQX1 \lbp_data_reg[2]  ( .D(N267), .CK(clk), .Q(n279) );
  DFFQX1 \lbp_data_reg[3]  ( .D(N268), .CK(clk), .Q(n278) );
  DFFQX1 \lbp_data_reg[4]  ( .D(N269), .CK(clk), .Q(n277) );
  DFFQX1 \lbp_data_reg[5]  ( .D(N270), .CK(clk), .Q(n276) );
  DFFQX1 \lbp_data_reg[6]  ( .D(N271), .CK(clk), .Q(n275) );
  DFFQX1 \lbp_data_reg[7]  ( .D(N272), .CK(clk), .Q(n274) );
  DFFQX1 lbp_valid_reg ( .D(N261), .CK(clk), .Q(n273) );
  DFFQX1 \lbp_addr_reg[0]  ( .D(N244), .CK(clk), .Q(n272) );
  DFFQX1 \lbp_addr_reg[1]  ( .D(N245), .CK(clk), .Q(n271) );
  DFFQX1 \lbp_addr_reg[2]  ( .D(N246), .CK(clk), .Q(n270) );
  DFFQX1 \lbp_addr_reg[3]  ( .D(N247), .CK(clk), .Q(n269) );
  DFFQX1 \lbp_addr_reg[4]  ( .D(N248), .CK(clk), .Q(n268) );
  DFFQX1 \lbp_addr_reg[5]  ( .D(N249), .CK(clk), .Q(n267) );
  DFFQX1 \lbp_addr_reg[6]  ( .D(N250), .CK(clk), .Q(n266) );
  DFFQX1 \lbp_addr_reg[7]  ( .D(N251), .CK(clk), .Q(n265) );
  DFFQX1 \lbp_addr_reg[8]  ( .D(N252), .CK(clk), .Q(n264) );
  DFFQX1 \lbp_addr_reg[9]  ( .D(N253), .CK(clk), .Q(n263) );
  DFFQX1 \lbp_addr_reg[10]  ( .D(N254), .CK(clk), .Q(n262) );
  DFFQX1 \lbp_addr_reg[11]  ( .D(N255), .CK(clk), .Q(n261) );
  DFFQX1 \lbp_addr_reg[12]  ( .D(N256), .CK(clk), .Q(n260) );
  DFFQX1 \lbp_addr_reg[13]  ( .D(N257), .CK(clk), .Q(n259) );
  DFFX1 \i_reg[0]  ( .D(n128), .CK(clk), .Q(i[0]), .QN(n232) );
  DFFX1 \j_reg[0]  ( .D(n129), .CK(clk), .Q(j[0]), .QN(n223) );
  DFFTRX2 \read_counter_reg[1]  ( .D(n137), .RN(n177), .CK(clk), .Q(
        read_counter[1]), .QN(n222) );
  XOR2X1 U167 ( .A(n180), .B(read_counter[1]), .Y(n137) );
  BUFX12 U168 ( .A(n253), .Y(gray_addr[5]) );
  OAI21XL U169 ( .A0(n76), .A1(n224), .B0(n80), .Y(n253) );
  BUFX12 U170 ( .A(n245), .Y(gray_addr[13]) );
  OAI221XL U171 ( .A0(n70), .A1(n226), .B0(n71), .B1(n237), .C0(n85), .Y(n245)
         );
  BUFX12 U172 ( .A(n255), .Y(gray_addr[3]) );
  OAI21XL U173 ( .A0(n76), .A1(n31), .B0(n82), .Y(n255) );
  BUFX12 U174 ( .A(n247), .Y(gray_addr[11]) );
  OAI221XL U175 ( .A0(n70), .A1(n228), .B0(n71), .B1(n187), .C0(n87), .Y(n247)
         );
  BUFX12 U176 ( .A(n256), .Y(gray_addr[2]) );
  OAI21XL U177 ( .A0(n76), .A1(n32), .B0(n83), .Y(n256) );
  BUFX12 U178 ( .A(n248), .Y(gray_addr[10]) );
  OAI221XL U179 ( .A0(n70), .A1(n229), .B0(n71), .B1(n235), .C0(n88), .Y(n248)
         );
  BUFX12 U180 ( .A(n257), .Y(gray_addr[1]) );
  OAI21XL U181 ( .A0(n76), .A1(n33), .B0(n84), .Y(n257) );
  BUFX12 U182 ( .A(n249), .Y(gray_addr[9]) );
  OAI221XL U183 ( .A0(n70), .A1(n230), .B0(n71), .B1(n234), .C0(n72), .Y(n249)
         );
  BUFX12 U184 ( .A(n252), .Y(gray_addr[6]) );
  OAI21XL U185 ( .A0(n76), .A1(n225), .B0(n77), .Y(n252) );
  BUFX12 U186 ( .A(n250), .Y(gray_addr[8]) );
  OAI221XL U187 ( .A0(n70), .A1(n231), .B0(n71), .B1(n233), .C0(n74), .Y(n250)
         );
  BUFX12 U188 ( .A(n254), .Y(gray_addr[4]) );
  OAI21XL U189 ( .A0(n76), .A1(n193), .B0(n81), .Y(n254) );
  BUFX12 U190 ( .A(n251), .Y(gray_addr[7]) );
  OAI221XL U191 ( .A0(n70), .A1(i[0]), .B0(n71), .B1(n232), .C0(n75), .Y(n251)
         );
  BUFX12 U192 ( .A(n259), .Y(lbp_addr[13]) );
  BUFX12 U193 ( .A(n260), .Y(lbp_addr[12]) );
  BUFX12 U194 ( .A(n261), .Y(lbp_addr[11]) );
  BUFX12 U195 ( .A(n262), .Y(lbp_addr[10]) );
  BUFX12 U196 ( .A(n263), .Y(lbp_addr[9]) );
  BUFX12 U197 ( .A(n264), .Y(lbp_addr[8]) );
  BUFX12 U198 ( .A(n265), .Y(lbp_addr[7]) );
  BUFX12 U199 ( .A(n266), .Y(lbp_addr[6]) );
  BUFX12 U200 ( .A(n267), .Y(lbp_addr[5]) );
  BUFX12 U201 ( .A(n268), .Y(lbp_addr[4]) );
  BUFX12 U202 ( .A(n269), .Y(lbp_addr[3]) );
  BUFX12 U203 ( .A(n270), .Y(lbp_addr[2]) );
  BUFX12 U204 ( .A(n271), .Y(lbp_addr[1]) );
  BUFX12 U205 ( .A(n272), .Y(lbp_addr[0]) );
  BUFX12 U206 ( .A(n273), .Y(lbp_valid) );
  BUFX12 U207 ( .A(n274), .Y(lbp_data[7]) );
  BUFX12 U208 ( .A(n275), .Y(lbp_data[6]) );
  BUFX12 U209 ( .A(n276), .Y(lbp_data[5]) );
  BUFX12 U210 ( .A(n277), .Y(lbp_data[4]) );
  BUFX12 U211 ( .A(n278), .Y(lbp_data[3]) );
  BUFX12 U212 ( .A(n279), .Y(lbp_data[2]) );
  BUFX12 U213 ( .A(n280), .Y(lbp_data[1]) );
  BUFX12 U214 ( .A(n281), .Y(lbp_data[0]) );
  BUFX12 U215 ( .A(n282), .Y(finish) );
  BUFX12 U216 ( .A(n258), .Y(gray_addr[0]) );
  OAI21XL U217 ( .A0(n76), .A1(n223), .B0(n97), .Y(n258) );
  INVX12 U218 ( .A(n221), .Y(gray_req) );
  INVX1 U219 ( .A(N282), .Y(n221) );
  NOR2X1 U220 ( .A(n13), .B(S[1]), .Y(N282) );
  BUFX12 U221 ( .A(n246), .Y(gray_addr[12]) );
  OAI221XL U222 ( .A0(n70), .A1(n227), .B0(n71), .B1(n236), .C0(n86), .Y(n246)
         );
  NOR2X2 U223 ( .A(n215), .B(n62), .Y(N356) );
  NAND3XL U224 ( .A(n53), .B(n221), .C(greater_than), .Y(n54) );
  NAND2X1 U225 ( .A(N261), .B(n62), .Y(n60) );
  AND2X2 U226 ( .A(j[0]), .B(N356), .Y(N357) );
  NOR2X1 U227 ( .A(n219), .B(read_counter[3]), .Y(n98) );
  NOR2XL U228 ( .A(n221), .B(reset), .Y(n52) );
  INVX1 U229 ( .A(reset), .Y(n214) );
  AOI2BB1XL U230 ( .A0N(n221), .A1N(n58), .B0(reset), .Y(n56) );
  NOR2BXL U231 ( .AN(n55), .B(reset), .Y(n53) );
  AND3X2 U232 ( .A(n92), .B(n58), .C(n93), .Y(n71) );
  NOR2BX2 U233 ( .AN(n178), .B(N356), .Y(n59) );
  NAND3X2 U234 ( .A(n89), .B(n90), .C(n91), .Y(n73) );
  CLKBUFX3 U235 ( .A(n215), .Y(n181) );
  CLKINVX1 U236 ( .A(N261), .Y(n215) );
  NAND2X1 U237 ( .A(N116), .B(n73), .Y(n87) );
  NAND3X1 U238 ( .A(n180), .B(n222), .C(n98), .Y(n93) );
  NAND3X1 U239 ( .A(n222), .B(n218), .C(n98), .Y(n92) );
  AND3X2 U240 ( .A(n94), .B(n95), .C(n96), .Y(n70) );
  CLKINVX1 U241 ( .A(N33), .Y(n227) );
  OAI2BB2XL U242 ( .B0(n224), .B1(n178), .A0N(N56), .A1N(n178), .Y(n134) );
  INVX3 U243 ( .A(n180), .Y(n218) );
  NAND4X1 U244 ( .A(n222), .B(n219), .C(n220), .D(n218), .Y(n58) );
  CLKINVX1 U245 ( .A(N32), .Y(n228) );
  OAI2BB2XL U246 ( .B0(n193), .B1(n178), .A0N(N55), .A1N(n178), .Y(n133) );
  CLKINVX1 U247 ( .A(N31), .Y(n229) );
  CLKINVX1 U248 ( .A(N30), .Y(n230) );
  CLKINVX1 U249 ( .A(N29), .Y(n231) );
  OAI2BB2XL U250 ( .B0(n178), .B1(n223), .A0N(N51), .A1N(n178), .Y(n129) );
  CLKBUFX3 U251 ( .A(n61), .Y(n178) );
  NAND2X1 U252 ( .A(n214), .B(n181), .Y(n61) );
  OAI22XL U253 ( .A0(n59), .A1(n237), .B0(n60), .B1(n226), .Y(n122) );
  OAI22XL U254 ( .A0(n59), .A1(n236), .B0(n60), .B1(n227), .Y(n123) );
  OAI22XL U255 ( .A0(n59), .A1(n187), .B0(n60), .B1(n228), .Y(n124) );
  OAI22XL U256 ( .A0(n59), .A1(n235), .B0(n60), .B1(n229), .Y(n125) );
  OAI22XL U257 ( .A0(n59), .A1(n234), .B0(n60), .B1(n230), .Y(n126) );
  OAI22XL U258 ( .A0(n59), .A1(n233), .B0(n60), .B1(n231), .Y(n127) );
  NAND2X2 U259 ( .A(n53), .B(n216), .Y(n51) );
  CLKINVX1 U260 ( .A(n177), .Y(n216) );
  NAND2X1 U261 ( .A(n99), .B(n180), .Y(n91) );
  NAND2X1 U262 ( .A(n99), .B(n218), .Y(n89) );
  NAND2X1 U263 ( .A(n69), .B(n220), .Y(n90) );
  NOR2X1 U264 ( .A(n224), .B(n181), .Y(N249) );
  NOR2X1 U265 ( .A(n193), .B(n181), .Y(N248) );
  NOR2X1 U266 ( .A(n225), .B(n181), .Y(N250) );
  NOR2X1 U267 ( .A(n181), .B(n223), .Y(N244) );
  NOR2X1 U268 ( .A(n181), .B(n232), .Y(N251) );
  NOR2X1 U269 ( .A(n181), .B(n236), .Y(N256) );
  NOR2X1 U270 ( .A(n181), .B(n235), .Y(N254) );
  NOR2X1 U271 ( .A(n215), .B(n234), .Y(N253) );
  NOR2X1 U272 ( .A(n215), .B(n233), .Y(N252) );
  NOR2X1 U273 ( .A(n181), .B(n187), .Y(N255) );
  NOR2X1 U274 ( .A(n215), .B(n237), .Y(N257) );
  AOI22X1 U275 ( .A0(N144), .A1(n78), .B0(N123), .B1(n79), .Y(n81) );
  AND3X2 U276 ( .A(n94), .B(n58), .C(n89), .Y(n76) );
  NAND3X2 U277 ( .A(n95), .B(n92), .C(n90), .Y(n79) );
  NAND3X2 U278 ( .A(n96), .B(n93), .C(n91), .Y(n78) );
  NOR2X1 U279 ( .A(n240), .B(n238), .Y(power2[0]) );
  OR2X1 U280 ( .A(n239), .B(read_counter_m2[3]), .Y(n244) );
  NAND2X1 U281 ( .A(n222), .B(n218), .Y(n242) );
  NAND2X1 U282 ( .A(n222), .B(n180), .Y(n243) );
  NAND2X1 U283 ( .A(N118), .B(n73), .Y(n85) );
  CLKINVX1 U284 ( .A(N34), .Y(n226) );
  NOR2X1 U285 ( .A(n55), .B(reset), .Y(N261) );
  OAI2BB2XL U286 ( .B0(n225), .B1(n178), .A0N(N57), .A1N(n178), .Y(n135) );
  NAND2BX1 U287 ( .AN(i[0]), .B(n73), .Y(n75) );
  NAND2X1 U288 ( .A(N113), .B(n73), .Y(n74) );
  NAND2X1 U289 ( .A(N114), .B(n73), .Y(n72) );
  NAND2X1 U290 ( .A(N115), .B(n73), .Y(n88) );
  NAND2X1 U291 ( .A(N117), .B(n73), .Y(n86) );
  CLKINVX1 U292 ( .A(read_counter[2]), .Y(n219) );
  NAND3X1 U293 ( .A(n180), .B(read_counter[1]), .C(n98), .Y(n94) );
  NAND3X1 U294 ( .A(read_counter[1]), .B(n218), .C(n98), .Y(n95) );
  OAI2BB1X1 U295 ( .A0N(N212), .A1N(n177), .B0(n54), .Y(n113) );
  CLKINVX1 U296 ( .A(gray_data[1]), .Y(n210) );
  CLKBUFX3 U297 ( .A(read_counter_m2[0]), .Y(n180) );
  CLKINVX1 U298 ( .A(gray_data[5]), .Y(n212) );
  NAND4X1 U299 ( .A(read_counter[3]), .B(n222), .C(n219), .D(n218), .Y(n96) );
  CLKINVX1 U300 ( .A(gray_data[3]), .Y(n211) );
  OR2X1 U301 ( .A(i[1]), .B(i[0]), .Y(n182) );
  OAI2BB2XL U302 ( .B0(n31), .B1(n178), .A0N(N54), .A1N(n178), .Y(n132) );
  CLKINVX1 U303 ( .A(read_counter[3]), .Y(n220) );
  OAI2BB2XL U304 ( .B0(n32), .B1(n178), .A0N(N53), .A1N(n178), .Y(n131) );
  OAI2BB2XL U305 ( .B0(n33), .B1(n178), .A0N(N52), .A1N(n178), .Y(n130) );
  CLKINVX1 U306 ( .A(i[5]), .Y(n236) );
  CLKINVX1 U307 ( .A(i[3]), .Y(n235) );
  CLKINVX1 U308 ( .A(i[2]), .Y(n234) );
  CLKINVX1 U309 ( .A(i[1]), .Y(n233) );
  OAI221XL U310 ( .A0(n60), .A1(i[0]), .B0(n59), .B1(n232), .C0(n214), .Y(n128) );
  CLKINVX1 U311 ( .A(i[6]), .Y(n237) );
  CLKBUFX3 U312 ( .A(n52), .Y(n177) );
  OAI2BB2XL U313 ( .B0(n51), .B1(n40), .A0N(N229), .A1N(n177), .Y(n105) );
  NOR2X1 U314 ( .A(n244), .B(n243), .Y(power2[7]) );
  OAI2BB2XL U315 ( .B0(n51), .B1(n41), .A0N(N228), .A1N(n177), .Y(n106) );
  OAI2BB2XL U316 ( .B0(n51), .B1(n42), .A0N(N227), .A1N(n177), .Y(n107) );
  OAI2BB2XL U317 ( .B0(n51), .B1(n43), .A0N(N226), .A1N(n177), .Y(n108) );
  OAI2BB2XL U318 ( .B0(n51), .B1(n44), .A0N(N225), .A1N(n177), .Y(n109) );
  OAI2BB2XL U319 ( .B0(n51), .B1(n45), .A0N(N224), .A1N(n177), .Y(n110) );
  OAI2BB2XL U320 ( .B0(n51), .B1(n46), .A0N(N223), .A1N(n177), .Y(n111) );
  OAI2BB2XL U321 ( .B0(n51), .B1(n47), .A0N(N222), .A1N(n177), .Y(n112) );
  AOI2BB1X1 U322 ( .A0N(read_counter[1]), .A1N(n216), .B0(N66), .Y(n101) );
  OAI2BB2XL U323 ( .B0(n216), .B1(n94), .A0N(read_counter[3]), .A1N(n100), .Y(
        N69) );
  OAI21XL U324 ( .A0(read_counter[2]), .A1(n216), .B0(n101), .Y(n100) );
  NOR2X1 U325 ( .A(n216), .B(n180), .Y(N66) );
  OAI21XL U326 ( .A0(n101), .A1(n219), .B0(n102), .Y(N68) );
  NAND4X1 U327 ( .A(n180), .B(n177), .C(read_counter[1]), .D(n219), .Y(n102)
         );
  CLKINVX1 U328 ( .A(gray_data[7]), .Y(n213) );
  NOR3X1 U329 ( .A(read_counter[2]), .B(read_counter[3]), .C(n222), .Y(n99) );
  NOR2X2 U330 ( .A(n179), .B(reset), .Y(n57) );
  AO22X1 U331 ( .A0(center_data[0]), .A1(n179), .B0(gray_data[0]), .B1(n57), 
        .Y(n114) );
  AO22X1 U332 ( .A0(center_data[1]), .A1(n179), .B0(gray_data[1]), .B1(n57), 
        .Y(n115) );
  AO22X1 U333 ( .A0(center_data[2]), .A1(n179), .B0(gray_data[2]), .B1(n57), 
        .Y(n116) );
  AO22X1 U334 ( .A0(center_data[3]), .A1(n179), .B0(gray_data[3]), .B1(n57), 
        .Y(n117) );
  AO22X1 U335 ( .A0(center_data[4]), .A1(n179), .B0(gray_data[4]), .B1(n57), 
        .Y(n118) );
  AO22X1 U336 ( .A0(center_data[5]), .A1(n179), .B0(gray_data[5]), .B1(n57), 
        .Y(n119) );
  AO22X1 U337 ( .A0(center_data[6]), .A1(n179), .B0(gray_data[6]), .B1(n57), 
        .Y(n120) );
  AO22X1 U338 ( .A0(center_data[7]), .A1(n179), .B0(gray_data[7]), .B1(n57), 
        .Y(n121) );
  CLKBUFX3 U339 ( .A(n56), .Y(n179) );
  CLKINVX1 U340 ( .A(i[4]), .Y(n187) );
  NOR3X1 U341 ( .A(read_counter[1]), .B(read_counter[2]), .C(n218), .Y(n69) );
  NOR2X1 U342 ( .A(n31), .B(n181), .Y(N247) );
  NOR2X1 U343 ( .A(n33), .B(n181), .Y(N245) );
  NOR2X1 U344 ( .A(n32), .B(n181), .Y(N246) );
  NOR2X1 U345 ( .A(n47), .B(n181), .Y(N265) );
  NOR2X1 U346 ( .A(n46), .B(n181), .Y(N266) );
  NOR2X1 U347 ( .A(n45), .B(n181), .Y(N267) );
  NOR2X1 U348 ( .A(n44), .B(n181), .Y(N268) );
  NOR2X1 U349 ( .A(n43), .B(n181), .Y(N269) );
  NOR2X1 U350 ( .A(n42), .B(n181), .Y(N270) );
  NOR2X1 U351 ( .A(n41), .B(n181), .Y(N271) );
  NOR2X1 U352 ( .A(n40), .B(n181), .Y(N272) );
  AND3X2 U353 ( .A(S[1]), .B(n214), .C(S[0]), .Y(N276) );
  CLKINVX1 U354 ( .A(n63), .Y(n217) );
  OAI31XL U355 ( .A0(S[0]), .A1(gray_ready), .A2(S[1]), .B0(n64), .Y(n63) );
  OAI2BB1XL U356 ( .A0N(n65), .A1N(N282), .B0(S[0]), .Y(n64) );
  AOI22X1 U357 ( .A0(N146), .A1(n78), .B0(N125), .B1(n79), .Y(n77) );
  OR2X1 U358 ( .A(j[1]), .B(j[0]), .Y(n188) );
  AOI22X1 U359 ( .A0(N145), .A1(n78), .B0(N124), .B1(n79), .Y(n80) );
  AOI22X1 U360 ( .A0(N140), .A1(n78), .B0(n223), .B1(n79), .Y(n97) );
  AOI22X1 U361 ( .A0(N141), .A1(n78), .B0(N120), .B1(n79), .Y(n84) );
  AOI22X1 U362 ( .A0(N142), .A1(n78), .B0(N121), .B1(n79), .Y(n83) );
  AOI22X1 U363 ( .A0(N143), .A1(n78), .B0(N122), .B1(n79), .Y(n82) );
  CLKINVX1 U364 ( .A(j[4]), .Y(n193) );
  NAND3BX1 U365 ( .AN(read_counter_m2[3]), .B(n239), .C(greater_than), .Y(n238) );
  XNOR2X1 U366 ( .A(read_counter[2]), .B(n222), .Y(n50) );
  XNOR2X1 U367 ( .A(n220), .B(n49), .Y(read_counter_m2[3]) );
  NOR2X1 U368 ( .A(read_counter[1]), .B(n50), .Y(n49) );
  NOR2X1 U369 ( .A(n242), .B(n238), .Y(power2[2]) );
  NOR2X1 U370 ( .A(n243), .B(n238), .Y(power2[3]) );
  NOR2X1 U371 ( .A(n244), .B(n240), .Y(power2[4]) );
  NOR2X1 U372 ( .A(n244), .B(n241), .Y(power2[5]) );
  NOR2X1 U373 ( .A(n244), .B(n242), .Y(power2[6]) );
  NOR2X1 U374 ( .A(n241), .B(n238), .Y(power2[1]) );
  OAI22XL U375 ( .A0(n221), .A1(n65), .B0(n66), .B1(n67), .Y(n136) );
  NAND4X1 U376 ( .A(i[1]), .B(i[2]), .C(i[3]), .D(i[4]), .Y(n67) );
  NAND4X1 U377 ( .A(i[5]), .B(i[6]), .C(n68), .D(n62), .Y(n66) );
  NOR2X1 U378 ( .A(i[0]), .B(n55), .Y(n68) );
  CLKINVX1 U379 ( .A(j[5]), .Y(n224) );
  CLKINVX1 U380 ( .A(j[6]), .Y(n225) );
  NAND2BX1 U381 ( .AN(n50), .B(greater_than), .Y(n239) );
  NAND2X1 U382 ( .A(S[1]), .B(n13), .Y(n55) );
  AND4X1 U383 ( .A(j[5]), .B(j[4]), .C(j[6]), .D(n104), .Y(n62) );
  NOR4X1 U384 ( .A(j[0]), .B(n33), .C(n32), .D(n31), .Y(n104) );
  NAND2X1 U385 ( .A(n218), .B(read_counter[1]), .Y(n240) );
  CLKINVX1 U386 ( .A(center_data[0]), .Y(n208) );
  NAND2X1 U387 ( .A(n180), .B(read_counter[1]), .Y(n241) );
  CLKINVX1 U388 ( .A(center_data[6]), .Y(n209) );
  NAND2X1 U389 ( .A(n69), .B(read_counter[3]), .Y(n65) );
  AND2X1 U390 ( .A(j[1]), .B(N356), .Y(N358) );
  AND2X1 U391 ( .A(j[2]), .B(N356), .Y(N359) );
  AND2X1 U392 ( .A(j[3]), .B(N356), .Y(N360) );
  AND2X1 U393 ( .A(j[4]), .B(N356), .Y(N361) );
  AND2X1 U394 ( .A(j[5]), .B(N356), .Y(N362) );
  AND2X1 U395 ( .A(N356), .B(j[6]), .Y(N363) );
  OAI2BB1X1 U396 ( .A0N(i[0]), .A1N(i[1]), .B0(n182), .Y(N113) );
  OR2X1 U397 ( .A(n182), .B(i[2]), .Y(n183) );
  OAI2BB1X1 U398 ( .A0N(n182), .A1N(i[2]), .B0(n183), .Y(N114) );
  NOR2X1 U399 ( .A(n183), .B(i[3]), .Y(n184) );
  AO21X1 U400 ( .A0(n183), .A1(i[3]), .B0(n184), .Y(N115) );
  NAND2X1 U401 ( .A(n184), .B(n187), .Y(n185) );
  OAI21XL U402 ( .A0(n184), .A1(n187), .B0(n185), .Y(N116) );
  XNOR2X1 U403 ( .A(i[5]), .B(n185), .Y(N117) );
  NOR2X1 U404 ( .A(i[5]), .B(n185), .Y(n186) );
  XOR2X1 U405 ( .A(i[6]), .B(n186), .Y(N118) );
  OAI2BB1X1 U406 ( .A0N(j[0]), .A1N(j[1]), .B0(n188), .Y(N120) );
  OR2X1 U407 ( .A(n188), .B(j[2]), .Y(n189) );
  OAI2BB1X1 U408 ( .A0N(n188), .A1N(j[2]), .B0(n189), .Y(N121) );
  NOR2X1 U409 ( .A(n189), .B(j[3]), .Y(n190) );
  AO21X1 U410 ( .A0(n189), .A1(j[3]), .B0(n190), .Y(N122) );
  NAND2X1 U411 ( .A(n190), .B(n193), .Y(n191) );
  OAI21XL U412 ( .A0(n190), .A1(n193), .B0(n191), .Y(N123) );
  XNOR2X1 U413 ( .A(j[5]), .B(n191), .Y(N124) );
  NOR2X1 U414 ( .A(j[5]), .B(n191), .Y(n192) );
  XOR2X1 U415 ( .A(j[6]), .B(n192), .Y(N125) );
  NAND2BX1 U416 ( .AN(center_data[4]), .B(gray_data[4]), .Y(n194) );
  OAI222XL U417 ( .A0(center_data[5]), .A1(n212), .B0(center_data[5]), .B1(
        n194), .C0(n212), .C1(n194), .Y(n195) );
  OAI222XL U418 ( .A0(gray_data[6]), .A1(n195), .B0(n209), .B1(n195), .C0(
        gray_data[6]), .C1(n209), .Y(n206) );
  NOR2BX1 U419 ( .AN(center_data[4]), .B(gray_data[4]), .Y(n196) );
  OAI22XL U420 ( .A0(n196), .A1(n212), .B0(center_data[5]), .B1(n196), .Y(n204) );
  NAND2BX1 U421 ( .AN(center_data[2]), .B(gray_data[2]), .Y(n202) );
  OAI2BB2XL U422 ( .B0(gray_data[0]), .B1(n208), .A0N(n210), .A1N(
        center_data[1]), .Y(n197) );
  OAI21XL U423 ( .A0(center_data[1]), .A1(n210), .B0(n197), .Y(n200) );
  NOR2BX1 U424 ( .AN(center_data[2]), .B(gray_data[2]), .Y(n198) );
  OAI22XL U425 ( .A0(n198), .A1(n211), .B0(center_data[3]), .B1(n198), .Y(n199) );
  AOI2BB2X1 U426 ( .B0(n200), .B1(n199), .A0N(n202), .A1N(n211), .Y(n201) );
  OAI221XL U427 ( .A0(center_data[3]), .A1(n202), .B0(center_data[3]), .B1(
        n211), .C0(n201), .Y(n203) );
  OAI211X1 U428 ( .A0(gray_data[6]), .A1(n209), .B0(n204), .C0(n203), .Y(n205)
         );
  AO22X1 U429 ( .A0(n213), .A1(center_data[7]), .B0(n206), .B1(n205), .Y(n207)
         );
  OAI21XL U430 ( .A0(center_data[7]), .A1(n213), .B0(n207), .Y(N212) );
endmodule

