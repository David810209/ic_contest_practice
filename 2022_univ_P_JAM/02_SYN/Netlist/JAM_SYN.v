/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Mar 19 00:47:32 2025
/////////////////////////////////////////////////////////////


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   n978, n979, n980, n981, n982, n983, n984, n985, n986, n987, n988,
         n989, n990, n991, N72, N73, N74, N75, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, intadd_0_CI, intadd_0_SUM_4_, intadd_0_SUM_3_,
         intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n523, n525, n527,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n972, n973, n974, n975, n976, n977;
  wire   [2:0] state;
  wire   [3:0] input_cnt;
  wire   [23:0] sort;
  wire   [2:0] swap_number_reg;
  wire   [2:0] swap_number_const;
  wire   [2:0] mini_idx;
  wire   [9:0] current;
  wire   [2:0] nx_state;

  DFFHQX1 sort_reg_4__1_ ( .D(n492), .CK(CLK), .Q(sort[10]) );
  DFFHQX1 swap_number_reg_reg_2_ ( .D(n489), .CK(CLK), .Q(swap_number_reg[2])
         );
  DFFHQX1 swap_number_reg_reg_1_ ( .D(n490), .CK(CLK), .Q(swap_number_reg[1])
         );
  DFFHQX1 mini_idx_reg_2_ ( .D(n518), .CK(CLK), .Q(mini_idx[2]) );
  DFFHQX1 sort_reg_6__1_ ( .D(n496), .CK(CLK), .Q(sort[4]) );
  DFFHQX1 mini_idx_reg_1_ ( .D(n519), .CK(CLK), .Q(mini_idx[1]) );
  DFFHQX1 sort_reg_4__2_ ( .D(n493), .CK(CLK), .Q(sort[11]) );
  DFFHQX1 input_cnt_reg_0_ ( .D(N72), .CK(CLK), .Q(input_cnt[0]) );
  DFFHQX1 input_cnt_reg_1_ ( .D(N73), .CK(CLK), .Q(input_cnt[1]) );
  DFFHQX1 input_cnt_reg_2_ ( .D(N74), .CK(CLK), .Q(input_cnt[2]) );
  DFFHQX1 input_cnt_reg_3_ ( .D(N75), .CK(CLK), .Q(input_cnt[3]) );
  DFFHQX1 swap_number_const_reg_1_ ( .D(n502), .CK(CLK), .Q(
        swap_number_const[1]) );
  DFFHQX1 swap_number_const_reg_2_ ( .D(n501), .CK(CLK), .Q(
        swap_number_const[2]) );
  DFFHQX1 swap_number_reg_reg_0_ ( .D(n491), .CK(CLK), .Q(swap_number_reg[0])
         );
  DFFHQX1 mini_idx_reg_0_ ( .D(n520), .CK(CLK), .Q(mini_idx[0]) );
  DFFHQX1 sort_reg_2__1_ ( .D(n510), .CK(CLK), .Q(sort[16]) );
  DFFHQX1 sort_reg_0__1_ ( .D(n521), .CK(CLK), .Q(sort[22]) );
  DFFHQX1 sort_reg_5__1_ ( .D(n498), .CK(CLK), .Q(sort[7]) );
  DFFHQX1 sort_reg_3__1_ ( .D(n513), .CK(CLK), .Q(sort[13]) );
  DFFHQX1 sort_reg_7__1_ ( .D(n516), .CK(CLK), .Q(sort[1]) );
  DFFHQX1 sort_reg_1__1_ ( .D(n507), .CK(CLK), .Q(sort[19]) );
  DFFHQX1 sort_reg_6__2_ ( .D(n497), .CK(CLK), .Q(sort[5]) );
  DFFHQX1 sort_reg_0__2_ ( .D(n504), .CK(CLK), .Q(sort[23]) );
  DFFHQX1 sort_reg_5__2_ ( .D(n499), .CK(CLK), .Q(sort[8]) );
  DFFHQX1 sort_reg_3__2_ ( .D(n512), .CK(CLK), .Q(sort[14]) );
  DFFHQX1 sort_reg_7__2_ ( .D(n515), .CK(CLK), .Q(sort[2]) );
  DFFHQX1 sort_reg_2__2_ ( .D(n509), .CK(CLK), .Q(sort[17]) );
  DFFHQX1 sort_reg_1__2_ ( .D(n506), .CK(CLK), .Q(sort[20]) );
  DFFHQX1 sort_reg_4__0_ ( .D(n494), .CK(CLK), .Q(sort[9]) );
  DFFHQX1 sort_reg_0__0_ ( .D(n505), .CK(CLK), .Q(sort[21]) );
  DFFHQX1 sort_reg_6__0_ ( .D(n495), .CK(CLK), .Q(sort[3]) );
  DFFHQX1 sort_reg_5__0_ ( .D(n500), .CK(CLK), .Q(sort[6]) );
  DFFHQX1 sort_reg_3__0_ ( .D(n514), .CK(CLK), .Q(sort[12]) );
  DFFHQX1 sort_reg_7__0_ ( .D(n517), .CK(CLK), .Q(sort[0]) );
  DFFHQX1 sort_reg_2__0_ ( .D(n511), .CK(CLK), .Q(sort[15]) );
  DFFHQX1 sort_reg_1__0_ ( .D(n508), .CK(CLK), .Q(sort[18]) );
  DFFHQX1 current_reg_0_ ( .D(n481), .CK(CLK), .Q(current[0]) );
  DFFHQX1 current_reg_1_ ( .D(n480), .CK(CLK), .Q(current[1]) );
  DFFHQX1 current_reg_2_ ( .D(n479), .CK(CLK), .Q(current[2]) );
  DFFHQX1 current_reg_3_ ( .D(n478), .CK(CLK), .Q(current[3]) );
  DFFHQX1 current_reg_4_ ( .D(n477), .CK(CLK), .Q(current[4]) );
  DFFHQX1 current_reg_5_ ( .D(n476), .CK(CLK), .Q(current[5]) );
  DFFHQX1 current_reg_6_ ( .D(n475), .CK(CLK), .Q(current[6]) );
  DFFHQX1 current_reg_7_ ( .D(n474), .CK(CLK), .Q(current[7]) );
  ADDFXL intadd_0_U2 ( .A(Cost[6]), .B(current[6]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_4_) );
  ADDFXL intadd_0_U3 ( .A(Cost[5]), .B(current[5]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_3_) );
  ADDFXL intadd_0_U4 ( .A(Cost[4]), .B(current[4]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_2_) );
  ADDFXL intadd_0_U5 ( .A(Cost[3]), .B(current[3]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_1_) );
  ADDFXL intadd_0_U6 ( .A(Cost[2]), .B(current[2]), .CI(intadd_0_CI), .CO(
        intadd_0_n5), .S(intadd_0_SUM_0_) );
  DFFRX1 state_reg_0_ ( .D(nx_state[0]), .CK(CLK), .RN(n458), .Q(state[0]), 
        .QN(n973) );
  DFFRX1 state_reg_1_ ( .D(nx_state[1]), .CK(CLK), .RN(n458), .Q(state[1]), 
        .QN(n974) );
  DFFRX1 state_reg_2_ ( .D(nx_state[2]), .CK(CLK), .RN(n458), .Q(state[2]), 
        .QN(n972) );
  DFFX1 swap_number_const_reg_0_ ( .D(n503), .CK(CLK), .Q(swap_number_const[0]), .QN(n975) );
  DFFX1 current_reg_8_ ( .D(n482), .CK(CLK), .QN(n977) );
  DFFX1 current_reg_9_ ( .D(n473), .CK(CLK), .Q(current[9]), .QN(n976) );
  DFFHQX1 MinCost_reg_8_ ( .D(n472), .CK(CLK), .Q(n983) );
  DFFHQX1 MinCost_reg_7_ ( .D(n464), .CK(CLK), .Q(n984) );
  DFFHQX1 MatchCount_reg_3_ ( .D(n459), .CK(CLK), .Q(n978) );
  DFFHQX1 MinCost_reg_5_ ( .D(n466), .CK(CLK), .Q(n986) );
  DFFHQX1 MinCost_reg_3_ ( .D(n468), .CK(CLK), .Q(n988) );
  DFFHQX1 MinCost_reg_2_ ( .D(n469), .CK(CLK), .Q(n989) );
  DFFHQX1 MatchCount_reg_2_ ( .D(n462), .CK(CLK), .Q(n979) );
  DFFHQX1 MatchCount_reg_0_ ( .D(n461), .CK(CLK), .Q(n981) );
  DFFHQX1 MinCost_reg_9_ ( .D(n463), .CK(CLK), .Q(n982) );
  DFFHQX1 MinCost_reg_4_ ( .D(n467), .CK(CLK), .Q(n987) );
  DFFHQX1 MinCost_reg_6_ ( .D(n465), .CK(CLK), .Q(n985) );
  DFFHQX4 W_reg_2_ ( .D(n483), .CK(CLK), .Q(W[2]) );
  DFFHQX4 W_reg_1_ ( .D(n484), .CK(CLK), .Q(W[1]) );
  DFFHQX4 W_reg_0_ ( .D(n485), .CK(CLK), .Q(W[0]) );
  DFFHQX4 J_reg_1_ ( .D(n487), .CK(CLK), .Q(J[1]) );
  DFFHQX4 J_reg_2_ ( .D(n486), .CK(CLK), .Q(J[2]) );
  DFFHQX4 J_reg_0_ ( .D(n488), .CK(CLK), .Q(J[0]) );
  DFFHQX1 MatchCount_reg_1_ ( .D(n460), .CK(CLK), .Q(n980) );
  DFFHQX1 MinCost_reg_1_ ( .D(n470), .CK(CLK), .Q(n990) );
  DFFHQX1 MinCost_reg_0_ ( .D(n471), .CK(CLK), .Q(n991) );
  NOR2XL U533 ( .A(swap_number_reg[1]), .B(swap_number_reg[2]), .Y(n650) );
  NOR2XL U534 ( .A(sort[18]), .B(n939), .Y(n592) );
  NOR2XL U535 ( .A(input_cnt[1]), .B(n692), .Y(n560) );
  NOR2XL U536 ( .A(MinCost[5]), .B(n968), .Y(n852) );
  NOR2XL U537 ( .A(n964), .B(MinCost[2]), .Y(n843) );
  NOR2XL U538 ( .A(input_cnt[2]), .B(input_cnt[1]), .Y(n567) );
  NOR2XL U539 ( .A(n975), .B(n737), .Y(n735) );
  NOR2XL U540 ( .A(swap_number_const[0]), .B(n737), .Y(n761) );
  NOR2XL U541 ( .A(n933), .B(n688), .Y(n551) );
  NOR2XL U542 ( .A(RST), .B(n713), .Y(n835) );
  NOR2XL U543 ( .A(n933), .B(n931), .Y(n727) );
  NOR2XL U544 ( .A(n726), .B(n794), .Y(n956) );
  NOR2XL U545 ( .A(RST), .B(n923), .Y(n778) );
  NOR2XL U546 ( .A(n625), .B(n624), .Y(n927) );
  NOR2XL U547 ( .A(mini_idx[2]), .B(n629), .Y(n699) );
  NOR2XL U548 ( .A(n716), .B(n794), .Y(n870) );
  NOR2XL U549 ( .A(RST), .B(n942), .Y(n614) );
  NOR2XL U550 ( .A(state[2]), .B(n543), .Y(n942) );
  NOR2XL U551 ( .A(n909), .B(n915), .Y(n966) );
  AND4X1 U552 ( .A(n665), .B(n664), .C(n663), .D(n662), .Y(n726) );
  NOR2XL U553 ( .A(RST), .B(n940), .Y(n946) );
  NOR2XL U554 ( .A(input_cnt[3]), .B(n690), .Y(n689) );
  NOR2XL U555 ( .A(input_cnt[0]), .B(n915), .Y(N72) );
  OAI32XL U556 ( .A0(n979), .A1(n523), .A2(n970), .B0(n888), .B1(n887), .Y(
        n462) );
  OAI31XL U557 ( .A0(MatchCount[0]), .A1(n883), .A2(n885), .B0(n862), .Y(n461)
         );
  NOR2X1 U558 ( .A(n884), .B(n883), .Y(n902) );
  NOR2X1 U559 ( .A(n677), .B(n679), .Y(n685) );
  OAI211XL U560 ( .A0(MinCost[7]), .A1(n912), .B0(n855), .C0(n854), .Y(n856)
         );
  NOR2X1 U561 ( .A(n950), .B(n823), .Y(n866) );
  NOR2X1 U562 ( .A(n715), .B(n794), .Y(n871) );
  NOR2X1 U563 ( .A(n720), .B(n794), .Y(n878) );
  NOR2X1 U564 ( .A(n794), .B(n725), .Y(n958) );
  NOR2X1 U565 ( .A(n721), .B(n794), .Y(n877) );
  NOR2X1 U566 ( .A(n826), .B(n931), .Y(n722) );
  NOR2X1 U567 ( .A(n830), .B(n952), .Y(n802) );
  NOR2X1 U568 ( .A(n830), .B(n931), .Y(n717) );
  NOR2X1 U569 ( .A(n770), .B(n791), .Y(n789) );
  OAI211XL U570 ( .A0(MinCost[8]), .A1(n977), .B0(n839), .C0(n854), .Y(n885)
         );
  NOR2X1 U571 ( .A(n875), .B(n952), .Y(n876) );
  NOR2X1 U572 ( .A(n797), .B(n796), .Y(n812) );
  NOR2X1 U573 ( .A(n714), .B(n796), .Y(n923) );
  NOR2X1 U574 ( .A(n737), .B(n796), .Y(n770) );
  NOR2X1 U575 ( .A(n765), .B(n796), .Y(n813) );
  NOR2X1 U576 ( .A(input_cnt[3]), .B(n915), .Y(n572) );
  NOR2X1 U577 ( .A(n738), .B(n796), .Y(n949) );
  NOR2X1 U578 ( .A(MinCost[3]), .B(n965), .Y(n847) );
  NOR2X1 U579 ( .A(n575), .B(input_cnt[3]), .Y(n542) );
  NOR2X1 U580 ( .A(MinCost[1]), .B(n897), .Y(n842) );
  NOR2X1 U581 ( .A(n918), .B(RST), .Y(n697) );
  BUFX8 U582 ( .A(n981), .Y(MatchCount[0]) );
  BUFX8 U583 ( .A(n983), .Y(MinCost[8]) );
  BUFX8 U584 ( .A(n984), .Y(MinCost[7]) );
  BUFX8 U585 ( .A(n986), .Y(MinCost[5]) );
  BUFX8 U586 ( .A(n988), .Y(MinCost[3]) );
  BUFX8 U587 ( .A(n989), .Y(MinCost[2]) );
  NAND2XL U588 ( .A(n835), .B(n974), .Y(n796) );
  NAND2XL U589 ( .A(n932), .B(n778), .Y(n823) );
  NAND2XL U590 ( .A(sort[0]), .B(n813), .Y(n807) );
  INVXL U591 ( .A(n923), .Y(n931) );
  OAI211XL U592 ( .A0(n795), .A1(n794), .B0(n866), .C0(n793), .Y(n821) );
  NOR2X1 U593 ( .A(n792), .B(n817), .Y(n795) );
  INVXL U594 ( .A(n821), .Y(n819) );
  OAI32XL U595 ( .A0(n824), .A1(n823), .A2(n936), .B0(n863), .B1(n823), .Y(
        n834) );
  INVXL U596 ( .A(n834), .Y(n937) );
  MXI2XL U597 ( .A(n930), .B(n929), .S0(n928), .Y(n514) );
  NAND2XL U598 ( .A(state[2]), .B(state[1]), .Y(n840) );
  AOI2BB1XL U599 ( .A0N(input_cnt[3]), .A1N(n583), .B0(RST), .Y(n573) );
  OAI211XL U600 ( .A0(n930), .A1(n952), .B0(n753), .C0(n752), .Y(n754) );
  AOI22XL U601 ( .A0(sort[6]), .A1(n950), .B0(sort[9]), .B1(n783), .Y(n785) );
  OAI211XL U602 ( .A0(n952), .A1(n803), .B0(n746), .C0(n745), .Y(n747) );
  AOI21XL U603 ( .A0(sort[2]), .A1(n813), .B0(RST), .Y(n798) );
  AOI32XL U604 ( .A0(n738), .A1(n778), .A2(n728), .B0(n794), .B1(n778), .Y(
        n732) );
  INVXL U605 ( .A(n732), .Y(n731) );
  NAND2XL U606 ( .A(n792), .B(n764), .Y(n750) );
  NAND2XL U607 ( .A(n864), .B(n764), .Y(n793) );
  OAI211XL U608 ( .A0(n952), .A1(n814), .B0(n740), .C0(n739), .Y(n741) );
  OAI211XL U609 ( .A0(n736), .A1(n794), .B0(n458), .C0(n796), .Y(n759) );
  NOR2X1 U610 ( .A(n735), .B(n756), .Y(n736) );
  INVXL U611 ( .A(n759), .Y(n757) );
  AOI211XL U612 ( .A0(n779), .A1(n863), .B0(n823), .C0(n783), .Y(n804) );
  INVXL U613 ( .A(n804), .Y(n928) );
  NAND2XL U614 ( .A(n458), .B(n698), .Y(n710) );
  OAI21XL U615 ( .A0(n712), .A1(n699), .B0(n863), .Y(n698) );
  NAND2XL U616 ( .A(n699), .B(n863), .Y(n708) );
  NAND2XL U617 ( .A(n863), .B(n712), .Y(n707) );
  NAND2XL U618 ( .A(n922), .B(n458), .Y(n915) );
  AOI211XL U619 ( .A0(n764), .A1(n763), .B0(RST), .C0(n762), .Y(n791) );
  AOI2BB1XL U620 ( .A0N(n761), .A1N(n788), .B0(n794), .Y(n762) );
  OAI2BB1XL U621 ( .A0N(n679), .A1N(n697), .B0(n678), .Y(n684) );
  NAND2XL U622 ( .A(n614), .B(n918), .Y(n678) );
  OAI211XL U623 ( .A0(n943), .A1(n613), .B0(n946), .C0(n608), .Y(n686) );
  INVXL U624 ( .A(n697), .Y(n677) );
  AOI32XL U625 ( .A0(n943), .A1(n946), .A2(n613), .B0(n945), .B1(n946), .Y(
        n682) );
  NAND2XL U626 ( .A(n824), .B(n764), .Y(n952) );
  AOI31XL U627 ( .A0(n866), .A1(n952), .A2(n865), .B0(n923), .Y(n959) );
  OAI21XL U628 ( .A0(n864), .A1(n957), .B0(n863), .Y(n865) );
  AND2XL U629 ( .A(n777), .B(n764), .Y(n950) );
  INVXL U630 ( .A(n959), .Y(n879) );
  MXI2XL U631 ( .A(n939), .B(n938), .S0(n937), .Y(n511) );
  OAI22XL U632 ( .A0(n933), .A1(n932), .B0(n953), .B1(n931), .Y(n934) );
  AOI32XL U633 ( .A0(n811), .A1(n821), .A2(n810), .B0(n819), .B1(n809), .Y(
        n500) );
  AOI22XL U634 ( .A0(sort[3]), .A1(n812), .B0(sort[12]), .B1(n923), .Y(n811)
         );
  OAI211XL U635 ( .A0(n961), .A1(n932), .B0(n458), .C0(n807), .Y(n808) );
  AOI32XL U636 ( .A0(n822), .A1(n821), .A2(n820), .B0(n819), .B1(n818), .Y(
        n498) );
  AOI22XL U637 ( .A0(sort[1]), .A1(n813), .B0(sort[4]), .B1(n812), .Y(n822) );
  OAI22XL U638 ( .A0(n880), .A1(n932), .B0(n814), .B1(n931), .Y(n815) );
  AOI22XL U639 ( .A0(MinCost[3]), .A1(n965), .B0(n845), .B1(n844), .Y(n846) );
  OAI31XL U640 ( .A0(n842), .A1(current[0]), .A2(n527), .B0(n841), .Y(n845) );
  AOI22XL U641 ( .A0(MinCost[1]), .A1(n897), .B0(MinCost[2]), .B1(n964), .Y(
        n841) );
  NOR2X1 U642 ( .A(swap_number_reg[1]), .B(n617), .Y(n651) );
  OAI22XL U643 ( .A0(current[6]), .A1(n853), .B0(n852), .B1(n851), .Y(n855) );
  AOI22XL U644 ( .A0(MinCost[5]), .A1(n968), .B0(n850), .B1(n849), .Y(n851) );
  OAI22XL U645 ( .A0(current[4]), .A1(n848), .B0(n847), .B1(n846), .Y(n849) );
  NAND2XL U646 ( .A(current[6]), .B(n853), .Y(n854) );
  NAND2XL U647 ( .A(current[4]), .B(n848), .Y(n850) );
  NAND2XL U648 ( .A(state[2]), .B(n973), .Y(n713) );
  AOI222XL U649 ( .A0(current[9]), .A1(n860), .B0(current[9]), .B1(n859), .C0(
        n860), .C1(n859), .Y(n884) );
  AOI22XL U650 ( .A0(MinCost[8]), .A1(n977), .B0(n858), .B1(n857), .Y(n860) );
  OR2XL U651 ( .A(n977), .B(MinCost[8]), .Y(n857) );
  OAI2BB1XL U652 ( .A0N(n912), .A1N(MinCost[7]), .B0(n856), .Y(n858) );
  NOR2BXL U653 ( .AN(MatchCount[0]), .B(n885), .Y(n886) );
  NAND2XL U654 ( .A(state[0]), .B(n974), .Y(n543) );
  NOR2X1 U655 ( .A(n975), .B(n765), .Y(n792) );
  NOR3XL U656 ( .A(swap_number_const[0]), .B(swap_number_const[1]), .C(
        swap_number_const[2]), .Y(n712) );
  NOR2X1 U657 ( .A(sort[13]), .B(n829), .Y(n590) );
  NOR2X1 U658 ( .A(sort[1]), .B(n875), .Y(n586) );
  INVXL U659 ( .A(n952), .Y(n783) );
  OAI211XL U660 ( .A0(n676), .A1(n704), .B0(n675), .C0(n674), .Y(n679) );
  NOR2X1 U661 ( .A(swap_number_const[0]), .B(n797), .Y(n824) );
  NOR2X1 U662 ( .A(swap_number_const[0]), .B(n765), .Y(n864) );
  INVXL U663 ( .A(n794), .Y(n863) );
  NAND2XL U664 ( .A(state[0]), .B(n697), .Y(n794) );
  NOR2X1 U665 ( .A(n975), .B(n797), .Y(n777) );
  INVXL U666 ( .A(n796), .Y(n764) );
  INVXL U667 ( .A(n572), .Y(n574) );
  NOR4XL U668 ( .A(n847), .B(n843), .C(n838), .D(n837), .Y(n839) );
  NAND4BBXL U669 ( .AN(n842), .BN(n852), .C(n836), .D(n850), .Y(n837) );
  NAND2XL U670 ( .A(n835), .B(state[1]), .Y(n883) );
  OAI21XL U671 ( .A0(state[0]), .A1(n840), .B0(n458), .Y(n889) );
  INVXL U672 ( .A(n902), .Y(n890) );
  INVXL U673 ( .A(n900), .Y(n907) );
  AOI32XL U674 ( .A0(current[7]), .A1(n967), .A2(intadd_0_n1), .B0(n913), .B1(
        n967), .Y(n962) );
  OR2XL U675 ( .A(n912), .B(n911), .Y(n963) );
  AOI22XL U676 ( .A0(n606), .A1(n603), .B0(n602), .B1(n601), .Y(n941) );
  NOR2X1 U677 ( .A(n972), .B(n543), .Y(n922) );
  NAND2XL U678 ( .A(n972), .B(state[1]), .Y(n918) );
  NAND2BXL U679 ( .AN(n883), .B(n884), .Y(n900) );
  NAND2XL U680 ( .A(n890), .B(n889), .Y(n906) );
  OAI21XL U681 ( .A0(n890), .A1(n886), .B0(n889), .Y(n969) );
  NAND2XL U682 ( .A(n902), .B(n886), .Y(n970) );
  NAND2XL U683 ( .A(n966), .B(intadd_0_n1), .Y(n911) );
  AOI2BB1XL U684 ( .A0N(n542), .A1N(n543), .B0(n948), .Y(n909) );
  INVXL U685 ( .A(Cost[1]), .Y(n540) );
  NAND2XL U686 ( .A(current[0]), .B(Cost[0]), .Y(n694) );
  INVXL U687 ( .A(current[1]), .Y(n897) );
  INVXL U688 ( .A(n966), .Y(n913) );
  INVXL U689 ( .A(n909), .Y(n967) );
  AOI22XL U690 ( .A0(sort[8]), .A1(n950), .B0(sort[17]), .B1(n923), .Y(n766)
         );
  NOR2X1 U691 ( .A(mini_idx[2]), .B(n626), .Y(n729) );
  NOR2X1 U692 ( .A(n625), .B(n628), .Y(n756) );
  NOR2X1 U693 ( .A(n627), .B(n626), .Y(n817) );
  NOR2X1 U694 ( .A(mini_idx[0]), .B(n624), .Y(n936) );
  NOR2X1 U695 ( .A(n612), .B(n617), .Y(n919) );
  NAND2XL U696 ( .A(n941), .B(n946), .Y(n680) );
  NAND3XL U697 ( .A(n600), .B(n599), .C(n606), .Y(n945) );
  NOR2X1 U698 ( .A(sort[7]), .B(n880), .Y(n597) );
  AOI32XL U699 ( .A0(n607), .A1(n606), .A2(n605), .B0(n945), .B1(n606), .Y(
        n943) );
  NOR2X1 U700 ( .A(n917), .B(n688), .Y(n690) );
  NOR2X1 U701 ( .A(mini_idx[0]), .B(n628), .Y(n788) );
  NOR2X1 U702 ( .A(n627), .B(n629), .Y(n957) );
  OR2XL U703 ( .A(n973), .B(n840), .Y(n541) );
  OAI2BB1XL U704 ( .A0N(n573), .A1N(J[0]), .B0(n552), .Y(n488) );
  OAI211XL U705 ( .A0(n551), .A1(n550), .B0(n572), .C0(n549), .Y(n552) );
  OAI2BB1XL U706 ( .A0N(n573), .A1N(J[2]), .B0(n571), .Y(n486) );
  OAI211XL U707 ( .A0(n570), .A1(n569), .B0(n572), .C0(n568), .Y(n571) );
  NOR2X1 U708 ( .A(n830), .B(n688), .Y(n570) );
  OAI2BB1XL U709 ( .A0N(n573), .A1N(J[1]), .B0(n559), .Y(n487) );
  OAI211XL U710 ( .A0(n558), .A1(n557), .B0(n572), .C0(n556), .Y(n559) );
  NOR2X1 U711 ( .A(n826), .B(n688), .Y(n558) );
  OAI2BB2XL U712 ( .B0(n917), .B1(n574), .A0N(n573), .A1N(W[0]), .Y(n485) );
  OAI2BB2XL U713 ( .B0(n916), .B1(n574), .A0N(n573), .A1N(W[1]), .Y(n484) );
  OAI2BB2XL U714 ( .B0(n692), .B1(n574), .A0N(n573), .A1N(W[2]), .Y(n483) );
  NAND2XL U715 ( .A(n908), .B(n458), .Y(n465) );
  AOI22XL U716 ( .A0(current[6]), .A1(n907), .B0(n985), .B1(n906), .Y(n908) );
  NAND2XL U717 ( .A(n891), .B(n458), .Y(n467) );
  AOI22XL U718 ( .A0(n987), .A1(n906), .B0(current[4]), .B1(n907), .Y(n891) );
  NAND2XL U719 ( .A(n893), .B(n458), .Y(n463) );
  AOI22XL U720 ( .A0(n982), .A1(n906), .B0(current[9]), .B1(n907), .Y(n893) );
  AOI21XL U721 ( .A0(MatchCount[0]), .A1(n861), .B0(n907), .Y(n862) );
  OAI2BB1XL U722 ( .A0N(n458), .A1N(n885), .B0(n889), .Y(n861) );
  AOI2BB1XL U723 ( .A0N(n980), .A1N(n890), .B0(n969), .Y(n888) );
  OAI211XL U724 ( .A0(n964), .A1(n900), .B0(n458), .C0(n894), .Y(n469) );
  NAND2XL U725 ( .A(MinCost[2]), .B(n906), .Y(n894) );
  OAI211XL U726 ( .A0(n965), .A1(n900), .B0(n458), .C0(n898), .Y(n468) );
  NAND2XL U727 ( .A(MinCost[3]), .B(n906), .Y(n898) );
  NAND2XL U728 ( .A(n892), .B(n458), .Y(n466) );
  AOI22XL U729 ( .A0(MinCost[5]), .A1(n906), .B0(current[5]), .B1(n907), .Y(
        n892) );
  OAI31XL U730 ( .A0(n978), .A1(n904), .A2(n970), .B0(n903), .Y(n459) );
  AOI32XL U731 ( .A0(n902), .A1(MatchCount[3]), .A2(n904), .B0(n969), .B1(n978), .Y(n903) );
  NAND2XL U732 ( .A(n979), .B(MatchCount[1]), .Y(n904) );
  NAND2XL U733 ( .A(n905), .B(n458), .Y(n464) );
  AOI22XL U734 ( .A0(current[7]), .A1(n907), .B0(MinCost[7]), .B1(n906), .Y(
        n905) );
  OAI211XL U735 ( .A0(n977), .A1(n900), .B0(n458), .C0(n895), .Y(n472) );
  NAND2XL U736 ( .A(MinCost[8]), .B(n906), .Y(n895) );
  OAI32XL U737 ( .A0(current[9]), .A1(n977), .A2(n963), .B0(n914), .B1(n976), 
        .Y(n473) );
  AOI21XL U738 ( .A0(n966), .A1(n977), .B0(n962), .Y(n914) );
  AOI2BB2XL U739 ( .B0(n963), .B1(n977), .A0N(n977), .A1N(n962), .Y(n482) );
  OAI211XL U740 ( .A0(n901), .A1(n900), .B0(n458), .C0(n899), .Y(n471) );
  NAND2XL U741 ( .A(MinCost[0]), .B(n906), .Y(n899) );
  OAI211XL U742 ( .A0(n897), .A1(n900), .B0(n458), .C0(n896), .Y(n470) );
  NAND2XL U743 ( .A(n990), .B(n906), .Y(n896) );
  AOI2BB2XL U744 ( .B0(n970), .B1(n523), .A0N(n523), .A1N(n969), .Y(n460) );
  AOI22XL U745 ( .A0(current[7]), .A1(n910), .B0(n911), .B1(n912), .Y(n474) );
  AOI2BB1XL U746 ( .A0N(intadd_0_n1), .A1N(n913), .B0(n909), .Y(n910) );
  INVXL U747 ( .A(n545), .Y(n475) );
  AOI22XL U748 ( .A0(current[6]), .A1(n909), .B0(n966), .B1(intadd_0_SUM_4_), 
        .Y(n545) );
  OAI2BB2XL U749 ( .B0(n968), .B1(n967), .A0N(n966), .A1N(intadd_0_SUM_3_), 
        .Y(n476) );
  INVXL U750 ( .A(n544), .Y(n477) );
  AOI22XL U751 ( .A0(current[4]), .A1(n909), .B0(n966), .B1(intadd_0_SUM_2_), 
        .Y(n544) );
  OAI2BB2XL U752 ( .B0(n965), .B1(n967), .A0N(n966), .A1N(intadd_0_SUM_1_), 
        .Y(n478) );
  OAI2BB2XL U753 ( .B0(n964), .B1(n967), .A0N(n966), .A1N(intadd_0_SUM_0_), 
        .Y(n479) );
  OAI22XL U754 ( .A0(n913), .A1(n696), .B0(n967), .B1(n897), .Y(n480) );
  OAI2BB2XL U755 ( .B0(n897), .B1(n695), .A0N(n897), .A1N(n695), .Y(n696) );
  XOR2XL U756 ( .A(Cost[1]), .B(n694), .Y(n695) );
  OAI22XL U757 ( .A0(n913), .A1(n693), .B0(n967), .B1(n901), .Y(n481) );
  OAI2BB2XL U758 ( .B0(current[0]), .B1(Cost[0]), .A0N(current[0]), .A1N(
        Cost[0]), .Y(n693) );
  AOI32XL U759 ( .A0(n733), .A1(n732), .A2(n458), .B0(n731), .B1(n730), .Y(
        n508) );
  AOI32XL U760 ( .A0(n760), .A1(n759), .A2(n758), .B0(n757), .B1(n933), .Y(
        n517) );
  AOI211XL U761 ( .A0(sort[9]), .A1(n950), .B0(RST), .C0(n751), .Y(n760) );
  OAI22XL U762 ( .A0(n953), .A1(n750), .B0(n809), .B1(n793), .Y(n751) );
  OAI22XL U763 ( .A0(n791), .A1(n790), .B0(n789), .B1(n953), .Y(n495) );
  NAND3XL U764 ( .A(n785), .B(n784), .C(n807), .Y(n786) );
  AOI22XL U765 ( .A0(sort[12]), .A1(n949), .B0(sort[15]), .B1(n923), .Y(n784)
         );
  OAI222XL U766 ( .A0(n710), .A1(n709), .B0(n708), .B1(n725), .C0(n707), .C1(
        n726), .Y(n505) );
  MXI2XL U767 ( .A(n961), .B(n960), .S0(n959), .Y(n494) );
  OAI21XL U768 ( .A0(n953), .A1(n952), .B0(n951), .Y(n954) );
  AOI22XL U769 ( .A0(n731), .A1(n719), .B0(n718), .B1(n732), .Y(n506) );
  AOI22XL U770 ( .A0(n834), .A1(n833), .B0(n832), .B1(n937), .Y(n509) );
  OAI22XL U771 ( .A0(n830), .A1(n932), .B0(n868), .B1(n931), .Y(n831) );
  AOI32XL U772 ( .A0(n749), .A1(n759), .A2(n748), .B0(n757), .B1(n830), .Y(
        n515) );
  AOI211XL U773 ( .A0(sort[11]), .A1(n950), .B0(RST), .C0(n744), .Y(n749) );
  OAI22XL U774 ( .A0(n868), .A1(n750), .B0(n867), .B1(n793), .Y(n744) );
  AOI32XL U775 ( .A0(n806), .A1(n928), .A2(n805), .B0(n804), .B1(n803), .Y(
        n512) );
  AOI22XL U776 ( .A0(sort[5]), .A1(n949), .B0(sort[8]), .B1(n923), .Y(n806) );
  AOI22XL U777 ( .A0(n819), .A1(n867), .B0(n801), .B1(n821), .Y(n499) );
  OAI211XL U778 ( .A0(n803), .A1(n931), .B0(n799), .C0(n798), .Y(n800) );
  AOI22XL U779 ( .A0(sort[5]), .A1(n812), .B0(sort[11]), .B1(n949), .Y(n799)
         );
  OAI222XL U780 ( .A0(n710), .A1(n705), .B0(n708), .B1(n715), .C0(n707), .C1(
        n716), .Y(n504) );
  OAI22XL U781 ( .A0(n791), .A1(n771), .B0(n789), .B1(n868), .Y(n497) );
  AOI211XL U782 ( .A0(n788), .A1(n871), .B0(n769), .C0(n768), .Y(n771) );
  OAI211XL U783 ( .A0(n788), .A1(n767), .B0(n798), .C0(n766), .Y(n768) );
  OAI22XL U784 ( .A0(n872), .A1(n952), .B0(n803), .B1(n932), .Y(n769) );
  AOI22XL U785 ( .A0(n731), .A1(n724), .B0(n723), .B1(n732), .Y(n507) );
  AOI32XL U786 ( .A0(n743), .A1(n759), .A2(n742), .B0(n757), .B1(n826), .Y(
        n516) );
  AOI211XL U787 ( .A0(sort[10]), .A1(n950), .B0(RST), .C0(n734), .Y(n743) );
  OAI22XL U788 ( .A0(n875), .A1(n750), .B0(n818), .B1(n793), .Y(n734) );
  AOI22XL U789 ( .A0(n804), .A1(n814), .B0(n782), .B1(n928), .Y(n513) );
  OAI211XL U790 ( .A0(n826), .A1(n952), .B0(n780), .C0(n458), .Y(n781) );
  OAI222XL U791 ( .A0(n710), .A1(n702), .B0(n708), .B1(n720), .C0(n707), .C1(
        n721), .Y(n521) );
  AOI22XL U792 ( .A0(n834), .A1(n829), .B0(n828), .B1(n937), .Y(n510) );
  OAI211XL U793 ( .A0(n826), .A1(n932), .B0(n458), .C0(n825), .Y(n827) );
  NAND2XL U794 ( .A(n681), .B(n680), .Y(n520) );
  AOI22XL U795 ( .A0(swap_number_reg[0]), .A1(n685), .B0(mini_idx[0]), .B1(
        n684), .Y(n681) );
  OAI211XL U796 ( .A0(n678), .A1(n609), .B0(n680), .C0(n604), .Y(n491) );
  OAI21XL U797 ( .A0(n919), .A1(n609), .B0(n697), .Y(n604) );
  OAI2BB2XL U798 ( .B0(n948), .B1(n947), .A0N(n946), .A1N(n945), .Y(n501) );
  OAI2BB2XL U799 ( .B0(n948), .B1(n944), .A0N(n946), .A1N(n943), .Y(n502) );
  AOI211XL U800 ( .A0(input_cnt[3]), .A1(n690), .B0(n915), .C0(n689), .Y(N75)
         );
  AOI211XL U801 ( .A0(n692), .A1(n691), .B0(n690), .C0(n915), .Y(N74) );
  AOI32XL U802 ( .A0(n874), .A1(n959), .A2(n873), .B0(n872), .B1(n879), .Y(
        n493) );
  AOI21XL U803 ( .A0(sort[2]), .A1(n950), .B0(RST), .Y(n874) );
  OAI22XL U804 ( .A0(n868), .A1(n952), .B0(n867), .B1(n932), .Y(n869) );
  AOI22XL U805 ( .A0(swap_number_reg[1]), .A1(n685), .B0(mini_idx[1]), .B1(
        n684), .Y(n687) );
  OAI22XL U806 ( .A0(n791), .A1(n776), .B0(n789), .B1(n875), .Y(n496) );
  NAND4XL U807 ( .A(n774), .B(n773), .C(n458), .D(n772), .Y(n775) );
  AOI22XL U808 ( .A0(swap_number_reg[2]), .A1(n685), .B0(mini_idx[2]), .B1(
        n684), .Y(n683) );
  OAI211XL U809 ( .A0(n612), .A1(n678), .B0(n686), .C0(n611), .Y(n490) );
  OAI211XL U810 ( .A0(n677), .A1(n616), .B0(n682), .C0(n615), .Y(n489) );
  AOI32XL U811 ( .A0(n882), .A1(n959), .A2(n881), .B0(n880), .B1(n879), .Y(
        n492) );
  AOI22XL U812 ( .A0(sort[1]), .A1(n950), .B0(sort[7]), .B1(n949), .Y(n882) );
  INVXL U813 ( .A(n980), .Y(n523) );
  INVX4 U814 ( .A(n523), .Y(MatchCount[1]) );
  INVXL U815 ( .A(n990), .Y(n525) );
  INVX4 U816 ( .A(n525), .Y(MinCost[1]) );
  INVXL U817 ( .A(n991), .Y(n527) );
  INVX4 U818 ( .A(n527), .Y(MinCost[0]) );
  INVX4 U819 ( .A(n853), .Y(MinCost[6]) );
  INVXL U820 ( .A(n985), .Y(n853) );
  INVX4 U821 ( .A(n848), .Y(MinCost[4]) );
  INVXL U822 ( .A(n987), .Y(n848) );
  INVX4 U823 ( .A(n859), .Y(MinCost[9]) );
  INVXL U824 ( .A(n982), .Y(n859) );
  INVX4 U825 ( .A(n887), .Y(MatchCount[2]) );
  BUFX4 U826 ( .A(n978), .Y(MatchCount[3]) );
  INVXL U827 ( .A(n843), .Y(n844) );
  INVXL U828 ( .A(n949), .Y(n932) );
  INVXL U829 ( .A(n945), .Y(n601) );
  INVXL U830 ( .A(n614), .Y(n948) );
  AOI222XL U831 ( .A0(n897), .A1(n694), .B0(n897), .B1(n540), .C0(n694), .C1(
        n540), .Y(intadd_0_CI) );
  INVXL U832 ( .A(RST), .Y(n458) );
  INVX4 U833 ( .A(n541), .Y(Valid) );
  INVXL U834 ( .A(input_cnt[0]), .Y(n917) );
  NAND2XL U835 ( .A(n567), .B(n917), .Y(n575) );
  INVXL U836 ( .A(n922), .Y(n583) );
  INVXL U837 ( .A(sort[0]), .Y(n933) );
  NAND2XL U838 ( .A(input_cnt[2]), .B(input_cnt[1]), .Y(n688) );
  INVXL U839 ( .A(sort[12]), .Y(n930) );
  INVXL U840 ( .A(input_cnt[2]), .Y(n692) );
  NAND2XL U841 ( .A(input_cnt[1]), .B(n692), .Y(n562) );
  AOI22XL U842 ( .A0(sort[6]), .A1(n560), .B0(sort[18]), .B1(n567), .Y(n546)
         );
  OAI211XL U843 ( .A0(n930), .A1(n562), .B0(input_cnt[0]), .C0(n546), .Y(n550)
         );
  INVXL U844 ( .A(n562), .Y(n565) );
  INVXL U845 ( .A(sort[3]), .Y(n953) );
  INVXL U846 ( .A(sort[9]), .Y(n961) );
  INVXL U847 ( .A(n560), .Y(n563) );
  OAI22XL U848 ( .A0(n953), .A1(n688), .B0(n961), .B1(n563), .Y(n547) );
  AOI211XL U849 ( .A0(sort[15]), .A1(n565), .B0(input_cnt[0]), .C0(n547), .Y(
        n548) );
  OAI2BB1XL U850 ( .A0N(sort[21]), .A1N(n567), .B0(n548), .Y(n549) );
  INVXL U851 ( .A(sort[1]), .Y(n826) );
  INVXL U852 ( .A(sort[13]), .Y(n814) );
  AOI22XL U853 ( .A0(sort[7]), .A1(n560), .B0(sort[19]), .B1(n567), .Y(n553)
         );
  OAI211XL U854 ( .A0(n814), .A1(n562), .B0(input_cnt[0]), .C0(n553), .Y(n557)
         );
  INVXL U855 ( .A(sort[4]), .Y(n875) );
  INVXL U856 ( .A(sort[10]), .Y(n880) );
  OAI22XL U857 ( .A0(n875), .A1(n688), .B0(n880), .B1(n563), .Y(n554) );
  AOI211XL U858 ( .A0(sort[16]), .A1(n565), .B0(input_cnt[0]), .C0(n554), .Y(
        n555) );
  OAI2BB1XL U859 ( .A0N(sort[22]), .A1N(n567), .B0(n555), .Y(n556) );
  INVXL U860 ( .A(sort[2]), .Y(n830) );
  INVXL U861 ( .A(sort[14]), .Y(n803) );
  AOI22XL U862 ( .A0(sort[8]), .A1(n560), .B0(sort[20]), .B1(n567), .Y(n561)
         );
  OAI211XL U863 ( .A0(n803), .A1(n562), .B0(input_cnt[0]), .C0(n561), .Y(n569)
         );
  INVXL U864 ( .A(sort[5]), .Y(n868) );
  INVXL U865 ( .A(sort[11]), .Y(n872) );
  OAI22XL U866 ( .A0(n868), .A1(n688), .B0(n872), .B1(n563), .Y(n564) );
  AOI211XL U867 ( .A0(sort[17]), .A1(n565), .B0(input_cnt[0]), .C0(n564), .Y(
        n566) );
  OAI2BB1XL U868 ( .A0N(sort[23]), .A1N(n567), .B0(n566), .Y(n568) );
  INVXL U869 ( .A(input_cnt[1]), .Y(n916) );
  NAND2BXL U870 ( .AN(n575), .B(input_cnt[3]), .Y(n921) );
  INVXL U871 ( .A(n942), .Y(n940) );
  INVXL U872 ( .A(sort[16]), .Y(n829) );
  NAND4XL U873 ( .A(sort[10]), .B(sort[22]), .C(n875), .D(n829), .Y(n581) );
  NAND4XL U874 ( .A(sort[7]), .B(sort[19]), .C(n826), .D(n814), .Y(n580) );
  NAND4XL U875 ( .A(sort[17]), .B(sort[23]), .C(n868), .D(n872), .Y(n579) );
  NAND2XL U876 ( .A(sort[9]), .B(n930), .Y(n594) );
  INVXL U877 ( .A(sort[6]), .Y(n809) );
  NAND2XL U878 ( .A(sort[3]), .B(n809), .Y(n588) );
  INVXL U879 ( .A(sort[20]), .Y(n719) );
  INVXL U880 ( .A(sort[15]), .Y(n939) );
  INVXL U881 ( .A(sort[8]), .Y(n867) );
  NAND3XL U882 ( .A(sort[14]), .B(n592), .C(n867), .Y(n576) );
  NOR4XL U883 ( .A(sort[2]), .B(n588), .C(n719), .D(n576), .Y(n577) );
  NAND4BXL U884 ( .AN(n594), .B(sort[21]), .C(n577), .D(n933), .Y(n578) );
  NOR4XL U885 ( .A(n581), .B(n580), .C(n579), .D(n578), .Y(n584) );
  OAI211XL U886 ( .A0(n584), .A1(n972), .B0(state[1]), .C0(n973), .Y(n582) );
  OAI211XL U887 ( .A0(n583), .A1(n921), .B0(n940), .C0(n582), .Y(nx_state[1])
         );
  AOI32XL U888 ( .A0(n584), .A1(state[2]), .A2(n973), .B0(n974), .B1(state[2]), 
        .Y(n585) );
  OAI21XL U889 ( .A0(n973), .A1(n918), .B0(n585), .Y(nx_state[2]) );
  INVXL U890 ( .A(swap_number_reg[0]), .Y(n609) );
  OAI32XL U891 ( .A0(n933), .A1(n586), .A2(sort[3]), .B0(sort[4]), .B1(n826), 
        .Y(n587) );
  AOI222XL U892 ( .A0(sort[2]), .A1(n868), .B0(sort[2]), .B1(n587), .C0(n868), 
        .C1(n587), .Y(n606) );
  AOI222XL U893 ( .A0(sort[7]), .A1(n875), .B0(sort[7]), .B1(n588), .C0(n875), 
        .C1(n588), .Y(n589) );
  AOI222XL U894 ( .A0(sort[5]), .A1(n589), .B0(sort[5]), .B1(n867), .C0(n589), 
        .C1(n867), .Y(n600) );
  INVXL U895 ( .A(n600), .Y(n603) );
  INVXL U896 ( .A(sort[17]), .Y(n833) );
  OAI32XL U897 ( .A0(n930), .A1(n590), .A2(sort[15]), .B0(sort[16]), .B1(n814), 
        .Y(n591) );
  AOI222XL U898 ( .A0(sort[14]), .A1(n833), .B0(sort[14]), .B1(n591), .C0(n833), .C1(n591), .Y(n605) );
  INVXL U899 ( .A(sort[19]), .Y(n724) );
  AOI222XL U900 ( .A0(sort[16]), .A1(n592), .B0(sort[16]), .B1(n724), .C0(n592), .C1(n724), .Y(n593) );
  AOI222XL U901 ( .A0(sort[20]), .A1(n833), .B0(sort[20]), .B1(n593), .C0(n833), .C1(n593), .Y(n596) );
  AOI222XL U902 ( .A0(sort[13]), .A1(n880), .B0(sort[13]), .B1(n594), .C0(n880), .C1(n594), .Y(n595) );
  AOI222XL U903 ( .A0(sort[11]), .A1(n803), .B0(sort[11]), .B1(n595), .C0(n803), .C1(n595), .Y(n607) );
  OAI2BB1XL U904 ( .A0N(n605), .A1N(n596), .B0(n607), .Y(n602) );
  INVXL U905 ( .A(sort[7]), .Y(n818) );
  OAI32XL U906 ( .A0(n809), .A1(n597), .A2(sort[9]), .B0(sort[10]), .B1(n818), 
        .Y(n598) );
  AOI222XL U907 ( .A0(sort[8]), .A1(n598), .B0(sort[8]), .B1(n872), .C0(n598), 
        .C1(n872), .Y(n599) );
  INVXL U908 ( .A(swap_number_reg[1]), .Y(n612) );
  INVXL U909 ( .A(swap_number_reg[2]), .Y(n617) );
  INVXL U910 ( .A(n941), .Y(n613) );
  NAND2XL U911 ( .A(n943), .B(n613), .Y(n608) );
  AOI32XL U912 ( .A0(swap_number_reg[1]), .A1(swap_number_reg[0]), .A2(n617), 
        .B0(n612), .B1(n609), .Y(n610) );
  NAND2XL U913 ( .A(n610), .B(n697), .Y(n611) );
  NAND2XL U914 ( .A(swap_number_reg[1]), .B(swap_number_reg[0]), .Y(n616) );
  NAND2XL U915 ( .A(swap_number_reg[2]), .B(n614), .Y(n615) );
  INVXL U916 ( .A(n919), .Y(n649) );
  NAND2XL U917 ( .A(n617), .B(swap_number_reg[1]), .Y(n653) );
  AOI2BB1XL U918 ( .A0N(n833), .A1N(n653), .B0(swap_number_reg[0]), .Y(n619)
         );
  AOI22XL U919 ( .A0(sort[11]), .A1(n651), .B0(sort[23]), .B1(n650), .Y(n618)
         );
  OAI211XL U920 ( .A0(n868), .A1(n649), .B0(n619), .C0(n618), .Y(n622) );
  AOI22XL U921 ( .A0(sort[8]), .A1(n651), .B0(sort[20]), .B1(n650), .Y(n620)
         );
  OAI211XL U922 ( .A0(n803), .A1(n653), .B0(swap_number_reg[0]), .C0(n620), 
        .Y(n621) );
  AOI32XL U923 ( .A0(n919), .A1(n622), .A2(sort[2]), .B0(n621), .B1(n622), .Y(
        n676) );
  INVXL U924 ( .A(mini_idx[2]), .Y(n627) );
  NAND2XL U925 ( .A(mini_idx[1]), .B(n627), .Y(n624) );
  INVXL U926 ( .A(mini_idx[1]), .Y(n623) );
  NAND2XL U927 ( .A(mini_idx[0]), .B(n623), .Y(n626) );
  AOI22XL U928 ( .A0(sort[17]), .A1(n936), .B0(sort[20]), .B1(n729), .Y(n633)
         );
  INVXL U929 ( .A(mini_idx[0]), .Y(n625) );
  NAND2XL U930 ( .A(n623), .B(n625), .Y(n629) );
  AOI22XL U931 ( .A0(sort[11]), .A1(n957), .B0(sort[14]), .B1(n927), .Y(n632)
         );
  NAND2XL U932 ( .A(mini_idx[2]), .B(mini_idx[1]), .Y(n628) );
  AOI22XL U933 ( .A0(sort[2]), .A1(n756), .B0(sort[8]), .B1(n817), .Y(n631) );
  AOI22XL U934 ( .A0(sort[5]), .A1(n788), .B0(sort[23]), .B1(n699), .Y(n630)
         );
  NAND4XL U935 ( .A(n633), .B(n632), .C(n631), .D(n630), .Y(n704) );
  NAND2XL U936 ( .A(swap_number_const[1]), .B(swap_number_const[2]), .Y(n737)
         );
  NOR3XL U937 ( .A(swap_number_const[1]), .B(swap_number_const[2]), .C(n975), 
        .Y(n711) );
  AOI22XL U938 ( .A0(sort[5]), .A1(n761), .B0(sort[20]), .B1(n711), .Y(n637)
         );
  INVXL U939 ( .A(swap_number_const[2]), .Y(n947) );
  NAND2XL U940 ( .A(swap_number_const[1]), .B(n947), .Y(n797) );
  AOI22XL U941 ( .A0(sort[14]), .A1(n777), .B0(sort[17]), .B1(n824), .Y(n636)
         );
  INVXL U942 ( .A(swap_number_const[1]), .Y(n944) );
  NAND2XL U943 ( .A(swap_number_const[2]), .B(n944), .Y(n765) );
  AOI22XL U944 ( .A0(sort[8]), .A1(n792), .B0(sort[11]), .B1(n864), .Y(n635)
         );
  AOI22XL U945 ( .A0(sort[2]), .A1(n735), .B0(sort[23]), .B1(n712), .Y(n634)
         );
  NAND4XL U946 ( .A(n637), .B(n636), .C(n635), .D(n634), .Y(n703) );
  AOI22XL U947 ( .A0(sort[4]), .A1(n761), .B0(sort[19]), .B1(n711), .Y(n641)
         );
  AOI22XL U948 ( .A0(sort[13]), .A1(n777), .B0(sort[16]), .B1(n824), .Y(n640)
         );
  AOI22XL U949 ( .A0(sort[7]), .A1(n792), .B0(sort[10]), .B1(n864), .Y(n639)
         );
  AOI22XL U950 ( .A0(sort[1]), .A1(n735), .B0(n712), .B1(sort[22]), .Y(n638)
         );
  NAND4XL U951 ( .A(n641), .B(n640), .C(n639), .D(n638), .Y(n700) );
  AOI2BB1XL U952 ( .A0N(n829), .A1N(n653), .B0(swap_number_reg[0]), .Y(n643)
         );
  AOI22XL U953 ( .A0(sort[10]), .A1(n651), .B0(n650), .B1(sort[22]), .Y(n642)
         );
  OAI211XL U954 ( .A0(n875), .A1(n649), .B0(n643), .C0(n642), .Y(n646) );
  AOI22XL U955 ( .A0(sort[7]), .A1(n651), .B0(sort[19]), .B1(n650), .Y(n644)
         );
  OAI211XL U956 ( .A0(n814), .A1(n653), .B0(swap_number_reg[0]), .C0(n644), 
        .Y(n645) );
  AOI32XL U957 ( .A0(n919), .A1(n646), .A2(sort[1]), .B0(n645), .B1(n646), .Y(
        n671) );
  AOI2BB1XL U958 ( .A0N(n939), .A1N(n653), .B0(swap_number_reg[0]), .Y(n648)
         );
  AOI22XL U959 ( .A0(sort[9]), .A1(n651), .B0(n650), .B1(sort[21]), .Y(n647)
         );
  OAI211XL U960 ( .A0(n953), .A1(n649), .B0(n648), .C0(n647), .Y(n655) );
  AOI22XL U961 ( .A0(sort[6]), .A1(n651), .B0(sort[18]), .B1(n650), .Y(n652)
         );
  OAI211XL U962 ( .A0(n930), .A1(n653), .B0(swap_number_reg[0]), .C0(n652), 
        .Y(n654) );
  AOI32XL U963 ( .A0(n919), .A1(n655), .A2(sort[0]), .B0(n654), .B1(n655), .Y(
        n666) );
  AOI22XL U964 ( .A0(sort[3]), .A1(n761), .B0(sort[18]), .B1(n711), .Y(n659)
         );
  AOI22XL U965 ( .A0(sort[12]), .A1(n777), .B0(sort[15]), .B1(n824), .Y(n658)
         );
  AOI22XL U966 ( .A0(sort[6]), .A1(n792), .B0(sort[9]), .B1(n864), .Y(n657) );
  AOI22XL U967 ( .A0(sort[0]), .A1(n735), .B0(n712), .B1(sort[21]), .Y(n656)
         );
  NAND4XL U968 ( .A(n659), .B(n658), .C(n657), .D(n656), .Y(n706) );
  OAI22XL U969 ( .A0(n671), .A1(n700), .B0(n666), .B1(n706), .Y(n660) );
  OAI2BB1XL U970 ( .A0N(n700), .A1N(n671), .B0(n660), .Y(n661) );
  AOI222XL U971 ( .A0(n703), .A1(n676), .B0(n703), .B1(n661), .C0(n676), .C1(
        n661), .Y(n675) );
  AOI22XL U972 ( .A0(sort[15]), .A1(n936), .B0(sort[18]), .B1(n729), .Y(n665)
         );
  AOI22XL U973 ( .A0(sort[9]), .A1(n957), .B0(sort[12]), .B1(n927), .Y(n664)
         );
  AOI22XL U974 ( .A0(sort[0]), .A1(n756), .B0(sort[6]), .B1(n817), .Y(n663) );
  AOI22XL U975 ( .A0(sort[3]), .A1(n788), .B0(sort[21]), .B1(n699), .Y(n662)
         );
  NOR2BXL U976 ( .AN(n666), .B(n726), .Y(n672) );
  AOI22XL U977 ( .A0(sort[16]), .A1(n936), .B0(sort[19]), .B1(n729), .Y(n670)
         );
  AOI22XL U978 ( .A0(sort[10]), .A1(n957), .B0(sort[13]), .B1(n927), .Y(n669)
         );
  AOI22XL U979 ( .A0(sort[1]), .A1(n756), .B0(sort[7]), .B1(n817), .Y(n668) );
  AOI22XL U980 ( .A0(sort[4]), .A1(n788), .B0(sort[22]), .B1(n699), .Y(n667)
         );
  NAND4XL U981 ( .A(n670), .B(n669), .C(n668), .D(n667), .Y(n701) );
  AOI222XL U982 ( .A0(n672), .A1(n701), .B0(n672), .B1(n671), .C0(n701), .C1(
        n671), .Y(n673) );
  OAI2BB1XL U983 ( .A0N(n676), .A1N(n704), .B0(n673), .Y(n674) );
  NAND2XL U984 ( .A(n683), .B(n682), .Y(n518) );
  NAND2XL U985 ( .A(n687), .B(n686), .Y(n519) );
  NAND2XL U986 ( .A(input_cnt[0]), .B(input_cnt[1]), .Y(n691) );
  INVXL U987 ( .A(current[0]), .Y(n901) );
  INVXL U988 ( .A(sort[22]), .Y(n702) );
  INVXL U989 ( .A(n700), .Y(n720) );
  INVXL U990 ( .A(n701), .Y(n721) );
  INVXL U991 ( .A(sort[23]), .Y(n705) );
  INVXL U992 ( .A(n703), .Y(n715) );
  INVXL U993 ( .A(n704), .Y(n716) );
  INVXL U994 ( .A(sort[21]), .Y(n709) );
  INVXL U995 ( .A(n706), .Y(n725) );
  INVXL U996 ( .A(n711), .Y(n738) );
  INVXL U997 ( .A(n712), .Y(n714) );
  INVXL U998 ( .A(n729), .Y(n728) );
  AOI221XL U999 ( .A0(n871), .A1(n729), .B0(n870), .B1(n728), .C0(n717), .Y(
        n718) );
  AOI221XL U1000 ( .A0(n878), .A1(n729), .B0(n877), .B1(n728), .C0(n722), .Y(
        n723) );
  AOI221XL U1001 ( .A0(n958), .A1(n729), .B0(n956), .B1(n728), .C0(n727), .Y(
        n733) );
  INVXL U1002 ( .A(sort[18]), .Y(n730) );
  INVXL U1003 ( .A(n756), .Y(n755) );
  AOI22XL U1004 ( .A0(sort[1]), .A1(n770), .B0(sort[16]), .B1(n949), .Y(n740)
         );
  NAND2XL U1005 ( .A(sort[19]), .B(n923), .Y(n739) );
  AOI221XL U1006 ( .A0(n878), .A1(n756), .B0(n877), .B1(n755), .C0(n741), .Y(
        n742) );
  AOI22XL U1007 ( .A0(sort[2]), .A1(n770), .B0(sort[17]), .B1(n949), .Y(n746)
         );
  NAND2XL U1008 ( .A(sort[20]), .B(n923), .Y(n745) );
  AOI221XL U1009 ( .A0(n871), .A1(n756), .B0(n870), .B1(n755), .C0(n747), .Y(
        n748) );
  AOI22XL U1010 ( .A0(sort[0]), .A1(n770), .B0(sort[15]), .B1(n949), .Y(n753)
         );
  NAND2XL U1011 ( .A(sort[18]), .B(n923), .Y(n752) );
  AOI221XL U1012 ( .A0(n958), .A1(n756), .B0(n956), .B1(n755), .C0(n754), .Y(
        n758) );
  INVXL U1013 ( .A(n864), .Y(n763) );
  INVXL U1014 ( .A(n870), .Y(n767) );
  INVXL U1015 ( .A(n788), .Y(n787) );
  AOI22XL U1016 ( .A0(sort[7]), .A1(n950), .B0(sort[16]), .B1(n923), .Y(n774)
         );
  AOI22XL U1017 ( .A0(sort[10]), .A1(n783), .B0(sort[13]), .B1(n949), .Y(n773)
         );
  NAND2XL U1018 ( .A(sort[1]), .B(n813), .Y(n772) );
  AOI221XL U1019 ( .A0(n878), .A1(n788), .B0(n877), .B1(n787), .C0(n775), .Y(
        n776) );
  OR2XL U1020 ( .A(n777), .B(n927), .Y(n779) );
  INVXL U1021 ( .A(n927), .Y(n926) );
  AOI22XL U1022 ( .A0(sort[4]), .A1(n949), .B0(sort[7]), .B1(n923), .Y(n780)
         );
  AOI221XL U1023 ( .A0(n878), .A1(n927), .B0(n877), .B1(n926), .C0(n781), .Y(
        n782) );
  AOI221XL U1024 ( .A0(n958), .A1(n788), .B0(n956), .B1(n787), .C0(n786), .Y(
        n790) );
  INVXL U1025 ( .A(n817), .Y(n816) );
  AOI221XL U1026 ( .A0(n871), .A1(n817), .B0(n870), .B1(n816), .C0(n800), .Y(
        n801) );
  AOI221XL U1027 ( .A0(n871), .A1(n927), .B0(n870), .B1(n926), .C0(n802), .Y(
        n805) );
  AOI221XL U1028 ( .A0(n958), .A1(n817), .B0(n956), .B1(n816), .C0(n808), .Y(
        n810) );
  AOI221XL U1029 ( .A0(n878), .A1(n817), .B0(n877), .B1(n816), .C0(n815), .Y(
        n820) );
  INVXL U1030 ( .A(n936), .Y(n935) );
  NAND2XL U1031 ( .A(sort[4]), .B(n923), .Y(n825) );
  AOI221XL U1032 ( .A0(n878), .A1(n936), .B0(n877), .B1(n935), .C0(n827), .Y(
        n828) );
  AOI221XL U1033 ( .A0(n871), .A1(n936), .B0(n870), .B1(n935), .C0(n831), .Y(
        n832) );
  INVXL U1034 ( .A(current[3]), .Y(n965) );
  INVXL U1035 ( .A(current[2]), .Y(n964) );
  INVXL U1036 ( .A(current[7]), .Y(n912) );
  OAI22XL U1037 ( .A0(MinCost[0]), .A1(n901), .B0(MinCost[7]), .B1(n912), .Y(
        n838) );
  INVXL U1038 ( .A(current[5]), .Y(n968) );
  NAND2XL U1039 ( .A(current[9]), .B(n859), .Y(n836) );
  INVXL U1040 ( .A(n957), .Y(n955) );
  AOI221XL U1041 ( .A0(n871), .A1(n957), .B0(n870), .B1(n955), .C0(n869), .Y(
        n873) );
  AOI221XL U1042 ( .A0(n878), .A1(n957), .B0(n877), .B1(n955), .C0(n876), .Y(
        n881) );
  INVXL U1043 ( .A(n979), .Y(n887) );
  AOI221XL U1044 ( .A0(input_cnt[0]), .A1(input_cnt[1]), .B0(n917), .B1(n916), 
        .C0(n915), .Y(N73) );
  AOI32XL U1045 ( .A0(n919), .A1(n973), .A2(swap_number_reg[0]), .B0(n918), 
        .B1(n973), .Y(n920) );
  OAI2BB1XL U1046 ( .A0N(n922), .A1N(n921), .B0(n920), .Y(nx_state[0]) );
  AOI22XL U1047 ( .A0(sort[3]), .A1(n949), .B0(sort[6]), .B1(n923), .Y(n924)
         );
  OAI211XL U1048 ( .A0(n933), .A1(n952), .B0(n924), .C0(n458), .Y(n925) );
  AOI221XL U1049 ( .A0(n958), .A1(n927), .B0(n956), .B1(n926), .C0(n925), .Y(
        n929) );
  AOI221XL U1050 ( .A0(n958), .A1(n936), .B0(n956), .B1(n935), .C0(n934), .Y(
        n938) );
  AOI221XL U1051 ( .A0(n942), .A1(n941), .B0(n940), .B1(n975), .C0(RST), .Y(
        n503) );
  AOI22XL U1052 ( .A0(sort[0]), .A1(n950), .B0(sort[6]), .B1(n949), .Y(n951)
         );
  AOI221XL U1053 ( .A0(n958), .A1(n957), .B0(n956), .B1(n955), .C0(n954), .Y(
        n960) );
endmodule

