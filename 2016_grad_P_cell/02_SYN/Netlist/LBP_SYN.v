/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Mar 20 11:25:31 2025
/////////////////////////////////////////////////////////////


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   N66, N67, N68, N69, greater_than, N245, N246, N247, N248, N249, N250,
         N251, N252, N253, N254, N256, N257, N265, N266, N267, N268, N269,
         N270, N271, N272, N276, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, DP_OP_60J1_122_504_n25, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n2450, n2460, n2470, n2480, n2490, n2500, n2510, n2520, n2530, n2540,
         n255, n2560, n2570, n258, n259, n260, n261, n262, n263, n264, n2650,
         n2660, n2670, n2680, n2690, n2700, n2710, n2720, n273, n274, n275,
         n2760, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n434;
  wire   [1:0] S;
  wire   [3:0] read_counter;
  wire   [6:0] i;
  wire   [6:0] j;
  wire   [7:0] center_data;
  wire   [7:0] sum;

  DFFHQX1 j_reg_3_ ( .D(n146), .CK(clk), .Q(j[3]) );
  DFFHQX1 j_reg_5_ ( .D(n144), .CK(clk), .Q(j[5]) );
  DFFHQX1 j_reg_6_ ( .D(n143), .CK(clk), .Q(j[6]) );
  DFFHQX1 i_reg_2_ ( .D(n140), .CK(clk), .Q(i[2]) );
  DFFHQX1 i_reg_3_ ( .D(n139), .CK(clk), .Q(i[3]) );
  DFFHQX1 i_reg_4_ ( .D(n138), .CK(clk), .Q(i[4]) );
  DFFHQX1 i_reg_5_ ( .D(n137), .CK(clk), .Q(i[5]) );
  DFFHQX1 i_reg_6_ ( .D(n136), .CK(clk), .Q(i[6]) );
  DFFHQX1 center_data_reg_7_ ( .D(n135), .CK(clk), .Q(center_data[7]) );
  DFFHQX1 center_data_reg_6_ ( .D(n134), .CK(clk), .Q(center_data[6]) );
  DFFHQX1 center_data_reg_5_ ( .D(n133), .CK(clk), .Q(center_data[5]) );
  DFFHQX1 center_data_reg_4_ ( .D(n132), .CK(clk), .Q(center_data[4]) );
  DFFHQX1 center_data_reg_3_ ( .D(n131), .CK(clk), .Q(center_data[3]) );
  DFFHQX1 center_data_reg_2_ ( .D(n130), .CK(clk), .Q(center_data[2]) );
  DFFHQX1 center_data_reg_1_ ( .D(n129), .CK(clk), .Q(center_data[1]) );
  DFFHQX1 center_data_reg_0_ ( .D(n128), .CK(clk), .Q(center_data[0]) );
  DFFHQX1 greater_than_reg ( .D(n127), .CK(clk), .Q(greater_than) );
  DFFHQX1 sum_reg_7_ ( .D(n119), .CK(clk), .Q(sum[7]) );
  DFFHQX1 sum_reg_6_ ( .D(n120), .CK(clk), .Q(sum[6]) );
  DFFHQX1 sum_reg_5_ ( .D(n121), .CK(clk), .Q(sum[5]) );
  DFFHQX1 sum_reg_4_ ( .D(n122), .CK(clk), .Q(sum[4]) );
  DFFHQX1 sum_reg_3_ ( .D(n123), .CK(clk), .Q(sum[3]) );
  DFFHQX1 sum_reg_2_ ( .D(n124), .CK(clk), .Q(sum[2]) );
  DFFHQX1 sum_reg_1_ ( .D(n125), .CK(clk), .Q(sum[1]) );
  DFFHQX1 sum_reg_0_ ( .D(n126), .CK(clk), .Q(sum[0]) );
  DFFHQX4 lbp_addr_reg_13_ ( .D(N257), .CK(clk), .Q(lbp_addr[13]) );
  DFFHQX4 lbp_addr_reg_12_ ( .D(N256), .CK(clk), .Q(lbp_addr[12]) );
  DFFHQX4 lbp_addr_reg_10_ ( .D(N254), .CK(clk), .Q(lbp_addr[10]) );
  DFFHQX4 lbp_addr_reg_9_ ( .D(N253), .CK(clk), .Q(lbp_addr[9]) );
  DFFHQX4 lbp_addr_reg_8_ ( .D(N252), .CK(clk), .Q(lbp_addr[8]) );
  DFFHQX4 lbp_addr_reg_7_ ( .D(N251), .CK(clk), .Q(lbp_addr[7]) );
  DFFHQX4 lbp_addr_reg_6_ ( .D(N250), .CK(clk), .Q(lbp_addr[6]) );
  DFFHQX4 lbp_addr_reg_5_ ( .D(N249), .CK(clk), .Q(lbp_addr[5]) );
  DFFHQX4 lbp_addr_reg_4_ ( .D(N248), .CK(clk), .Q(lbp_addr[4]) );
  DFFHQX4 lbp_addr_reg_3_ ( .D(N247), .CK(clk), .Q(lbp_addr[3]) );
  DFFHQX4 lbp_addr_reg_2_ ( .D(N246), .CK(clk), .Q(lbp_addr[2]) );
  DFFHQX4 lbp_addr_reg_1_ ( .D(N245), .CK(clk), .Q(lbp_addr[1]) );
  DFFHQX4 lbp_addr_reg_0_ ( .D(n427), .CK(clk), .Q(lbp_addr[0]) );
  DFFHQX4 lbp_valid_reg ( .D(n428), .CK(clk), .Q(lbp_valid) );
  DFFHQX4 lbp_data_reg_7_ ( .D(N272), .CK(clk), .Q(lbp_data[7]) );
  DFFHQX4 lbp_data_reg_6_ ( .D(N271), .CK(clk), .Q(lbp_data[6]) );
  DFFHQX4 lbp_data_reg_5_ ( .D(N270), .CK(clk), .Q(lbp_data[5]) );
  DFFHQX4 lbp_data_reg_4_ ( .D(N269), .CK(clk), .Q(lbp_data[4]) );
  DFFHQX4 lbp_data_reg_3_ ( .D(N268), .CK(clk), .Q(lbp_data[3]) );
  DFFHQX4 lbp_data_reg_2_ ( .D(N267), .CK(clk), .Q(lbp_data[2]) );
  DFFHQX4 lbp_data_reg_1_ ( .D(N266), .CK(clk), .Q(lbp_data[1]) );
  DFFHQX4 lbp_data_reg_0_ ( .D(N265), .CK(clk), .Q(lbp_data[0]) );
  DFFHQX4 finish_reg ( .D(N276), .CK(clk), .Q(finish) );
  DFFHQX1 j_reg_2_ ( .D(n147), .CK(clk), .Q(j[2]) );
  DFFHQX1 j_reg_0_ ( .D(n149), .CK(clk), .Q(j[0]) );
  DFFHQX1 i_reg_1_ ( .D(n142), .CK(clk), .Q(i[1]) );
  DFFHQX1 j_reg_1_ ( .D(n148), .CK(clk), .Q(j[1]) );
  DFFHQX2 read_counter_reg_3_ ( .D(N69), .CK(clk), .Q(read_counter[3]) );
  DFFHQX4 read_counter_reg_1_ ( .D(N67), .CK(clk), .Q(read_counter[1]) );
  DFFTRX4 lbp_addr_reg_11_ ( .D(n426), .RN(i[4]), .CK(clk), .Q(lbp_addr[11])
         );
  DFFX1 j_reg_4_ ( .D(n145), .CK(clk), .Q(j[4]), .QN(DP_OP_60J1_122_504_n25)
         );
  DFFHQX1 i_reg_0_ ( .D(n141), .CK(clk), .Q(i[0]) );
  DFFRHQXL S_reg_1_ ( .D(n151), .CK(clk), .RN(n434), .Q(S[1]) );
  DFFRHQXL S_reg_0_ ( .D(n150), .CK(clk), .RN(n434), .Q(S[0]) );
  DFFHQX2 read_counter_reg_2_ ( .D(N68), .CK(clk), .Q(read_counter[2]) );
  DFFHQX2 read_counter_reg_0_ ( .D(N66), .CK(clk), .Q(read_counter[0]) );
  NOR2X1 U207 ( .A(n172), .B(n2510), .Y(n260) );
  NOR2XL U208 ( .A(n334), .B(n331), .Y(n332) );
  NOR2XL U209 ( .A(n332), .B(sum[2]), .Y(n367) );
  NOR2XL U210 ( .A(n281), .B(n225), .Y(n227) );
  NOR2XL U211 ( .A(n166), .B(n165), .Y(n301) );
  NOR2XL U212 ( .A(n340), .B(n327), .Y(n351) );
  NOR2XL U213 ( .A(j[4]), .B(j[3]), .Y(n219) );
  NOR2XL U214 ( .A(i[2]), .B(n187), .Y(n206) );
  INVXL U215 ( .A(n321), .Y(n297) );
  NOR2XL U216 ( .A(n388), .B(n411), .Y(n386) );
  NOR2XL U217 ( .A(n157), .B(n158), .Y(n154) );
  INVXL U218 ( .A(n264), .Y(n428) );
  NOR2XL U219 ( .A(n264), .B(n310), .Y(N253) );
  NAND2X4 U220 ( .A(n275), .B(n283), .Y(gray_addr[11]) );
  AOI211X1 U221 ( .A0(n212), .A1(i[5]), .B0(n211), .C0(n210), .Y(n213) );
  INVX1 U222 ( .A(n233), .Y(n2670) );
  NAND2X1 U223 ( .A(n216), .B(n215), .Y(n233) );
  NAND2XL U224 ( .A(n230), .B(n198), .Y(n241) );
  NOR2X1 U225 ( .A(n230), .B(n201), .Y(n216) );
  NOR2X1 U226 ( .A(n322), .B(n2480), .Y(n302) );
  INVX1 U227 ( .A(n426), .Y(n167) );
  NOR2X1 U228 ( .A(n322), .B(read_counter[3]), .Y(n324) );
  NOR2X1 U229 ( .A(n2530), .B(read_counter[3]), .Y(n193) );
  NAND2XL U230 ( .A(n325), .B(n2530), .Y(n191) );
  NAND2X1 U231 ( .A(n434), .B(n298), .Y(n321) );
  INVX1 U232 ( .A(j[0]), .Y(n200) );
  INVX1 U233 ( .A(j[1]), .Y(n2510) );
  INVX1 U234 ( .A(read_counter[1]), .Y(n333) );
  INVX1 U235 ( .A(i[1]), .Y(n308) );
  NOR2X1 U236 ( .A(n2460), .B(j[5]), .Y(n421) );
  OAI31XL U237 ( .A0(i[6]), .A1(i[5]), .A2(n283), .B0(n282), .Y(n284) );
  AOI22X1 U238 ( .A0(n237), .A1(i[2]), .B0(n309), .B1(n281), .Y(n239) );
  OAI2BB1XL U239 ( .A0N(j[5]), .A1N(n243), .B0(n422), .Y(n221) );
  NAND2XL U240 ( .A(n199), .B(n241), .Y(n229) );
  NAND2XL U241 ( .A(n242), .B(n241), .Y(n2710) );
  NOR2X1 U242 ( .A(n155), .B(n156), .Y(n157) );
  NOR2X1 U243 ( .A(n160), .B(n161), .Y(n159) );
  NAND2XL U244 ( .A(n218), .B(n217), .Y(n242) );
  OAI2BB1XL U245 ( .A0N(n208), .A1N(n226), .B0(n207), .Y(n278) );
  NOR2X1 U246 ( .A(n338), .B(sum[4]), .Y(n354) );
  INVX1 U247 ( .A(n306), .Y(n317) );
  INVX1 U248 ( .A(n305), .Y(n320) );
  NOR2X1 U249 ( .A(i[5]), .B(n283), .Y(n211) );
  NOR2X1 U250 ( .A(n411), .B(read_counter[0]), .Y(N66) );
  NOR2X1 U251 ( .A(n340), .B(n339), .Y(n341) );
  NOR2X1 U252 ( .A(n197), .B(j[0]), .Y(n218) );
  NOR2X1 U253 ( .A(n340), .B(n337), .Y(n338) );
  NOR2X1 U254 ( .A(i[0]), .B(n227), .Y(n161) );
  NOR2X1 U255 ( .A(n340), .B(n331), .Y(n347) );
  INVX1 U256 ( .A(n419), .Y(n411) );
  NOR2X1 U257 ( .A(n226), .B(n263), .Y(n160) );
  NOR2X1 U258 ( .A(n321), .B(gray_req), .Y(n416) );
  NOR2X1 U259 ( .A(n264), .B(n312), .Y(N254) );
  NOR2X1 U260 ( .A(n264), .B(n316), .Y(N256) );
  OAI21X1 U261 ( .A0(n191), .A1(read_counter[0]), .B0(n2560), .Y(n197) );
  NOR2X1 U262 ( .A(n264), .B(n319), .Y(N257) );
  NOR2X1 U263 ( .A(n264), .B(n263), .Y(N251) );
  MXI2X1 U264 ( .A(n324), .B(n193), .S0(n328), .Y(n230) );
  NOR2X1 U265 ( .A(n264), .B(n308), .Y(N252) );
  NOR2X1 U266 ( .A(n264), .B(n2510), .Y(N245) );
  NOR2X1 U267 ( .A(n191), .B(n2540), .Y(n225) );
  OR2X1 U268 ( .A(n2490), .B(S[1]), .Y(n2520) );
  NAND2BX1 U269 ( .AN(S[0]), .B(S[1]), .Y(n298) );
  NOR2X1 U270 ( .A(j[2]), .B(j[1]), .Y(n217) );
  INVX1 U271 ( .A(read_counter[0]), .Y(n328) );
  INVX2 U272 ( .A(read_counter[2]), .Y(n2530) );
  MXI2X1 U273 ( .A(n181), .B(n180), .S0(n287), .Y(n183) );
  MXI2X1 U274 ( .A(n175), .B(n174), .S0(n287), .Y(n177) );
  NAND4BXL U275 ( .AN(n324), .B(greater_than), .C(n326), .D(n323), .Y(n340) );
  NAND2XL U276 ( .A(read_counter[3]), .B(n322), .Y(n323) );
  NOR2XL U277 ( .A(n334), .B(n327), .Y(n329) );
  NOR2XL U278 ( .A(n172), .B(DP_OP_60J1_122_504_n25), .Y(n286) );
  NOR2XL U279 ( .A(n172), .B(n215), .Y(n293) );
  NAND2XL U280 ( .A(n329), .B(sum[1]), .Y(n374) );
  OR2XL U281 ( .A(n329), .B(sum[1]), .Y(n375) );
  XOR2XL U282 ( .A(n277), .B(i[6]), .Y(n318) );
  AND2X1 U283 ( .A(n2760), .B(i[5]), .Y(n277) );
  XOR2XL U284 ( .A(n2760), .B(i[5]), .Y(n315) );
  NOR2XL U285 ( .A(n172), .B(n169), .Y(n178) );
  INVXL U286 ( .A(n197), .Y(n198) );
  OAI21XL U287 ( .A0(n242), .A1(n220), .B0(n241), .Y(n422) );
  INVXL U288 ( .A(n219), .Y(n220) );
  NAND2XL U289 ( .A(n226), .B(n279), .Y(n207) );
  NAND3XL U290 ( .A(n2540), .B(read_counter[3]), .C(n2530), .Y(n192) );
  NOR3BXL U291 ( .AN(n206), .B(i[4]), .C(i[3]), .Y(n208) );
  NOR2XL U292 ( .A(n334), .B(n339), .Y(n335) );
  NAND2XL U293 ( .A(n333), .B(read_counter[0]), .Y(n339) );
  ADDHXL U294 ( .A(j[1]), .B(j[0]), .CO(n228), .S(n202) );
  NAND2X1 U295 ( .A(n2670), .B(n219), .Y(n2460) );
  AOI2BB2XL U296 ( .B0(n193), .B1(n333), .A0N(n331), .A1N(read_counter[3]), 
        .Y(n226) );
  NAND2XL U297 ( .A(n263), .B(n308), .Y(n187) );
  OAI2BB1XL U298 ( .A0N(n263), .A1N(n226), .B0(n207), .Y(n235) );
  NAND2XL U299 ( .A(n225), .B(n206), .Y(n238) );
  INVXL U300 ( .A(n225), .Y(n279) );
  OAI2BB1XL U301 ( .A0N(n206), .A1N(n226), .B0(n207), .Y(n273) );
  AND2XL U302 ( .A(n315), .B(n281), .Y(n210) );
  OAI2BB1X1 U303 ( .A0N(n193), .A1N(read_counter[1]), .B0(n192), .Y(n281) );
  OAI21XL U304 ( .A0(n279), .A1(n316), .B0(n278), .Y(n280) );
  NAND2XL U305 ( .A(n225), .B(n208), .Y(n283) );
  NAND2XL U306 ( .A(n332), .B(sum[2]), .Y(n368) );
  INVXL U307 ( .A(n374), .Y(n330) );
  NAND2XL U308 ( .A(n335), .B(sum[3]), .Y(n361) );
  OR2XL U309 ( .A(n335), .B(sum[3]), .Y(n362) );
  NOR2XL U310 ( .A(reset), .B(n2520), .Y(n419) );
  INVXL U311 ( .A(gray_data[6]), .Y(n406) );
  INVXL U312 ( .A(gray_data[7]), .Y(n407) );
  OAI21XL U313 ( .A0(n405), .A1(n404), .B0(n403), .Y(n410) );
  AOI22XL U314 ( .A0(gray_data[6]), .A1(n402), .B0(gray_data[5]), .B1(n401), 
        .Y(n403) );
  OAI22XL U315 ( .A0(gray_data[5]), .A1(n401), .B0(gray_data[4]), .B1(n400), 
        .Y(n404) );
  AOI31XL U316 ( .A0(n399), .A1(n398), .A2(n397), .B0(n396), .Y(n405) );
  AND2X1 U317 ( .A(n209), .B(i[3]), .Y(n2720) );
  NOR2XL U318 ( .A(n172), .B(n168), .Y(n170) );
  AND2XL U319 ( .A(n293), .B(n288), .Y(n173) );
  XOR2XL U320 ( .A(n179), .B(n178), .Y(n180) );
  NOR2XL U321 ( .A(n172), .B(n2700), .Y(n288) );
  XOR2XL U322 ( .A(n289), .B(n288), .Y(n290) );
  INVXL U323 ( .A(n293), .Y(n289) );
  NOR2X1 U324 ( .A(n167), .B(n301), .Y(n258) );
  NAND2X1 U325 ( .A(n2530), .B(n333), .Y(n322) );
  NAND2XL U326 ( .A(n328), .B(read_counter[1]), .Y(n337) );
  NAND3BXL U327 ( .AN(n326), .B(greater_than), .C(n325), .Y(n334) );
  INVXL U328 ( .A(n2540), .Y(n331) );
  AOI2BB1XL U329 ( .A0N(n422), .A1N(n169), .B0(n421), .Y(n423) );
  OR2XL U330 ( .A(n297), .B(n258), .Y(n305) );
  NAND2XL U331 ( .A(n428), .B(n301), .Y(n306) );
  INVXL U332 ( .A(n327), .Y(n255) );
  NOR2X1 U333 ( .A(read_counter[1]), .B(read_counter[0]), .Y(n2540) );
  INVXL U334 ( .A(read_counter[3]), .Y(n325) );
  OAI2BB1XL U335 ( .A0N(read_counter[2]), .A1N(n255), .B0(n419), .Y(n2570) );
  NAND4XL U336 ( .A(j[6]), .B(j[4]), .C(j[3]), .D(j[1]), .Y(n165) );
  NAND3XL U337 ( .A(n200), .B(j[2]), .C(j[5]), .Y(n166) );
  NOR4XL U338 ( .A(i[0]), .B(n310), .C(n298), .D(n308), .Y(n299) );
  INVXL U339 ( .A(n426), .Y(n264) );
  NAND2XL U340 ( .A(n338), .B(sum[4]), .Y(n355) );
  INVXL U341 ( .A(n354), .Y(n356) );
  INVXL U342 ( .A(n361), .Y(n336) );
  INVXL U343 ( .A(gray_data[3]), .Y(n394) );
  INVXL U344 ( .A(gray_data[4]), .Y(n395) );
  AOI31XL U345 ( .A0(gray_req), .A1(n324), .A2(n328), .B0(reset), .Y(n388) );
  AOI21XL U346 ( .A0(n197), .A1(j[0]), .B0(n195), .Y(n196) );
  OAI21XL U347 ( .A0(n425), .A1(n243), .B0(n200), .Y(n194) );
  INVXL U348 ( .A(n204), .Y(n205) );
  OAI21XL U349 ( .A0(n229), .A1(n2510), .B0(n203), .Y(n204) );
  AOI21XL U350 ( .A0(n425), .A1(n202), .B0(n216), .Y(n203) );
  AOI22XL U351 ( .A0(n232), .A1(n425), .B0(j[2]), .B1(n231), .Y(n234) );
  OAI21XL U352 ( .A0(n230), .A1(n2510), .B0(n229), .Y(n231) );
  AOI22XL U353 ( .A0(n2450), .A1(n425), .B0(j[4]), .B1(n244), .Y(n2470) );
  OAI2BB1XL U354 ( .A0N(j[3]), .A1N(n243), .B0(n2710), .Y(n244) );
  AOI21XL U355 ( .A0(n425), .A1(n223), .B0(n222), .Y(n224) );
  INVXL U356 ( .A(n189), .Y(n190) );
  OAI21XL U357 ( .A0(n235), .A1(n308), .B0(n188), .Y(n189) );
  AOI2BB2XL U358 ( .B0(n307), .B1(n281), .A0N(n187), .A1N(n279), .Y(n188) );
  OAI21XL U359 ( .A0(n279), .A1(n308), .B0(n235), .Y(n237) );
  INVXL U360 ( .A(n185), .Y(n186) );
  OAI21XL U361 ( .A0(n273), .A1(n312), .B0(n184), .Y(n185) );
  AOI2BB2XL U362 ( .B0(n311), .B1(n281), .A0N(i[3]), .A1N(n238), .Y(n184) );
  AOI22XL U363 ( .A0(n313), .A1(n281), .B0(i[4]), .B1(n274), .Y(n275) );
  OAI21XL U364 ( .A0(n279), .A1(n312), .B0(n273), .Y(n274) );
  INVXL U365 ( .A(n278), .Y(n212) );
  INVXL U366 ( .A(n284), .Y(n285) );
  AOI22XL U367 ( .A0(n318), .A1(n281), .B0(i[6]), .B1(n280), .Y(n282) );
  OAI211XL U368 ( .A0(i[0]), .A1(n306), .B0(n259), .C0(n434), .Y(n141) );
  NAND2XL U369 ( .A(n305), .B(i[0]), .Y(n259) );
  OAI2BB1XL U370 ( .A0N(n297), .A1N(j[4]), .B0(n164), .Y(n145) );
  NOR2X2 U371 ( .A(reset), .B(n298), .Y(n426) );
  NOR3XL U372 ( .A(n411), .B(n255), .C(n2540), .Y(N67) );
  AOI21XL U373 ( .A0(n2530), .A1(n327), .B0(n2570), .Y(N68) );
  OAI22XL U374 ( .A0(n2570), .A1(n325), .B0(n411), .B1(n2560), .Y(N69) );
  OAI2BB1XL U375 ( .A0N(n297), .A1N(j[1]), .B0(n262), .Y(n148) );
  INVXL U376 ( .A(n261), .Y(n262) );
  OAI2BB2XL U377 ( .B0(n320), .B1(n308), .A0N(n307), .A1N(n317), .Y(n142) );
  OAI2BB1XL U378 ( .A0N(n297), .A1N(j[0]), .B0(n296), .Y(n149) );
  NAND2XL U379 ( .A(n295), .B(n321), .Y(n296) );
  OAI2BB1XL U380 ( .A0N(n297), .A1N(j[2]), .B0(n163), .Y(n147) );
  OAI211XL U381 ( .A0(n302), .A1(n2520), .B0(n2500), .C0(n298), .Y(n150) );
  NAND2XL U382 ( .A(gray_ready), .B(n2490), .Y(n2500) );
  INVXL U383 ( .A(reset), .Y(n434) );
  OAI2BB2XL U384 ( .B0(n304), .B1(n303), .A0N(gray_req), .A1N(n302), .Y(n151)
         );
  NAND2XL U385 ( .A(n300), .B(n299), .Y(n304) );
  INVXL U386 ( .A(n301), .Y(n303) );
  NOR4XL U387 ( .A(n314), .B(n312), .C(n319), .D(n316), .Y(n300) );
  AND3XL U388 ( .A(S[1]), .B(S[0]), .C(n434), .Y(N276) );
  AND2XL U389 ( .A(n428), .B(sum[0]), .Y(N265) );
  AND2XL U390 ( .A(n428), .B(sum[1]), .Y(N266) );
  AND2XL U391 ( .A(n428), .B(sum[2]), .Y(N267) );
  AND2XL U392 ( .A(n428), .B(sum[3]), .Y(N268) );
  AND2XL U393 ( .A(n428), .B(sum[4]), .Y(N269) );
  AND2XL U394 ( .A(n428), .B(sum[5]), .Y(N270) );
  AND2XL U395 ( .A(n428), .B(sum[6]), .Y(N271) );
  AND2XL U396 ( .A(n428), .B(sum[7]), .Y(N272) );
  AND2XL U397 ( .A(n428), .B(j[2]), .Y(N246) );
  AND2XL U398 ( .A(n428), .B(j[3]), .Y(N247) );
  AND2XL U399 ( .A(n428), .B(j[4]), .Y(N248) );
  AND2XL U400 ( .A(n428), .B(j[5]), .Y(N249) );
  AND2XL U401 ( .A(n428), .B(j[6]), .Y(N250) );
  OAI2BB1XL U402 ( .A0N(n419), .A1N(n418), .B0(n417), .Y(n126) );
  AND2XL U403 ( .A(n415), .B(n414), .Y(n418) );
  NAND2XL U404 ( .A(n416), .B(sum[0]), .Y(n417) );
  OR2XL U405 ( .A(n413), .B(sum[0]), .Y(n415) );
  OAI2BB1XL U406 ( .A0N(n419), .A1N(n379), .B0(n378), .Y(n125) );
  NAND2XL U407 ( .A(n416), .B(sum[1]), .Y(n378) );
  NAND2XL U408 ( .A(n375), .B(n374), .Y(n377) );
  OAI2BB1XL U409 ( .A0N(n419), .A1N(n373), .B0(n372), .Y(n124) );
  XOR2XL U410 ( .A(n371), .B(n370), .Y(n373) );
  NAND2XL U411 ( .A(n416), .B(sum[2]), .Y(n372) );
  NAND2XL U412 ( .A(n369), .B(n368), .Y(n370) );
  OAI2BB1XL U413 ( .A0N(n419), .A1N(n366), .B0(n365), .Y(n123) );
  XNOR2XL U414 ( .A(n364), .B(n363), .Y(n366) );
  NAND2XL U415 ( .A(n416), .B(sum[3]), .Y(n365) );
  NAND2XL U416 ( .A(n362), .B(n361), .Y(n363) );
  OAI2BB1XL U417 ( .A0N(n419), .A1N(n360), .B0(n359), .Y(n122) );
  XOR2XL U418 ( .A(n358), .B(n357), .Y(n360) );
  NAND2XL U419 ( .A(n416), .B(sum[4]), .Y(n359) );
  NAND2XL U420 ( .A(n356), .B(n355), .Y(n357) );
  OAI2BB1XL U421 ( .A0N(n419), .A1N(n353), .B0(n352), .Y(n121) );
  NAND2XL U422 ( .A(n416), .B(sum[5]), .Y(n352) );
  OAI2BB1XL U423 ( .A0N(n419), .A1N(n349), .B0(n348), .Y(n120) );
  NAND2XL U424 ( .A(n416), .B(sum[6]), .Y(n348) );
  OAI2BB1XL U425 ( .A0N(sum[7]), .A1N(n416), .B0(n345), .Y(n119) );
  XOR2XL U426 ( .A(n343), .B(n342), .Y(n344) );
  OAI2BB2XL U427 ( .B0(n412), .B1(n411), .A0N(n416), .A1N(greater_than), .Y(
        n127) );
  AOI22XL U428 ( .A0(n410), .A1(n409), .B0(gray_data[7]), .B1(n408), .Y(n412)
         );
  AOI22XL U429 ( .A0(center_data[7]), .A1(n407), .B0(n406), .B1(center_data[6]), .Y(n409) );
  OAI2BB1XL U430 ( .A0N(n388), .A1N(center_data[0]), .B0(n382), .Y(n128) );
  NAND2XL U431 ( .A(n386), .B(gray_data[0]), .Y(n382) );
  OAI2BB1XL U432 ( .A0N(n388), .A1N(center_data[1]), .B0(n381), .Y(n129) );
  NAND2XL U433 ( .A(n386), .B(gray_data[1]), .Y(n381) );
  OAI2BB1XL U434 ( .A0N(n388), .A1N(center_data[2]), .B0(n380), .Y(n130) );
  NAND2XL U435 ( .A(n386), .B(gray_data[2]), .Y(n380) );
  OAI2BB2XL U436 ( .B0(n383), .B1(n394), .A0N(center_data[3]), .A1N(n388), .Y(
        n131) );
  OAI22XL U437 ( .A0(n383), .A1(n395), .B0(n400), .B1(n384), .Y(n132) );
  OAI2BB2XL U438 ( .B0(n401), .B1(n384), .A0N(gray_data[5]), .A1N(n386), .Y(
        n133) );
  OAI2BB1XL U439 ( .A0N(n388), .A1N(center_data[6]), .B0(n385), .Y(n134) );
  NAND2XL U440 ( .A(n386), .B(gray_data[6]), .Y(n385) );
  OAI2BB1XL U441 ( .A0N(n388), .A1N(center_data[7]), .B0(n387), .Y(n135) );
  NAND2XL U442 ( .A(n386), .B(gray_data[7]), .Y(n387) );
  OAI2BB2XL U443 ( .B0(n320), .B1(n319), .A0N(n318), .A1N(n317), .Y(n136) );
  OAI2BB2XL U444 ( .B0(n320), .B1(n316), .A0N(n315), .A1N(n317), .Y(n137) );
  OAI2BB2XL U445 ( .B0(n320), .B1(n314), .A0N(n313), .A1N(n317), .Y(n138) );
  OAI2BB2XL U446 ( .B0(n320), .B1(n312), .A0N(n311), .A1N(n317), .Y(n139) );
  OAI2BB2XL U447 ( .B0(n320), .B1(n310), .A0N(n309), .A1N(n317), .Y(n140) );
  NAND2BXL U448 ( .AN(n177), .B(n176), .Y(n143) );
  NAND2XL U449 ( .A(n297), .B(j[6]), .Y(n176) );
  NAND2BXL U450 ( .AN(n183), .B(n182), .Y(n144) );
  NAND2XL U451 ( .A(n297), .B(j[5]), .Y(n182) );
  NAND2XL U452 ( .A(n292), .B(n162), .Y(n146) );
  NAND2XL U453 ( .A(n297), .B(j[3]), .Y(n292) );
  INVX8 U454 ( .A(n154), .Y(gray_addr[5]) );
  INVXL U455 ( .A(n424), .Y(n155) );
  INVXL U456 ( .A(n425), .Y(n156) );
  INVXL U457 ( .A(n423), .Y(n158) );
  ADDHXL U458 ( .A(j[5]), .B(n420), .CO(n214), .S(n424) );
  INVX4 U459 ( .A(n159), .Y(gray_addr[7]) );
  MX2XL U460 ( .A(n291), .B(n290), .S0(n294), .Y(n162) );
  XNOR2XL U461 ( .A(n294), .B(n293), .Y(n163) );
  XNOR2XL U462 ( .A(n287), .B(n286), .Y(n164) );
  INVXL U463 ( .A(n218), .Y(n199) );
  INVXL U464 ( .A(n194), .Y(n195) );
  XOR2XL U465 ( .A(n209), .B(i[3]), .Y(n311) );
  OAI31X1 U466 ( .A0(n326), .A1(read_counter[3]), .A2(n328), .B0(n192), .Y(
        n425) );
  NOR2XL U467 ( .A(n167), .B(n200), .Y(n427) );
  INVX2 U468 ( .A(n258), .Y(n172) );
  INVXL U469 ( .A(j[6]), .Y(n168) );
  INVXL U470 ( .A(n170), .Y(n175) );
  INVXL U471 ( .A(j[5]), .Y(n169) );
  AND2X1 U472 ( .A(n286), .B(n178), .Y(n171) );
  XNOR2X1 U473 ( .A(n171), .B(n170), .Y(n174) );
  INVXL U474 ( .A(j[2]), .Y(n215) );
  INVXL U475 ( .A(j[3]), .Y(n2700) );
  AND2X2 U476 ( .A(n173), .B(n294), .Y(n287) );
  INVXL U477 ( .A(n178), .Y(n181) );
  INVXL U478 ( .A(n286), .Y(n179) );
  INVXL U479 ( .A(i[0]), .Y(n263) );
  INVXL U480 ( .A(i[3]), .Y(n312) );
  INVX4 U481 ( .A(n186), .Y(gray_addr[10]) );
  ADDHXL U482 ( .A(i[1]), .B(i[0]), .CO(n236), .S(n307) );
  INVX4 U483 ( .A(n190), .Y(gray_addr[8]) );
  INVXL U484 ( .A(S[0]), .Y(n2490) );
  INVX8 U485 ( .A(n2520), .Y(gray_req) );
  NAND2XL U486 ( .A(read_counter[1]), .B(read_counter[0]), .Y(n327) );
  NAND2XL U487 ( .A(n193), .B(n255), .Y(n2560) );
  OAI21XL U488 ( .A0(n333), .A1(n2530), .B0(n322), .Y(n326) );
  INVXL U489 ( .A(n230), .Y(n243) );
  INVX4 U490 ( .A(n196), .Y(gray_addr[0]) );
  NAND2XL U491 ( .A(n2510), .B(n200), .Y(n201) );
  INVX4 U492 ( .A(n205), .Y(gray_addr[1]) );
  INVX8 U493 ( .A(n213), .Y(gray_addr[12]) );
  XOR2XL U494 ( .A(n214), .B(j[6]), .Y(n223) );
  MX2XL U495 ( .A(n421), .B(n221), .S0(j[6]), .Y(n222) );
  INVX8 U496 ( .A(n224), .Y(gray_addr[6]) );
  ADDHXL U497 ( .A(j[2]), .B(n228), .CO(n2650), .S(n232) );
  NAND2X4 U498 ( .A(n234), .B(n233), .Y(gray_addr[2]) );
  ADDHXL U499 ( .A(i[2]), .B(n236), .CO(n209), .S(n309) );
  NAND2X4 U500 ( .A(n239), .B(n238), .Y(gray_addr[9]) );
  ADDHXL U501 ( .A(j[4]), .B(n240), .CO(n420), .S(n2450) );
  NAND2X4 U502 ( .A(n2470), .B(n2460), .Y(gray_addr[4]) );
  NAND2XL U503 ( .A(read_counter[3]), .B(read_counter[0]), .Y(n2480) );
  INVXL U504 ( .A(i[6]), .Y(n319) );
  INVXL U505 ( .A(i[2]), .Y(n310) );
  INVXL U506 ( .A(i[5]), .Y(n316) );
  INVXL U507 ( .A(n386), .Y(n383) );
  INVXL U508 ( .A(center_data[4]), .Y(n400) );
  INVXL U509 ( .A(n388), .Y(n384) );
  ADDHXL U510 ( .A(n260), .B(n427), .CO(n294), .S(n261) );
  ADDHXL U511 ( .A(j[3]), .B(n2650), .CO(n240), .S(n2660) );
  NAND2XL U512 ( .A(n2660), .B(n425), .Y(n2690) );
  NAND2XL U513 ( .A(n2670), .B(n2700), .Y(n2680) );
  OAI211X4 U514 ( .A0(n2710), .A1(n2700), .B0(n2690), .C0(n2680), .Y(
        gray_addr[3]) );
  ADDHXL U515 ( .A(i[4]), .B(n2720), .CO(n2760), .S(n313) );
  INVX8 U516 ( .A(n285), .Y(gray_addr[13]) );
  INVXL U517 ( .A(n288), .Y(n291) );
  INVXL U518 ( .A(n427), .Y(n295) );
  INVXL U519 ( .A(i[4]), .Y(n314) );
  NOR2XL U520 ( .A(n334), .B(n337), .Y(n413) );
  NAND2XL U521 ( .A(n413), .B(sum[0]), .Y(n414) );
  INVX1 U522 ( .A(n414), .Y(n376) );
  AOI21XL U523 ( .A0(n375), .A1(n376), .B0(n330), .Y(n371) );
  OAI21XL U524 ( .A0(n371), .A1(n367), .B0(n368), .Y(n364) );
  AOI21XL U525 ( .A0(n364), .A1(n362), .B0(n336), .Y(n358) );
  OAI21XL U526 ( .A0(n358), .A1(n354), .B0(n355), .Y(n350) );
  XOR2XL U527 ( .A(n341), .B(sum[7]), .Y(n342) );
  NAND2XL U528 ( .A(n344), .B(n419), .Y(n345) );
  ADDFX1 U529 ( .A(n347), .B(sum[6]), .CI(n346), .CO(n343), .S(n349) );
  ADDFX1 U530 ( .A(n351), .B(sum[5]), .CI(n350), .CO(n346), .S(n353) );
  INVXL U531 ( .A(n367), .Y(n369) );
  XNOR2XL U532 ( .A(n377), .B(n376), .Y(n379) );
  INVXL U533 ( .A(center_data[5]), .Y(n401) );
  INVXL U534 ( .A(gray_data[2]), .Y(n389) );
  AOI22XL U535 ( .A0(center_data[3]), .A1(n394), .B0(n389), .B1(center_data[2]), .Y(n399) );
  INVXL U536 ( .A(center_data[2]), .Y(n390) );
  NAND2XL U537 ( .A(gray_data[2]), .B(n390), .Y(n393) );
  INVXL U538 ( .A(center_data[1]), .Y(n391) );
  NAND2XL U539 ( .A(gray_data[1]), .B(n391), .Y(n392) );
  NAND4BXL U540 ( .AN(gray_data[0]), .B(n393), .C(n392), .D(center_data[0]), 
        .Y(n398) );
  NAND3BXL U541 ( .AN(gray_data[1]), .B(center_data[1]), .C(n393), .Y(n397) );
  OAI22XL U542 ( .A0(center_data[4]), .A1(n395), .B0(n394), .B1(center_data[3]), .Y(n396) );
  INVXL U543 ( .A(center_data[6]), .Y(n402) );
  INVXL U544 ( .A(center_data[7]), .Y(n408) );
endmodule

