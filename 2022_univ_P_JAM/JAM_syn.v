/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 25 00:35:43 2025
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(n3), .Y(n2) );
  XOR2XL U3 ( .A(A[8]), .B(n3), .Y(SUM[8]) );
  XOR2XL U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U5 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
  AND2X2 U6 ( .A(A[7]), .B(carry[7]), .Y(n3) );
  XOR2X1 U7 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N74, N75, N76, N77, N78, N79, N81, N82, N83, N84, N85, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, \input_cnt[3] , N93,
         N94, N95, N96, \sort[0][2] , \sort[0][1] , \sort[0][0] , \sort[1][2] ,
         \sort[1][1] , \sort[1][0] , \sort[2][2] , \sort[2][1] , \sort[2][0] ,
         \sort[3][2] , \sort[3][1] , \sort[3][0] , \sort[4][2] , \sort[4][1] ,
         \sort[4][0] , \sort[5][2] , \sort[5][1] , \sort[5][0] , \sort[6][2] ,
         \sort[6][1] , \sort[6][0] , \sort[7][2] , \sort[7][1] , \sort[7][0] ,
         N101, N102, N103, N167, N168, N169, N194, N195, N196, N205, N206,
         N207, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N363, N364, N365, N366, N367, N368, N369, N370, N371,
         N372, N414, N415, n87, n88, n111, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n132, n135, n136, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n483, n504, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723;
  wire   [2:0] state;
  wire   [9:0] current;
  wire   [2:0] nx_state;

  JAM_DW01_add_0 add_176 ( .A(current), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N372, N371, N370, N369, N368, N367, N366, N365, N364, N363}) );
  DFFX1 \sort_reg[0][0]  ( .D(n380), .CK(CLK), .Q(\sort[0][0] ), .QN(n88) );
  DFFX1 \sort_reg[0][1]  ( .D(n406), .CK(CLK), .Q(\sort[0][1] ), .QN(n87) );
  DFFX1 \current_reg[8]  ( .D(n366), .CK(CLK), .Q(current[8]), .QN(n114) );
  DFFX1 \current_reg[7]  ( .D(n367), .CK(CLK), .Q(current[7]), .QN(n115) );
  DFFX1 \current_reg[6]  ( .D(n368), .CK(CLK), .Q(current[6]), .QN(n116) );
  DFFX1 \current_reg[5]  ( .D(n369), .CK(CLK), .Q(current[5]), .QN(n117) );
  DFFX1 \current_reg[4]  ( .D(n370), .CK(CLK), .Q(current[4]), .QN(n118) );
  DFFX1 \current_reg[3]  ( .D(n371), .CK(CLK), .Q(current[3]), .QN(n119) );
  DFFX1 \current_reg[2]  ( .D(n372), .CK(CLK), .Q(current[2]), .QN(n120) );
  DFFX1 \current_reg[1]  ( .D(n373), .CK(CLK), .Q(current[1]), .QN(n121) );
  DFFX1 \current_reg[0]  ( .D(n374), .CK(CLK), .Q(current[0]), .QN(n122) );
  DFFRX1 \state_reg[2]  ( .D(nx_state[2]), .CK(CLK), .RN(n550), .Q(state[2]), 
        .QN(n132) );
  DFFX1 \current_reg[9]  ( .D(n365), .CK(CLK), .Q(current[9]), .QN(n111) );
  DFFX1 \MatchCount_reg[3]  ( .D(n352), .CK(CLK), .Q(n730), .QN(n123) );
  DFFX1 \input_cnt_reg[3]  ( .D(N96), .CK(CLK), .Q(\input_cnt[3] ), .QN(n687)
         );
  DFFX1 \MinCost_reg[9]  ( .D(n355), .CK(CLK), .Q(n734), .QN(n653) );
  DFFX1 \MinCost_reg[7]  ( .D(n357), .CK(CLK), .Q(n736), .QN(n652) );
  DFFX1 \MinCost_reg[6]  ( .D(n358), .CK(CLK), .Q(n737), .QN(n651) );
  DFFX1 \MinCost_reg[2]  ( .D(n362), .CK(CLK), .Q(n741), .QN(n649) );
  DFFX1 \MinCost_reg[3]  ( .D(n361), .CK(CLK), .Q(n740), .QN(n650) );
  DFFX1 \MinCost_reg[1]  ( .D(n363), .CK(CLK), .Q(n742), .QN(n648) );
  DFFX1 \MinCost_reg[8]  ( .D(n356), .CK(CLK), .Q(n735) );
  DFFX1 \MinCost_reg[5]  ( .D(n359), .CK(CLK), .Q(n738) );
  DFFX1 \MinCost_reg[4]  ( .D(n360), .CK(CLK), .Q(n739) );
  DFFX1 \MinCost_reg[0]  ( .D(n364), .CK(CLK), .Q(n743) );
  DFFX1 \MatchCount_reg[1]  ( .D(n353), .CK(CLK), .Q(n732), .QN(n689) );
  DFFX1 \MatchCount_reg[2]  ( .D(n657), .CK(CLK), .Q(n731), .QN(n690) );
  DFFX1 \W_reg[2]  ( .D(n351), .CK(CLK), .Q(n724) );
  DFFX1 \W_reg[1]  ( .D(n346), .CK(CLK), .Q(n725) );
  DFFX1 \W_reg[0]  ( .D(n347), .CK(CLK), .Q(n726) );
  DFFX1 \J_reg[2]  ( .D(n348), .CK(CLK), .Q(n727) );
  DFFX1 \J_reg[1]  ( .D(n349), .CK(CLK), .Q(n728) );
  DFFX1 \J_reg[0]  ( .D(n350), .CK(CLK), .Q(n729) );
  DFFX1 \sort_reg[0][2]  ( .D(n379), .CK(CLK), .Q(\sort[0][2] ), .QN(n723) );
  DFFX1 \sort_reg[1][2]  ( .D(n381), .CK(CLK), .Q(\sort[1][2] ), .QN(n711) );
  DFFX1 \sort_reg[1][1]  ( .D(n382), .CK(CLK), .Q(\sort[1][1] ), .QN(n712) );
  DFFX1 \sort_reg[1][0]  ( .D(n383), .CK(CLK), .Q(\sort[1][0] ), .QN(n713) );
  DFFX1 \input_cnt_reg[1]  ( .D(N94), .CK(CLK), .Q(N75), .QN(n571) );
  DFFX1 \swap_number_reg_reg[2]  ( .D(n403), .CK(CLK), .Q(N79), .QN(n590) );
  DFFX1 \mini_idx_reg[2]  ( .D(n402), .CK(CLK), .Q(N85), .QN(n625) );
  DFFX1 \sort_reg[6][0]  ( .D(n398), .CK(CLK), .Q(\sort[6][0] ), .QN(n710) );
  DFFX1 \sort_reg[7][1]  ( .D(n400), .CK(CLK), .Q(\sort[7][1] ), .QN(n706) );
  DFFX1 \sort_reg[7][0]  ( .D(n401), .CK(CLK), .Q(\sort[7][0] ), .QN(n707) );
  DFFX4 \swap_number_const_reg[2]  ( .D(n404), .CK(CLK), .Q(N82), .QN(n708) );
  DFFX2 \swap_number_const_reg[1]  ( .D(n407), .CK(CLK), .Q(N81), .QN(n607) );
  DFFX2 \sort_reg[5][2]  ( .D(n393), .CK(CLK), .Q(\sort[5][2] ), .QN(n701) );
  DFFX2 \sort_reg[7][2]  ( .D(n399), .CK(CLK), .Q(\sort[7][2] ), .QN(n538) );
  DFFX2 \sort_reg[3][2]  ( .D(n387), .CK(CLK), .Q(\sort[3][2] ), .QN(n714) );
  DFFX2 \sort_reg[2][2]  ( .D(n384), .CK(CLK), .Q(\sort[2][2] ), .QN(n720) );
  DFFX2 \sort_reg[2][1]  ( .D(n385), .CK(CLK), .Q(\sort[2][1] ), .QN(n721) );
  DFFX2 \sort_reg[6][1]  ( .D(n397), .CK(CLK), .Q(\sort[6][1] ), .QN(n536) );
  DFFX2 \sort_reg[3][1]  ( .D(n388), .CK(CLK), .Q(\sort[3][1] ), .QN(n716) );
  DFFX2 \sort_reg[5][0]  ( .D(n395), .CK(CLK), .Q(\sort[5][0] ), .QN(n703) );
  DFFX2 \sort_reg[5][1]  ( .D(n394), .CK(CLK), .Q(\sort[5][1] ), .QN(n702) );
  DFFX2 \sort_reg[4][0]  ( .D(n392), .CK(CLK), .Q(\sort[4][0] ), .QN(n699) );
  DFFX2 \sort_reg[4][1]  ( .D(n391), .CK(CLK), .Q(\sort[4][1] ), .QN(n719) );
  DFFX2 \swap_number_const_reg[0]  ( .D(n405), .CK(CLK), .Q(n483), .QN(n553)
         );
  DFFRX2 \state_reg[0]  ( .D(nx_state[0]), .CK(CLK), .RN(n668), .Q(state[0]), 
        .QN(n136) );
  DFFX2 \swap_number_reg_reg[1]  ( .D(n375), .CK(CLK), .Q(N78), .QN(n704) );
  DFFX2 \sort_reg[6][2]  ( .D(n396), .CK(CLK), .Q(\sort[6][2] ), .QN(n709) );
  DFFX2 \sort_reg[2][0]  ( .D(n386), .CK(CLK), .Q(\sort[2][0] ), .QN(n722) );
  DFFX2 \sort_reg[3][0]  ( .D(n389), .CK(CLK), .Q(\sort[3][0] ), .QN(n717) );
  DFFX2 \MatchCount_reg[0]  ( .D(n354), .CK(CLK), .Q(n733), .QN(n688) );
  DFFX2 \mini_idx_reg[0]  ( .D(n378), .CK(CLK), .Q(N83), .QN(n705) );
  DFFX2 \mini_idx_reg[1]  ( .D(n377), .CK(CLK), .Q(N84), .QN(n700) );
  DFFX2 \input_cnt_reg[0]  ( .D(N93), .CK(CLK), .Q(N74), .QN(n572) );
  DFFRX2 \state_reg[1]  ( .D(nx_state[1]), .CK(CLK), .RN(n668), .Q(state[1]), 
        .QN(n135) );
  DFFX2 \swap_number_reg_reg[0]  ( .D(n376), .CK(CLK), .Q(N77), .QN(n589) );
  DFFX1 \input_cnt_reg[2]  ( .D(N95), .CK(CLK), .Q(N76), .QN(n570) );
  DFFX1 \sort_reg[4][2]  ( .D(n390), .CK(CLK), .Q(\sort[4][2] ), .QN(n718) );
  OAI31X1 U432 ( .A0(n239), .A1(n279), .A2(n269), .B0(n551), .Y(n241) );
  NOR3BX2 U433 ( .AN(n140), .B(n324), .C(RST), .Y(n224) );
  AOI211X1 U434 ( .A0(n663), .A1(n269), .B0(n278), .C0(n241), .Y(n270) );
  AOI22XL U435 ( .A0(n546), .A1(n219), .B0(n216), .B1(\sort[7][1] ), .Y(n218)
         );
  NAND3XL U436 ( .A(n198), .B(N79), .C(n677), .Y(n300) );
  NOR2X2 U437 ( .A(n704), .B(N77), .Y(n586) );
  OAI31X1 U438 ( .A0(n135), .A1(state[0]), .A2(n132), .B0(n551), .Y(n170) );
  NOR2X2 U439 ( .A(n571), .B(N74), .Y(n567) );
  XNOR2XL U440 ( .A(N74), .B(N75), .Y(n345) );
  NOR2X2 U441 ( .A(n700), .B(N83), .Y(n621) );
  OR3XL U442 ( .A(N75), .B(N76), .C(N74), .Y(n159) );
  AOI31XL U443 ( .A0(N78), .A1(N77), .A2(N79), .B0(n158), .Y(n157) );
  NAND3XL U444 ( .A(N79), .B(N78), .C(n198), .Y(n190) );
  NAND3XL U445 ( .A(n135), .B(n132), .C(state[0]), .Y(n144) );
  OAI211XL U446 ( .A0(\input_cnt[3] ), .A1(n159), .B0(n135), .C0(state[0]), 
        .Y(n189) );
  NOR2X2 U447 ( .A(n607), .B(n553), .Y(n603) );
  NOR3X1 U448 ( .A(n553), .B(N81), .C(n708), .Y(n279) );
  OAI22X1 U449 ( .A0(n606), .A1(n708), .B0(N82), .B1(n605), .Y(N205) );
  OAI22X1 U450 ( .A0(n590), .A1(n580), .B0(N79), .B1(n579), .Y(N168) );
  NOR2X2 U451 ( .A(n708), .B(N81), .Y(n530) );
  INVX12 U452 ( .A(n689), .Y(MatchCount[1]) );
  OAI22X1 U453 ( .A0(n625), .A1(n611), .B0(N85), .B1(n610), .Y(N196) );
  BUFX12 U454 ( .A(n730), .Y(MatchCount[3]) );
  OAI22X1 U455 ( .A0(n588), .A1(n590), .B0(N79), .B1(n587), .Y(N167) );
  OAI22X1 U456 ( .A0(n708), .A1(n598), .B0(N82), .B1(n597), .Y(N206) );
  BUFX12 U457 ( .A(n738), .Y(MinCost[5]) );
  NOR2X2 U458 ( .A(n511), .B(n483), .Y(n529) );
  NAND2BX2 U459 ( .AN(N81), .B(n708), .Y(n511) );
  INVX12 U460 ( .A(n649), .Y(MinCost[2]) );
  BUFX12 U461 ( .A(n744), .Y(Valid) );
  NOR3X1 U462 ( .A(n136), .B(n132), .C(n135), .Y(n744) );
  OAI22X1 U463 ( .A0(n708), .A1(n594), .B0(N82), .B1(n593), .Y(N207) );
  OAI22X1 U464 ( .A0(n625), .A1(n615), .B0(N85), .B1(n614), .Y(N195) );
  BUFX12 U465 ( .A(n727), .Y(J[2]) );
  BUFX12 U466 ( .A(n728), .Y(J[1]) );
  BUFX12 U467 ( .A(n729), .Y(J[0]) );
  BUFX12 U468 ( .A(n725), .Y(W[1]) );
  BUFX12 U469 ( .A(n726), .Y(W[0]) );
  BUFX12 U470 ( .A(n724), .Y(W[2]) );
  INVX12 U471 ( .A(n653), .Y(MinCost[9]) );
  INVX12 U472 ( .A(n652), .Y(MinCost[7]) );
  INVX12 U473 ( .A(n651), .Y(MinCost[6]) );
  INVX12 U474 ( .A(n688), .Y(MatchCount[0]) );
  INVX12 U475 ( .A(n648), .Y(MinCost[1]) );
  INVX12 U476 ( .A(n650), .Y(MinCost[3]) );
  BUFX12 U477 ( .A(n735), .Y(MinCost[8]) );
  BUFX12 U478 ( .A(n739), .Y(MinCost[4]) );
  INVX12 U479 ( .A(n690), .Y(MatchCount[2]) );
  INVXL U480 ( .A(N196), .Y(n692) );
  AOI2BB2XL U481 ( .B0(n542), .B1(n518), .A0N(n511), .A1N(n520), .Y(n510) );
  AOI2BB2XL U482 ( .B0(n542), .B1(n512), .A0N(n511), .A1N(n514), .Y(n508) );
  AOI2BB2XL U483 ( .B0(n542), .B1(n515), .A0N(n511), .A1N(n517), .Y(n509) );
  NOR2XL U484 ( .A(n118), .B(n739), .Y(n644) );
  NOR2BXL U485 ( .AN(current[3]), .B(n740), .Y(n645) );
  NOR2XL U486 ( .A(n117), .B(n738), .Y(n636) );
  NOR2XL U487 ( .A(n114), .B(n735), .Y(n629) );
  NOR2BXL U488 ( .AN(current[0]), .B(n743), .Y(n626) );
  OR2XL U489 ( .A(n732), .B(n676), .Y(n504) );
  NAND2X1 U490 ( .A(n504), .B(n168), .Y(n166) );
  BUFX12 U491 ( .A(n743), .Y(MinCost[0]) );
  CLKBUFX3 U492 ( .A(n544), .Y(n545) );
  NAND2X1 U493 ( .A(n324), .B(n550), .Y(n239) );
  NAND2X1 U494 ( .A(n546), .B(N194), .Y(n233) );
  NAND2X1 U495 ( .A(n258), .B(n552), .Y(n225) );
  CLKINVX1 U496 ( .A(n265), .Y(n698) );
  NOR3X2 U497 ( .A(n705), .B(n700), .C(n697), .Y(n294) );
  AO21XL U498 ( .A0(n121), .A1(n631), .B0(n742), .Y(n630) );
  NOR2X1 U499 ( .A(n172), .B(RST), .Y(n164) );
  INVX1 U500 ( .A(n167), .Y(n657) );
  CLKINVX1 U501 ( .A(RST), .Y(n668) );
  CLKINVX1 U502 ( .A(n161), .Y(n656) );
  CLKBUFX3 U503 ( .A(n214), .Y(n546) );
  NOR3X1 U504 ( .A(n552), .B(N81), .C(n708), .Y(n269) );
  NAND3X1 U505 ( .A(n705), .B(n697), .C(N84), .Y(n230) );
  NAND3X1 U506 ( .A(N84), .B(n697), .C(N83), .Y(n248) );
  NAND3X1 U507 ( .A(n700), .B(n697), .C(N83), .Y(n217) );
  NOR3X2 U508 ( .A(n700), .B(N83), .C(n697), .Y(n283) );
  NOR3X2 U509 ( .A(n705), .B(N84), .C(n697), .Y(n272) );
  NOR3X2 U510 ( .A(N84), .B(N85), .C(N83), .Y(n209) );
  NOR2X1 U511 ( .A(current[9]), .B(n653), .Y(n506) );
  NOR2X1 U512 ( .A(n654), .B(n641), .Y(n507) );
  OR2X1 U513 ( .A(n506), .B(n507), .Y(N414) );
  AOI32XL U514 ( .A0(n640), .A1(n655), .A2(n639), .B0(n735), .B1(n114), .Y(
        n641) );
  NAND3BXL U515 ( .AN(N414), .B(n643), .C(n642), .Y(n646) );
  AOI2BB1X1 U516 ( .A0N(n677), .A1N(n666), .B0(n195), .Y(n199) );
  CLKINVX1 U517 ( .A(n216), .Y(n665) );
  CLKINVX1 U518 ( .A(n241), .Y(n661) );
  CLKINVX1 U519 ( .A(n251), .Y(n659) );
  NOR3X1 U520 ( .A(n683), .B(n695), .C(n241), .Y(n227) );
  CLKINVX1 U521 ( .A(n270), .Y(n662) );
  CLKINVX1 U522 ( .A(n260), .Y(n660) );
  INVX3 U523 ( .A(n239), .Y(n663) );
  AOI211X1 U524 ( .A0(n552), .A1(n289), .B0(n294), .C0(n290), .Y(n292) );
  NAND2X1 U525 ( .A(n239), .B(n550), .Y(n290) );
  CLKINVX1 U526 ( .A(n198), .Y(n666) );
  NOR2X1 U527 ( .A(n223), .B(n239), .Y(n216) );
  NOR2X1 U528 ( .A(n225), .B(n239), .Y(n229) );
  NOR2X1 U529 ( .A(n188), .B(n686), .Y(n195) );
  CLKINVX1 U530 ( .A(n205), .Y(n677) );
  CLKINVX1 U531 ( .A(n222), .Y(n671) );
  CLKINVX1 U532 ( .A(n240), .Y(n672) );
  NAND2X1 U533 ( .A(n188), .B(n550), .Y(n312) );
  CLKINVX1 U534 ( .A(n232), .Y(n674) );
  CLKINVX1 U535 ( .A(n254), .Y(n673) );
  CLKINVX1 U536 ( .A(n552), .Y(n544) );
  NAND2X1 U537 ( .A(n225), .B(n223), .Y(n242) );
  NAND2BXL U538 ( .AN(N414), .B(N415), .Y(n172) );
  CLKINVX1 U539 ( .A(n164), .Y(n676) );
  OAI2BB2XL U540 ( .B0(n688), .B1(n170), .A0N(n551), .A1N(n173), .Y(n354) );
  OAI211X1 U541 ( .A0(n688), .A1(N415), .B0(n549), .C0(n175), .Y(n173) );
  NAND3BX1 U542 ( .AN(n172), .B(n688), .C(n170), .Y(n175) );
  BUFX4 U543 ( .A(n174), .Y(n549) );
  NAND2XL U544 ( .A(N414), .B(n170), .Y(n174) );
  AOI211X1 U545 ( .A0(n223), .A1(n663), .B0(n212), .C0(n224), .Y(n211) );
  AND3X2 U546 ( .A(n225), .B(n217), .C(n661), .Y(n212) );
  CLKBUFX3 U547 ( .A(n668), .Y(n550) );
  OAI211X1 U548 ( .A0(n607), .A1(n259), .B0(n248), .C0(n661), .Y(n251) );
  NAND2X1 U549 ( .A(n552), .B(n708), .Y(n259) );
  OAI22XL U550 ( .A0(n243), .A1(n714), .B0(n659), .B1(n244), .Y(n387) );
  AOI22X1 U551 ( .A0(n546), .A1(n245), .B0(n246), .B1(n663), .Y(n244) );
  NOR2X1 U552 ( .A(n659), .B(n249), .Y(n243) );
  OAI222XL U553 ( .A0(n223), .A1(n701), .B0(n247), .B1(n538), .C0(n225), .C1(
        n709), .Y(n246) );
  NOR3BX1 U554 ( .AN(n323), .B(n224), .C(n663), .Y(n206) );
  NAND3BX1 U555 ( .AN(n209), .B(n223), .C(n661), .Y(n323) );
  AOI211X1 U556 ( .A0(n663), .A1(n682), .B0(n227), .C0(n224), .Y(n226) );
  CLKINVX1 U557 ( .A(n242), .Y(n682) );
  OA21XL U558 ( .A0(n279), .A1(n272), .B0(n546), .Y(n278) );
  OAI22XL U559 ( .A0(n701), .A1(n662), .B0(n270), .B1(n271), .Y(n393) );
  AOI221XL U560 ( .A0(n272), .A1(n674), .B0(N305), .B1(n663), .C0(n273), .Y(
        n271) );
  OAI21XL U561 ( .A0(n272), .A1(n233), .B0(n550), .Y(n273) );
  OAI22XL U562 ( .A0(n703), .A1(n662), .B0(n270), .B1(n276), .Y(n395) );
  AOI221XL U563 ( .A0(n272), .A1(n671), .B0(N303), .B1(n663), .C0(n277), .Y(
        n276) );
  OAI21XL U564 ( .A0(n272), .A1(n240), .B0(n550), .Y(n277) );
  OAI22XL U565 ( .A0(n702), .A1(n662), .B0(n270), .B1(n274), .Y(n394) );
  AOI22X1 U566 ( .A0(n546), .A1(n275), .B0(N304), .B1(n663), .Y(n274) );
  OAI2BB2XL U567 ( .B0(n272), .B1(n685), .A0N(N206), .A1N(n272), .Y(n275) );
  CLKINVX1 U568 ( .A(n170), .Y(n658) );
  NAND2X1 U569 ( .A(n661), .B(n268), .Y(n260) );
  OAI21XL U570 ( .A0(n269), .A1(n698), .B0(n546), .Y(n268) );
  OAI22XL U571 ( .A0(n718), .A1(n260), .B0(n660), .B1(n261), .Y(n390) );
  AOI221XL U572 ( .A0(n698), .A1(n674), .B0(N308), .B1(n663), .C0(n262), .Y(
        n261) );
  OAI21XL U573 ( .A0(n698), .A1(n233), .B0(n550), .Y(n262) );
  OAI22XL U574 ( .A0(n719), .A1(n260), .B0(n660), .B1(n263), .Y(n391) );
  AOI22X1 U575 ( .A0(n546), .A1(n264), .B0(N307), .B1(n663), .Y(n263) );
  OAI22XL U576 ( .A0(n680), .A1(n265), .B0(n698), .B1(n685), .Y(n264) );
  OAI22XL U577 ( .A0(n699), .A1(n260), .B0(n660), .B1(n266), .Y(n392) );
  AOI22X1 U578 ( .A0(n546), .A1(n267), .B0(N306), .B1(n663), .Y(n266) );
  OAI22XL U579 ( .A0(n678), .A1(n265), .B0(n698), .B1(n692), .Y(n267) );
  NAND2X1 U580 ( .A(n546), .B(n323), .Y(n208) );
  AOI211X1 U581 ( .A0(n553), .A1(n289), .B0(n283), .C0(n290), .Y(n281) );
  NOR2X1 U582 ( .A(n224), .B(n281), .Y(n280) );
  NOR2X1 U583 ( .A(n224), .B(n292), .Y(n291) );
  OAI22XL U584 ( .A0(n280), .A1(n536), .B0(n281), .B1(n285), .Y(n397) );
  AOI221XL U585 ( .A0(n283), .A1(n673), .B0(N301), .B1(n663), .C0(n286), .Y(
        n285) );
  OAI21XL U586 ( .A0(n283), .A1(n236), .B0(n550), .Y(n286) );
  OAI22XL U587 ( .A0(n291), .A1(n538), .B0(n292), .B1(n293), .Y(n399) );
  AOI221XL U588 ( .A0(n294), .A1(n674), .B0(N299), .B1(n663), .C0(n295), .Y(
        n293) );
  OAI21XL U589 ( .A0(n294), .A1(n233), .B0(n550), .Y(n295) );
  OAI22XL U590 ( .A0(n280), .A1(n710), .B0(n281), .B1(n287), .Y(n398) );
  AOI22X1 U591 ( .A0(n546), .A1(n288), .B0(N300), .B1(n663), .Y(n287) );
  OAI2BB2XL U592 ( .B0(n283), .B1(n692), .A0N(N207), .A1N(n283), .Y(n288) );
  OAI22XL U593 ( .A0(n280), .A1(n709), .B0(n281), .B1(n282), .Y(n396) );
  AOI221XL U594 ( .A0(n283), .A1(n674), .B0(N302), .B1(n663), .C0(n284), .Y(
        n282) );
  OAI21XL U595 ( .A0(n283), .A1(n233), .B0(n550), .Y(n284) );
  OAI22XL U596 ( .A0(n291), .A1(n707), .B0(n292), .B1(n298), .Y(n401) );
  AOI221XL U597 ( .A0(n294), .A1(n671), .B0(N297), .B1(n663), .C0(n299), .Y(
        n298) );
  OAI21XL U598 ( .A0(n294), .A1(n240), .B0(n550), .Y(n299) );
  OAI22XL U599 ( .A0(n291), .A1(n706), .B0(n292), .B1(n296), .Y(n400) );
  AOI221XL U600 ( .A0(n294), .A1(n673), .B0(N298), .B1(n663), .C0(n297), .Y(
        n296) );
  OAI21XL U601 ( .A0(n294), .A1(n236), .B0(n550), .Y(n297) );
  NOR2X2 U602 ( .A(n188), .B(n158), .Y(n198) );
  NAND2X2 U603 ( .A(n550), .B(n144), .Y(n188) );
  OAI221XL U604 ( .A0(n194), .A1(n205), .B0(n199), .B1(n705), .C0(n196), .Y(
        n378) );
  OAI31X1 U605 ( .A0(n242), .A1(n683), .A2(n239), .B0(n670), .Y(n249) );
  CLKINVX1 U606 ( .A(n224), .Y(n670) );
  NOR3X1 U607 ( .A(n688), .B(n658), .C(n689), .Y(n165) );
  CLKBUFX3 U608 ( .A(n187), .Y(n548) );
  NOR2BX1 U609 ( .AN(n547), .B(n669), .Y(n187) );
  CLKBUFX3 U610 ( .A(n668), .Y(n551) );
  NAND2X1 U611 ( .A(N207), .B(n546), .Y(n222) );
  NAND2X1 U612 ( .A(n546), .B(N195), .Y(n236) );
  INVX1 U613 ( .A(N206), .Y(n680) );
  OAI211X1 U614 ( .A0(n684), .A1(n302), .B0(n679), .C0(n303), .Y(n205) );
  OR2XL U615 ( .A(n306), .B(N195), .Y(n302) );
  CLKINVX1 U616 ( .A(n308), .Y(n679) );
  AOI211XL U617 ( .A0(N167), .A1(n693), .B0(n304), .C0(n305), .Y(n303) );
  AOI221XL U618 ( .A0(N169), .A1(n678), .B0(N168), .B1(n680), .C0(n307), .Y(
        n304) );
  INVX3 U619 ( .A(n553), .Y(n552) );
  NAND2X1 U620 ( .A(n546), .B(N196), .Y(n240) );
  OAI22XL U621 ( .A0(n188), .A1(n607), .B0(n203), .B1(n312), .Y(n407) );
  OAI22XL U622 ( .A0(n188), .A1(n553), .B0(n204), .B1(n312), .Y(n405) );
  OAI22XL U623 ( .A0(n188), .A1(n708), .B0(n311), .B1(n312), .Y(n404) );
  NAND2XL U624 ( .A(n546), .B(N206), .Y(n254) );
  NAND2XL U625 ( .A(n546), .B(N205), .Y(n232) );
  CLKINVX1 U626 ( .A(n344), .Y(n669) );
  OAI32XL U627 ( .A0(n307), .A1(N168), .A2(n680), .B0(n681), .B1(N167), .Y(
        n308) );
  INVXL U628 ( .A(N207), .Y(n678) );
  AOI221XL U629 ( .A0(N196), .A1(n691), .B0(N195), .B1(n684), .C0(n306), .Y(
        n305) );
  INVXL U630 ( .A(N169), .Y(n691) );
  NOR2XL U631 ( .A(n693), .B(N167), .Y(n306) );
  INVX1 U632 ( .A(N205), .Y(n681) );
  AND2XL U633 ( .A(N167), .B(n681), .Y(n307) );
  NAND2X1 U634 ( .A(n202), .B(n204), .Y(n196) );
  NAND2X1 U635 ( .A(n201), .B(n202), .Y(n191) );
  XOR2X1 U636 ( .A(n203), .B(n204), .Y(n201) );
  NAND2X1 U637 ( .A(n202), .B(n310), .Y(n301) );
  OAI21XL U638 ( .A0(n203), .A1(n204), .B0(n311), .Y(n310) );
  INVXL U639 ( .A(N168), .Y(n684) );
  INVX1 U640 ( .A(N194), .Y(n693) );
  INVX1 U641 ( .A(N195), .Y(n685) );
  OAI22XL U642 ( .A0(n681), .A1(n248), .B0(n696), .B1(n693), .Y(n245) );
  INVXL U643 ( .A(n530), .Y(n543) );
  CLKINVX1 U644 ( .A(n158), .Y(n686) );
  AND2X2 U645 ( .A(n313), .B(n325), .Y(n203) );
  OAI211X1 U646 ( .A0(n715), .A1(n318), .B0(n315), .C0(n314), .Y(n325) );
  AND3X2 U647 ( .A(n313), .B(n314), .C(n315), .Y(n311) );
  CLKINVX1 U648 ( .A(n230), .Y(n695) );
  CLKINVX1 U649 ( .A(n532), .Y(n542) );
  NAND2X2 U650 ( .A(n258), .B(n553), .Y(n223) );
  NOR2X1 U651 ( .A(n607), .B(n708), .Y(n289) );
  CLKINVX1 U652 ( .A(n248), .Y(n696) );
  CLKINVX1 U653 ( .A(n247), .Y(n683) );
  CLKINVX1 U654 ( .A(n217), .Y(n694) );
  NAND3X1 U655 ( .A(n706), .B(n538), .C(n707), .Y(n150) );
  NAND3X1 U656 ( .A(n717), .B(n716), .C(n713), .Y(n152) );
  NOR2X1 U657 ( .A(n687), .B(n159), .Y(n145) );
  CLKINVX1 U658 ( .A(n643), .Y(n654) );
  CLKINVX1 U659 ( .A(n629), .Y(n655) );
  AOI211X1 U660 ( .A0(n688), .A1(n164), .B0(n171), .C0(n658), .Y(n168) );
  NOR3XL U661 ( .A(N414), .B(N415), .C(RST), .Y(n171) );
  AOI32XL U662 ( .A0(n164), .A1(n690), .A2(n165), .B0(n166), .B1(n731), .Y(
        n167) );
  OAI21XL U663 ( .A0(n162), .A1(n123), .B0(n163), .Y(n352) );
  NAND4XL U664 ( .A(n731), .B(n164), .C(n165), .D(n123), .Y(n163) );
  AOI2BB1XL U665 ( .A0N(n731), .A1N(n676), .B0(n166), .Y(n162) );
  OAI21XL U666 ( .A0(n168), .A1(n689), .B0(n169), .Y(n353) );
  NAND4XL U667 ( .A(n164), .B(n733), .C(n170), .D(n689), .Y(n169) );
  OAI211X1 U668 ( .A0(n549), .A1(n119), .B0(n551), .C0(n182), .Y(n361) );
  NAND2XL U669 ( .A(MinCost[3]), .B(n549), .Y(n182) );
  OAI211X1 U670 ( .A0(n549), .A1(n121), .B0(n551), .C0(n184), .Y(n363) );
  NAND2XL U671 ( .A(MinCost[1]), .B(n549), .Y(n184) );
  OAI211X1 U672 ( .A0(n549), .A1(n114), .B0(n551), .C0(n177), .Y(n356) );
  NAND2XL U673 ( .A(MinCost[8]), .B(n549), .Y(n177) );
  OAI211X1 U674 ( .A0(n549), .A1(n118), .B0(n551), .C0(n181), .Y(n360) );
  NAND2XL U675 ( .A(MinCost[4]), .B(n549), .Y(n181) );
  OAI211X1 U676 ( .A0(n549), .A1(n117), .B0(n551), .C0(n180), .Y(n359) );
  NAND2XL U677 ( .A(MinCost[5]), .B(n549), .Y(n180) );
  OAI211X1 U678 ( .A0(n549), .A1(n122), .B0(n551), .C0(n185), .Y(n364) );
  NAND2XL U679 ( .A(MinCost[0]), .B(n549), .Y(n185) );
  OAI211X1 U680 ( .A0(n549), .A1(n120), .B0(n551), .C0(n183), .Y(n362) );
  NAND2XL U681 ( .A(n741), .B(n549), .Y(n183) );
  OAI211X1 U682 ( .A0(n549), .A1(n116), .B0(n551), .C0(n179), .Y(n358) );
  NAND2XL U683 ( .A(n737), .B(n549), .Y(n179) );
  OAI211X1 U684 ( .A0(n549), .A1(n115), .B0(n551), .C0(n178), .Y(n357) );
  NAND2XL U685 ( .A(n736), .B(n549), .Y(n178) );
  OAI211X1 U686 ( .A0(n549), .A1(n111), .B0(n551), .C0(n176), .Y(n355) );
  NAND2XL U687 ( .A(n734), .B(n549), .Y(n176) );
  OAI22XL U688 ( .A0(n211), .A1(n713), .B0(n212), .B1(n220), .Y(n383) );
  AOI211X1 U689 ( .A0(n672), .A1(n217), .B0(n221), .C0(RST), .Y(n220) );
  OAI22XL U690 ( .A0(n707), .A1(n665), .B0(n217), .B1(n222), .Y(n221) );
  OAI22XL U691 ( .A0(n211), .A1(n712), .B0(n212), .B1(n218), .Y(n382) );
  OAI22XL U692 ( .A0(n680), .A1(n217), .B0(n694), .B1(n685), .Y(n219) );
  OAI22XL U693 ( .A0(n211), .A1(n711), .B0(n212), .B1(n213), .Y(n381) );
  AOI22X1 U694 ( .A0(n546), .A1(n215), .B0(n216), .B1(\sort[7][2] ), .Y(n213)
         );
  OAI22XL U695 ( .A0(n681), .A1(n217), .B0(n694), .B1(n693), .Y(n215) );
  OAI22XL U696 ( .A0(n659), .A1(n250), .B0(n716), .B1(n251), .Y(n388) );
  AOI221XL U697 ( .A0(n663), .A1(n252), .B0(\sort[3][1] ), .B1(n249), .C0(n253), .Y(n250) );
  OAI222XL U698 ( .A0(n536), .A1(n225), .B0(n706), .B1(n247), .C0(n702), .C1(
        n223), .Y(n252) );
  OAI221XL U699 ( .A0(n696), .A1(n236), .B0(n254), .B1(n248), .C0(n551), .Y(
        n253) );
  OAI22XL U700 ( .A0(n659), .A1(n255), .B0(n717), .B1(n251), .Y(n389) );
  AOI221XL U701 ( .A0(n663), .A1(n256), .B0(\sort[3][0] ), .B1(n249), .C0(n257), .Y(n255) );
  OAI222XL U702 ( .A0(n710), .A1(n225), .B0(n707), .B1(n247), .C0(n703), .C1(
        n223), .Y(n256) );
  OAI221XL U703 ( .A0(n696), .A1(n240), .B0(n222), .B1(n248), .C0(n551), .Y(
        n257) );
  OAI22XL U704 ( .A0(n206), .A1(n88), .B0(n210), .B1(n208), .Y(n380) );
  AOI2BB2XL U705 ( .B0(N207), .B1(n209), .A0N(n209), .A1N(n692), .Y(n210) );
  OAI22XL U706 ( .A0(n206), .A1(n87), .B0(n322), .B1(n208), .Y(n406) );
  AOI2BB2XL U707 ( .B0(n209), .B1(N206), .A0N(n209), .A1N(n685), .Y(n322) );
  OAI22XL U708 ( .A0(n226), .A1(n722), .B0(n227), .B1(n237), .Y(n386) );
  AOI221XL U709 ( .A0(n229), .A1(\sort[7][0] ), .B0(n672), .B1(n230), .C0(n238), .Y(n237) );
  OAI22XL U710 ( .A0(n710), .A1(n665), .B0(n222), .B1(n230), .Y(n238) );
  OAI22XL U711 ( .A0(n226), .A1(n721), .B0(n227), .B1(n234), .Y(n385) );
  AOI221XL U712 ( .A0(n673), .A1(n695), .B0(n216), .B1(\sort[6][1] ), .C0(n235), .Y(n234) );
  OAI221XL U713 ( .A0(n706), .A1(n664), .B0(n695), .B1(n236), .C0(n551), .Y(
        n235) );
  CLKINVX1 U714 ( .A(n229), .Y(n664) );
  OAI22XL U715 ( .A0(n226), .A1(n720), .B0(n227), .B1(n228), .Y(n384) );
  AOI221XL U716 ( .A0(n229), .A1(\sort[7][2] ), .B0(n675), .B1(n230), .C0(n231), .Y(n228) );
  CLKINVX1 U717 ( .A(n233), .Y(n675) );
  OAI22XL U718 ( .A0(n709), .A1(n665), .B0(n232), .B1(n230), .Y(n231) );
  OAI22XL U719 ( .A0(n206), .A1(n723), .B0(n207), .B1(n208), .Y(n379) );
  AOI2BB2XL U720 ( .B0(n209), .B1(N205), .A0N(n209), .A1N(n693), .Y(n207) );
  OAI2BB2XL U721 ( .B0(n111), .B1(n547), .A0N(N372), .A1N(n548), .Y(n365) );
  OAI2BB2XL U722 ( .B0(n114), .B1(n547), .A0N(N371), .A1N(n548), .Y(n366) );
  OAI2BB2XL U723 ( .B0(n115), .B1(n547), .A0N(N370), .A1N(n548), .Y(n367) );
  OAI211X1 U724 ( .A0(n199), .A1(n697), .B0(n300), .C0(n301), .Y(n402) );
  OAI211X1 U725 ( .A0(n199), .A1(n700), .B0(n200), .C0(n191), .Y(n377) );
  NAND3X1 U726 ( .A(n198), .B(N78), .C(n677), .Y(n200) );
  OAI2BB2XL U727 ( .B0(n116), .B1(n547), .A0N(N369), .A1N(n548), .Y(n368) );
  NAND3X1 U728 ( .A(n190), .B(n191), .C(n192), .Y(n375) );
  AOI2BB2X1 U729 ( .B0(N78), .B1(n193), .A0N(n194), .A1N(N78), .Y(n192) );
  OAI21XL U730 ( .A0(N77), .A1(n666), .B0(n667), .Y(n193) );
  CLKINVX1 U731 ( .A(n195), .Y(n667) );
  OAI2BB2XL U732 ( .B0(n117), .B1(n547), .A0N(N368), .A1N(n548), .Y(n369) );
  OAI2BB2XL U733 ( .B0(n118), .B1(n547), .A0N(N367), .A1N(n548), .Y(n370) );
  OAI2BB2XL U734 ( .B0(n119), .B1(n547), .A0N(N366), .A1N(n548), .Y(n371) );
  OAI2BB2XL U735 ( .B0(n120), .B1(n547), .A0N(N365), .A1N(n548), .Y(n372) );
  OAI2BB2XL U736 ( .B0(n121), .B1(n547), .A0N(N364), .A1N(n548), .Y(n373) );
  OAI2BB2XL U737 ( .B0(n122), .B1(n547), .A0N(N363), .A1N(n548), .Y(n374) );
  CLKBUFX3 U738 ( .A(n186), .Y(n547) );
  NAND2BX1 U739 ( .AN(n188), .B(n189), .Y(n186) );
  NAND3X1 U740 ( .A(n190), .B(n196), .C(n197), .Y(n376) );
  AOI2BB2X1 U741 ( .B0(n195), .B1(N77), .A0N(N77), .A1N(n666), .Y(n197) );
  NAND2X1 U742 ( .A(n198), .B(N77), .Y(n194) );
  NOR2X1 U743 ( .A(n140), .B(RST), .Y(n214) );
  OAI211X1 U744 ( .A0(n704), .A1(n194), .B0(n309), .C0(n301), .Y(n403) );
  OAI21XL U745 ( .A0(n195), .A1(n198), .B0(N79), .Y(n309) );
  NOR2X1 U746 ( .A(n656), .B(RST), .Y(n160) );
  OAI31XL U747 ( .A0(n141), .A1(\input_cnt[3] ), .A2(n136), .B0(n551), .Y(n161) );
  AO22XL U748 ( .A0(W[2]), .A1(n656), .B0(N76), .B1(n160), .Y(n351) );
  AO22XL U749 ( .A0(J[0]), .A1(n656), .B0(N103), .B1(n160), .Y(n350) );
  AO22XL U750 ( .A0(J[1]), .A1(n656), .B0(N102), .B1(n160), .Y(n349) );
  AO22XL U751 ( .A0(J[2]), .A1(n656), .B0(N101), .B1(n160), .Y(n348) );
  AO22XL U752 ( .A0(W[0]), .A1(n656), .B0(N74), .B1(n160), .Y(n347) );
  AO22XL U753 ( .A0(W[1]), .A1(n656), .B0(N75), .B1(n160), .Y(n346) );
  OAI32X1 U754 ( .A0(n341), .A1(\input_cnt[3] ), .A2(n570), .B0(n342), .B1(
        n687), .Y(N96) );
  OA21XL U755 ( .A0(n669), .A1(N76), .B0(n343), .Y(n342) );
  NOR3X1 U756 ( .A(n136), .B(RST), .C(n141), .Y(n344) );
  AOI2BB1X1 U757 ( .A0N(N75), .A1N(n669), .B0(N93), .Y(n343) );
  NOR2X1 U758 ( .A(n669), .B(N74), .Y(N93) );
  OAI22XL U759 ( .A0(n343), .A1(n570), .B0(N76), .B1(n341), .Y(N95) );
  CLKINVX1 U760 ( .A(N83), .Y(n624) );
  NAND3X1 U761 ( .A(N74), .B(N75), .C(n344), .Y(n341) );
  NOR2X1 U762 ( .A(n345), .B(n669), .Y(N94) );
  NOR2X1 U763 ( .A(n144), .B(RST), .Y(n202) );
  CLKINVX1 U764 ( .A(n527), .Y(n539) );
  CLKINVX1 U765 ( .A(n524), .Y(n540) );
  CLKINVX1 U766 ( .A(n521), .Y(n541) );
  NAND2X1 U767 ( .A(state[2]), .B(n135), .Y(n141) );
  NOR2X1 U768 ( .A(n141), .B(state[0]), .Y(n324) );
  NAND2X1 U769 ( .A(state[0]), .B(n686), .Y(n140) );
  NAND2X1 U770 ( .A(state[1]), .B(n132), .Y(n158) );
  CLKINVX1 U771 ( .A(n334), .Y(n715) );
  OAI211X1 U772 ( .A0(\sort[3][2] ), .A1(n720), .B0(n335), .C0(n336), .Y(n334)
         );
  NAND3X1 U773 ( .A(n337), .B(n716), .C(\sort[2][1] ), .Y(n335) );
  OAI221XL U774 ( .A0(\sort[2][1] ), .A1(n716), .B0(\sort[2][0] ), .B1(n717), 
        .C0(n337), .Y(n336) );
  NAND2X1 U775 ( .A(\sort[3][2] ), .B(n720), .Y(n337) );
  OAI2BB1X1 U776 ( .A0N(n315), .A1N(n316), .B0(n313), .Y(n204) );
  OAI21XL U777 ( .A0(n317), .A1(n318), .B0(n314), .Y(n316) );
  AOI211X1 U778 ( .A0(n151), .A1(n319), .B0(n320), .C0(n715), .Y(n317) );
  OAI21XL U779 ( .A0(\sort[2][2] ), .A1(n711), .B0(n321), .Y(n320) );
  INVX3 U780 ( .A(N85), .Y(n697) );
  CLKINVX1 U781 ( .A(\sort[6][0] ), .Y(n535) );
  OAI211X1 U782 ( .A0(\sort[5][2] ), .A1(n718), .B0(n326), .C0(n327), .Y(n314)
         );
  NAND3X1 U783 ( .A(n328), .B(n702), .C(\sort[4][1] ), .Y(n326) );
  OAI221XL U784 ( .A0(\sort[4][1] ), .A1(n702), .B0(\sort[4][0] ), .B1(n703), 
        .C0(n328), .Y(n327) );
  NAND2X1 U785 ( .A(\sort[5][2] ), .B(n718), .Y(n328) );
  OAI211X1 U786 ( .A0(\sort[7][2] ), .A1(n709), .B0(n338), .C0(n339), .Y(n313)
         );
  NAND3X1 U787 ( .A(n340), .B(n706), .C(\sort[6][1] ), .Y(n338) );
  OAI221XL U788 ( .A0(\sort[6][1] ), .A1(n706), .B0(\sort[6][0] ), .B1(n707), 
        .C0(n340), .Y(n339) );
  NAND2X1 U789 ( .A(\sort[7][2] ), .B(n709), .Y(n340) );
  OAI221XL U790 ( .A0(\sort[1][1] ), .A1(n721), .B0(\sort[1][0] ), .B1(n722), 
        .C0(n319), .Y(n321) );
  OAI222X1 U791 ( .A0(\sort[6][2] ), .A1(n701), .B0(n329), .B1(n155), .C0(n329), .C1(n330), .Y(n315) );
  OAI22XL U792 ( .A0(\sort[5][0] ), .A1(n710), .B0(\sort[5][1] ), .B1(n536), 
        .Y(n330) );
  NOR2X1 U793 ( .A(n709), .B(\sort[5][2] ), .Y(n329) );
  AND3X2 U794 ( .A(n331), .B(n153), .C(n332), .Y(n318) );
  NAND3X1 U795 ( .A(n333), .B(n719), .C(\sort[3][1] ), .Y(n331) );
  OAI221XL U796 ( .A0(\sort[3][1] ), .A1(n719), .B0(\sort[3][0] ), .B1(n699), 
        .C0(n333), .Y(n332) );
  NAND2X1 U797 ( .A(\sort[4][2] ), .B(n714), .Y(n333) );
  NAND2X1 U798 ( .A(\sort[5][1] ), .B(n536), .Y(n155) );
  NAND2X1 U799 ( .A(\sort[2][2] ), .B(n711), .Y(n319) );
  NAND2X2 U800 ( .A(N81), .B(n708), .Y(n532) );
  NOR2X1 U801 ( .A(N81), .B(N82), .Y(n258) );
  NAND2X2 U802 ( .A(N82), .B(N81), .Y(n534) );
  NAND2X1 U803 ( .A(\sort[3][2] ), .B(n718), .Y(n153) );
  NAND3X1 U804 ( .A(n705), .B(n700), .C(N85), .Y(n265) );
  NOR2X1 U805 ( .A(n712), .B(\sort[2][1] ), .Y(n151) );
  NAND3X1 U806 ( .A(n553), .B(n708), .C(N81), .Y(n247) );
  CLKINVX1 U807 ( .A(\sort[7][1] ), .Y(n537) );
  OAI211X1 U808 ( .A0(state[0]), .A1(n142), .B0(n143), .C0(n144), .Y(
        nx_state[1]) );
  NAND3X1 U809 ( .A(state[0]), .B(n135), .C(n145), .Y(n143) );
  AOI2BB1X1 U810 ( .A0N(n138), .A1N(n135), .B0(n686), .Y(n142) );
  NOR4X1 U811 ( .A(n154), .B(n87), .C(n155), .D(n88), .Y(n147) );
  NAND2X1 U812 ( .A(\sort[1][2] ), .B(\sort[0][2] ), .Y(n154) );
  NAND4X1 U813 ( .A(n146), .B(n147), .C(n148), .D(n149), .Y(n138) );
  NOR3X1 U814 ( .A(n156), .B(n719), .C(n710), .Y(n146) );
  NOR3BXL U815 ( .AN(n151), .B(n152), .C(n153), .Y(n148) );
  NOR4X1 U816 ( .A(n150), .B(\sort[5][0] ), .C(\sort[6][2] ), .D(\sort[5][2] ), 
        .Y(n149) );
  NAND3X1 U817 ( .A(\sort[2][2] ), .B(\sort[2][0] ), .C(\sort[4][0] ), .Y(n156) );
  OAI211X1 U818 ( .A0(n138), .A1(n139), .B0(n140), .C0(n141), .Y(nx_state[2])
         );
  NAND2X1 U819 ( .A(state[2]), .B(n136), .Y(n139) );
  OAI22XL U820 ( .A0(n145), .A1(n141), .B0(state[0]), .B1(n157), .Y(
        nx_state[0]) );
  OAI22XL U821 ( .A0(\sort[5][0] ), .A1(n545), .B0(\sort[4][0] ), .B1(n552), 
        .Y(n523) );
  OAI22XL U822 ( .A0(\sort[7][0] ), .A1(n544), .B0(\sort[6][0] ), .B1(n483), 
        .Y(n521) );
  OAI222XL U823 ( .A0(n523), .A1(n511), .B0(n521), .B1(n532), .C0(n708), .C1(
        n699), .Y(N306) );
  OAI22XL U824 ( .A0(\sort[5][1] ), .A1(n544), .B0(\sort[4][1] ), .B1(n552), 
        .Y(n526) );
  OAI22XL U825 ( .A0(\sort[7][1] ), .A1(n545), .B0(\sort[6][1] ), .B1(n483), 
        .Y(n524) );
  OAI222XL U826 ( .A0(n526), .A1(n511), .B0(n524), .B1(n532), .C0(n708), .C1(
        n719), .Y(N307) );
  OAI22XL U827 ( .A0(\sort[5][2] ), .A1(n544), .B0(\sort[4][2] ), .B1(n483), 
        .Y(n533) );
  OAI22XL U828 ( .A0(\sort[7][2] ), .A1(n545), .B0(\sort[6][2] ), .B1(n483), 
        .Y(n527) );
  OAI222XL U829 ( .A0(n533), .A1(n511), .B0(n527), .B1(n532), .C0(n708), .C1(
        n718), .Y(N308) );
  AOI2BB2X1 U830 ( .B0(n535), .B1(n483), .A0N(\sort[5][0] ), .A1N(n483), .Y(
        n512) );
  OAI22XL U831 ( .A0(\sort[4][0] ), .A1(n544), .B0(\sort[3][0] ), .B1(n483), 
        .Y(n514) );
  OAI221XL U832 ( .A0(n543), .A1(n707), .B0(n534), .B1(n703), .C0(n508), .Y(
        N303) );
  AOI2BB2X1 U833 ( .B0(n536), .B1(n483), .A0N(\sort[5][1] ), .A1N(n483), .Y(
        n515) );
  OAI22XL U834 ( .A0(\sort[4][1] ), .A1(n544), .B0(\sort[3][1] ), .B1(n552), 
        .Y(n517) );
  OAI221XL U835 ( .A0(n543), .A1(n537), .B0(n534), .B1(n702), .C0(n509), .Y(
        N304) );
  AOI2BB2X1 U836 ( .B0(n709), .B1(n483), .A0N(\sort[5][2] ), .A1N(n483), .Y(
        n518) );
  OAI22XL U837 ( .A0(\sort[4][2] ), .A1(n544), .B0(\sort[3][2] ), .B1(n483), 
        .Y(n520) );
  OAI221XL U838 ( .A0(n543), .A1(n538), .B0(n534), .B1(n701), .C0(n510), .Y(
        N305) );
  NOR2X1 U839 ( .A(n511), .B(n545), .Y(n528) );
  AOI222XL U840 ( .A0(n530), .A1(n512), .B0(\sort[1][0] ), .B1(n529), .C0(
        \sort[2][0] ), .C1(n528), .Y(n513) );
  OAI221XL U841 ( .A0(n534), .A1(n707), .B0(n514), .B1(n532), .C0(n513), .Y(
        N297) );
  AOI222XL U842 ( .A0(n530), .A1(n515), .B0(\sort[1][1] ), .B1(n529), .C0(
        \sort[2][1] ), .C1(n528), .Y(n516) );
  OAI221XL U843 ( .A0(n534), .A1(n537), .B0(n517), .B1(n532), .C0(n516), .Y(
        N298) );
  AOI222XL U844 ( .A0(n530), .A1(n518), .B0(\sort[1][2] ), .B1(n529), .C0(n528), .C1(\sort[2][2] ), .Y(n519) );
  OAI221XL U845 ( .A0(n534), .A1(n538), .B0(n520), .B1(n532), .C0(n519), .Y(
        N299) );
  AOI222XL U846 ( .A0(n530), .A1(n541), .B0(\sort[2][0] ), .B1(n529), .C0(
        \sort[3][0] ), .C1(n528), .Y(n522) );
  OAI221XL U847 ( .A0(n534), .A1(n535), .B0(n523), .B1(n532), .C0(n522), .Y(
        N300) );
  AOI222XL U848 ( .A0(n530), .A1(n540), .B0(\sort[2][1] ), .B1(n529), .C0(
        \sort[3][1] ), .C1(n528), .Y(n525) );
  OAI221XL U849 ( .A0(n534), .A1(n536), .B0(n526), .B1(n532), .C0(n525), .Y(
        N301) );
  AOI222XL U850 ( .A0(n530), .A1(n539), .B0(\sort[2][2] ), .B1(n529), .C0(
        \sort[3][2] ), .C1(n528), .Y(n531) );
  OAI221XL U851 ( .A0(n534), .A1(n709), .B0(n533), .B1(n532), .C0(n531), .Y(
        N302) );
  NOR2X1 U852 ( .A(n571), .B(n572), .Y(n566) );
  NOR2X1 U853 ( .A(n572), .B(N75), .Y(n564) );
  NOR2X1 U854 ( .A(N74), .B(N75), .Y(n563) );
  AO22X1 U855 ( .A0(\sort[5][0] ), .A1(n564), .B0(\sort[4][0] ), .B1(n563), 
        .Y(n554) );
  AOI221XL U856 ( .A0(\sort[6][0] ), .A1(n567), .B0(\sort[7][0] ), .B1(n566), 
        .C0(n554), .Y(n557) );
  AO22X1 U857 ( .A0(\sort[1][0] ), .A1(n564), .B0(\sort[0][0] ), .B1(n563), 
        .Y(n555) );
  AOI221XL U858 ( .A0(\sort[2][0] ), .A1(n567), .B0(\sort[3][0] ), .B1(n566), 
        .C0(n555), .Y(n556) );
  OAI22XL U859 ( .A0(n570), .A1(n557), .B0(N76), .B1(n556), .Y(N103) );
  AO22X1 U860 ( .A0(\sort[5][1] ), .A1(n564), .B0(\sort[4][1] ), .B1(n563), 
        .Y(n558) );
  AOI221XL U861 ( .A0(\sort[6][1] ), .A1(n567), .B0(\sort[7][1] ), .B1(n566), 
        .C0(n558), .Y(n561) );
  AO22X1 U862 ( .A0(\sort[1][1] ), .A1(n564), .B0(\sort[0][1] ), .B1(n563), 
        .Y(n559) );
  AOI221XL U863 ( .A0(\sort[2][1] ), .A1(n567), .B0(\sort[3][1] ), .B1(n566), 
        .C0(n559), .Y(n560) );
  OAI22XL U864 ( .A0(n570), .A1(n561), .B0(N76), .B1(n560), .Y(N102) );
  AO22X1 U865 ( .A0(\sort[5][2] ), .A1(n564), .B0(\sort[4][2] ), .B1(n563), 
        .Y(n562) );
  AOI221XL U866 ( .A0(\sort[6][2] ), .A1(n567), .B0(\sort[7][2] ), .B1(n566), 
        .C0(n562), .Y(n569) );
  AO22X1 U867 ( .A0(\sort[1][2] ), .A1(n564), .B0(\sort[0][2] ), .B1(n563), 
        .Y(n565) );
  AOI221XL U868 ( .A0(\sort[2][2] ), .A1(n567), .B0(\sort[3][2] ), .B1(n566), 
        .C0(n565), .Y(n568) );
  OAI22XL U869 ( .A0(n569), .A1(n570), .B0(N76), .B1(n568), .Y(N101) );
  NOR2X1 U870 ( .A(n704), .B(n589), .Y(n585) );
  NOR2X1 U871 ( .A(n589), .B(N78), .Y(n583) );
  NOR2X1 U872 ( .A(N77), .B(N78), .Y(n582) );
  AO22X1 U873 ( .A0(\sort[5][0] ), .A1(n583), .B0(\sort[4][0] ), .B1(n582), 
        .Y(n573) );
  AOI221XL U874 ( .A0(\sort[6][0] ), .A1(n586), .B0(\sort[7][0] ), .B1(n585), 
        .C0(n573), .Y(n576) );
  AO22X1 U875 ( .A0(\sort[1][0] ), .A1(n583), .B0(\sort[0][0] ), .B1(n582), 
        .Y(n574) );
  AOI221XL U876 ( .A0(\sort[2][0] ), .A1(n586), .B0(\sort[3][0] ), .B1(n585), 
        .C0(n574), .Y(n575) );
  OAI22XL U877 ( .A0(n590), .A1(n576), .B0(N79), .B1(n575), .Y(N169) );
  AO22X1 U878 ( .A0(\sort[5][1] ), .A1(n583), .B0(\sort[4][1] ), .B1(n582), 
        .Y(n577) );
  AOI221XL U879 ( .A0(\sort[6][1] ), .A1(n586), .B0(\sort[7][1] ), .B1(n585), 
        .C0(n577), .Y(n580) );
  AO22X1 U880 ( .A0(\sort[1][1] ), .A1(n583), .B0(\sort[0][1] ), .B1(n582), 
        .Y(n578) );
  AOI221XL U881 ( .A0(\sort[2][1] ), .A1(n586), .B0(\sort[3][1] ), .B1(n585), 
        .C0(n578), .Y(n579) );
  AO22X1 U882 ( .A0(\sort[5][2] ), .A1(n583), .B0(\sort[4][2] ), .B1(n582), 
        .Y(n581) );
  AOI221XL U883 ( .A0(\sort[6][2] ), .A1(n586), .B0(\sort[7][2] ), .B1(n585), 
        .C0(n581), .Y(n588) );
  AO22X1 U884 ( .A0(\sort[1][2] ), .A1(n583), .B0(\sort[0][2] ), .B1(n582), 
        .Y(n584) );
  AOI221XL U885 ( .A0(\sort[2][2] ), .A1(n586), .B0(\sort[3][2] ), .B1(n585), 
        .C0(n584), .Y(n587) );
  NOR2X1 U886 ( .A(n607), .B(n552), .Y(n604) );
  NOR2X1 U887 ( .A(n553), .B(N81), .Y(n601) );
  NOR2X1 U888 ( .A(n552), .B(N81), .Y(n600) );
  AO22X1 U889 ( .A0(\sort[5][0] ), .A1(n601), .B0(\sort[4][0] ), .B1(n600), 
        .Y(n591) );
  AOI221XL U890 ( .A0(\sort[6][0] ), .A1(n604), .B0(\sort[7][0] ), .B1(n603), 
        .C0(n591), .Y(n594) );
  AO22X1 U891 ( .A0(\sort[1][0] ), .A1(n601), .B0(\sort[0][0] ), .B1(n600), 
        .Y(n592) );
  AOI221XL U892 ( .A0(\sort[2][0] ), .A1(n604), .B0(\sort[3][0] ), .B1(n603), 
        .C0(n592), .Y(n593) );
  AO22X1 U893 ( .A0(\sort[5][1] ), .A1(n601), .B0(\sort[4][1] ), .B1(n600), 
        .Y(n595) );
  AOI221XL U894 ( .A0(\sort[6][1] ), .A1(n604), .B0(\sort[7][1] ), .B1(n603), 
        .C0(n595), .Y(n598) );
  AO22X1 U895 ( .A0(\sort[1][1] ), .A1(n601), .B0(\sort[0][1] ), .B1(n600), 
        .Y(n596) );
  AOI221XL U896 ( .A0(\sort[2][1] ), .A1(n604), .B0(\sort[3][1] ), .B1(n603), 
        .C0(n596), .Y(n597) );
  AO22X1 U897 ( .A0(\sort[5][2] ), .A1(n601), .B0(\sort[4][2] ), .B1(n600), 
        .Y(n599) );
  AOI221XL U898 ( .A0(\sort[6][2] ), .A1(n604), .B0(\sort[7][2] ), .B1(n603), 
        .C0(n599), .Y(n606) );
  AO22X1 U899 ( .A0(\sort[1][2] ), .A1(n601), .B0(\sort[0][2] ), .B1(n600), 
        .Y(n602) );
  AOI221XL U900 ( .A0(\sort[2][2] ), .A1(n604), .B0(\sort[3][2] ), .B1(n603), 
        .C0(n602), .Y(n605) );
  NOR2X1 U901 ( .A(n700), .B(n624), .Y(n620) );
  NOR2X1 U902 ( .A(n624), .B(N84), .Y(n618) );
  NOR2X1 U903 ( .A(N83), .B(N84), .Y(n617) );
  AO22X1 U904 ( .A0(\sort[5][0] ), .A1(n618), .B0(\sort[4][0] ), .B1(n617), 
        .Y(n608) );
  AOI221XL U905 ( .A0(\sort[6][0] ), .A1(n621), .B0(\sort[7][0] ), .B1(n620), 
        .C0(n608), .Y(n611) );
  AO22X1 U906 ( .A0(\sort[1][0] ), .A1(n618), .B0(\sort[0][0] ), .B1(n617), 
        .Y(n609) );
  AOI221XL U907 ( .A0(\sort[2][0] ), .A1(n621), .B0(\sort[3][0] ), .B1(n620), 
        .C0(n609), .Y(n610) );
  AO22X1 U908 ( .A0(\sort[5][1] ), .A1(n618), .B0(\sort[4][1] ), .B1(n617), 
        .Y(n612) );
  AOI221XL U909 ( .A0(\sort[6][1] ), .A1(n621), .B0(\sort[7][1] ), .B1(n620), 
        .C0(n612), .Y(n615) );
  AO22X1 U910 ( .A0(\sort[1][1] ), .A1(n618), .B0(\sort[0][1] ), .B1(n617), 
        .Y(n613) );
  AOI221XL U911 ( .A0(\sort[2][1] ), .A1(n621), .B0(\sort[3][1] ), .B1(n620), 
        .C0(n613), .Y(n614) );
  AO22X1 U912 ( .A0(\sort[5][2] ), .A1(n618), .B0(\sort[4][2] ), .B1(n617), 
        .Y(n616) );
  AOI221XL U913 ( .A0(\sort[6][2] ), .A1(n621), .B0(\sort[7][2] ), .B1(n620), 
        .C0(n616), .Y(n623) );
  AO22X1 U914 ( .A0(\sort[1][2] ), .A1(n618), .B0(\sort[0][2] ), .B1(n617), 
        .Y(n619) );
  AOI221XL U915 ( .A0(\sort[2][2] ), .A1(n621), .B0(\sort[3][2] ), .B1(n620), 
        .C0(n619), .Y(n622) );
  OAI22XL U916 ( .A0(n623), .A1(n625), .B0(N85), .B1(n622), .Y(N194) );
  OAI22XL U917 ( .A0(current[1]), .A1(n626), .B0(n626), .B1(n648), .Y(n628) );
  NAND2X1 U918 ( .A(current[7]), .B(n652), .Y(n640) );
  NAND2X1 U919 ( .A(current[6]), .B(n651), .Y(n635) );
  NOR3BXL U920 ( .AN(n635), .B(n629), .C(n636), .Y(n627) );
  NAND3X1 U921 ( .A(n628), .B(n640), .C(n627), .Y(n647) );
  NAND2X1 U922 ( .A(current[9]), .B(n653), .Y(n643) );
  NOR2X1 U923 ( .A(n645), .B(n644), .Y(n634) );
  NOR2BX1 U924 ( .AN(n743), .B(current[0]), .Y(n631) );
  NAND2X1 U925 ( .A(current[2]), .B(n649), .Y(n642) );
  OAI211X1 U926 ( .A0(n631), .A1(n121), .B0(n630), .C0(n642), .Y(n632) );
  OAI221XL U927 ( .A0(current[2]), .A1(n649), .B0(current[3]), .B1(n650), .C0(
        n632), .Y(n633) );
  AOI222XL U928 ( .A0(n738), .A1(n117), .B0(n739), .B1(n118), .C0(n634), .C1(
        n633), .Y(n638) );
  NAND2BX1 U929 ( .AN(n636), .B(n635), .Y(n637) );
  OAI222XL U930 ( .A0(n638), .A1(n637), .B0(current[6]), .B1(n651), .C0(
        current[7]), .C1(n652), .Y(n639) );
  NOR4X1 U931 ( .A(n647), .B(n646), .C(n645), .D(n644), .Y(N415) );
endmodule

