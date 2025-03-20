/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 18 02:30:09 2025
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;
  assign SUM[9] = carry[9];

  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_1 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;
  assign SUM[8] = carry[8];

  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_2 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;
  assign SUM[8] = carry[8];

  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_5 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(SUM[7]), .S(SUM[6]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215,
         last, N219, \cost0[0][6] , \cost0[0][5] , \cost0[0][4] ,
         \cost0[0][3] , \cost0[0][2] , \cost0[0][1] , \cost0[0][0] ,
         \cost0[1][6] , \cost0[1][5] , \cost0[1][4] , \cost0[1][3] ,
         \cost0[1][2] , \cost0[1][1] , \cost0[1][0] , \cost0[2][6] ,
         \cost0[2][5] , \cost0[2][4] , \cost0[2][3] , \cost0[2][2] ,
         \cost0[2][1] , \cost0[2][0] , \cost0[3][6] , \cost0[3][5] ,
         \cost0[3][4] , \cost0[3][3] , \cost0[3][2] , \cost0[3][1] ,
         \cost0[3][0] , \cost0[4][6] , \cost0[4][5] , \cost0[4][4] ,
         \cost0[4][3] , \cost0[4][2] , \cost0[4][1] , \cost0[4][0] ,
         \cost0[5][6] , \cost0[5][5] , \cost0[5][4] , \cost0[5][3] ,
         \cost0[5][2] , \cost0[5][1] , \cost0[5][0] , \cost0[6][6] ,
         \cost0[6][5] , \cost0[6][4] , \cost0[6][3] , \cost0[6][2] ,
         \cost0[6][1] , \cost0[6][0] , \cost0[7][6] , \cost0[7][5] ,
         \cost0[7][4] , \cost0[7][3] , \cost0[7][2] , \cost0[7][1] ,
         \cost0[7][0] , \cost1[0][6] , \cost1[0][5] , \cost1[0][4] ,
         \cost1[0][3] , \cost1[0][2] , \cost1[0][1] , \cost1[0][0] ,
         \cost1[1][6] , \cost1[1][5] , \cost1[1][4] , \cost1[1][3] ,
         \cost1[1][2] , \cost1[1][1] , \cost1[1][0] , \cost1[2][6] ,
         \cost1[2][5] , \cost1[2][4] , \cost1[2][3] , \cost1[2][2] ,
         \cost1[2][1] , \cost1[2][0] , \cost1[3][6] , \cost1[3][5] ,
         \cost1[3][4] , \cost1[3][3] , \cost1[3][2] , \cost1[3][1] ,
         \cost1[3][0] , \cost1[4][6] , \cost1[4][5] , \cost1[4][4] ,
         \cost1[4][3] , \cost1[4][2] , \cost1[4][1] , \cost1[4][0] ,
         \cost1[5][6] , \cost1[5][5] , \cost1[5][4] , \cost1[5][3] ,
         \cost1[5][2] , \cost1[5][1] , \cost1[5][0] , \cost1[6][6] ,
         \cost1[6][5] , \cost1[6][4] , \cost1[6][3] , \cost1[6][2] ,
         \cost1[6][1] , \cost1[6][0] , \cost1[7][6] , \cost1[7][5] ,
         \cost1[7][4] , \cost1[7][3] , \cost1[7][2] , \cost1[7][1] ,
         \cost1[7][0] , \cost2[0][6] , \cost2[0][5] , \cost2[0][4] ,
         \cost2[0][3] , \cost2[0][2] , \cost2[0][1] , \cost2[0][0] ,
         \cost2[1][6] , \cost2[1][5] , \cost2[1][4] , \cost2[1][3] ,
         \cost2[1][2] , \cost2[1][1] , \cost2[1][0] , \cost2[2][6] ,
         \cost2[2][5] , \cost2[2][4] , \cost2[2][3] , \cost2[2][2] ,
         \cost2[2][1] , \cost2[2][0] , \cost2[3][6] , \cost2[3][5] ,
         \cost2[3][4] , \cost2[3][3] , \cost2[3][2] , \cost2[3][1] ,
         \cost2[3][0] , \cost2[4][6] , \cost2[4][5] , \cost2[4][4] ,
         \cost2[4][3] , \cost2[4][2] , \cost2[4][1] , \cost2[4][0] ,
         \cost2[5][6] , \cost2[5][5] , \cost2[5][4] , \cost2[5][3] ,
         \cost2[5][2] , \cost2[5][1] , \cost2[5][0] , \cost2[6][6] ,
         \cost2[6][5] , \cost2[6][4] , \cost2[6][3] , \cost2[6][2] ,
         \cost2[6][1] , \cost2[6][0] , \cost2[7][6] , \cost2[7][5] ,
         \cost2[7][4] , \cost2[7][3] , \cost2[7][2] , \cost2[7][1] ,
         \cost2[7][0] , \cost3[0][6] , \cost3[0][5] , \cost3[0][4] ,
         \cost3[0][3] , \cost3[0][2] , \cost3[0][1] , \cost3[0][0] ,
         \cost3[1][6] , \cost3[1][5] , \cost3[1][4] , \cost3[1][3] ,
         \cost3[1][2] , \cost3[1][1] , \cost3[1][0] , \cost3[2][6] ,
         \cost3[2][5] , \cost3[2][4] , \cost3[2][3] , \cost3[2][2] ,
         \cost3[2][1] , \cost3[2][0] , \cost3[3][6] , \cost3[3][5] ,
         \cost3[3][4] , \cost3[3][3] , \cost3[3][2] , \cost3[3][1] ,
         \cost3[3][0] , \cost3[4][6] , \cost3[4][5] , \cost3[4][4] ,
         \cost3[4][3] , \cost3[4][2] , \cost3[4][1] , \cost3[4][0] ,
         \cost3[5][6] , \cost3[5][5] , \cost3[5][4] , \cost3[5][3] ,
         \cost3[5][2] , \cost3[5][1] , \cost3[5][0] , \cost3[6][6] ,
         \cost3[6][5] , \cost3[6][4] , \cost3[6][3] , \cost3[6][2] ,
         \cost3[6][1] , \cost3[6][0] , \cost3[7][6] , \cost3[7][5] ,
         \cost3[7][4] , \cost3[7][3] , \cost3[7][2] , \cost3[7][1] ,
         \cost3[7][0] , \cost4[0][6] , \cost4[0][5] , \cost4[0][4] ,
         \cost4[0][3] , \cost4[0][2] , \cost4[0][1] , \cost4[0][0] ,
         \cost4[1][6] , \cost4[1][5] , \cost4[1][4] , \cost4[1][3] ,
         \cost4[1][2] , \cost4[1][1] , \cost4[1][0] , \cost4[2][6] ,
         \cost4[2][5] , \cost4[2][4] , \cost4[2][3] , \cost4[2][2] ,
         \cost4[2][1] , \cost4[2][0] , \cost4[3][6] , \cost4[3][5] ,
         \cost4[3][4] , \cost4[3][3] , \cost4[3][2] , \cost4[3][1] ,
         \cost4[3][0] , \cost4[4][6] , \cost4[4][5] , \cost4[4][4] ,
         \cost4[4][3] , \cost4[4][2] , \cost4[4][1] , \cost4[4][0] ,
         \cost4[5][6] , \cost4[5][5] , \cost4[5][4] , \cost4[5][3] ,
         \cost4[5][2] , \cost4[5][1] , \cost4[5][0] , \cost4[6][6] ,
         \cost4[6][5] , \cost4[6][4] , \cost4[6][3] , \cost4[6][2] ,
         \cost4[6][1] , \cost4[6][0] , \cost4[7][6] , \cost4[7][5] ,
         \cost4[7][4] , \cost4[7][3] , \cost4[7][2] , \cost4[7][1] ,
         \cost4[7][0] , \cost5[0][6] , \cost5[0][5] , \cost5[0][4] ,
         \cost5[0][3] , \cost5[0][2] , \cost5[0][1] , \cost5[0][0] ,
         \cost5[1][6] , \cost5[1][5] , \cost5[1][4] , \cost5[1][3] ,
         \cost5[1][2] , \cost5[1][1] , \cost5[1][0] , \cost5[2][6] ,
         \cost5[2][5] , \cost5[2][4] , \cost5[2][3] , \cost5[2][2] ,
         \cost5[2][1] , \cost5[2][0] , \cost5[3][6] , \cost5[3][5] ,
         \cost5[3][4] , \cost5[3][3] , \cost5[3][2] , \cost5[3][1] ,
         \cost5[3][0] , \cost5[4][6] , \cost5[4][5] , \cost5[4][4] ,
         \cost5[4][3] , \cost5[4][2] , \cost5[4][1] , \cost5[4][0] ,
         \cost5[5][6] , \cost5[5][5] , \cost5[5][4] , \cost5[5][3] ,
         \cost5[5][2] , \cost5[5][1] , \cost5[5][0] , \cost5[6][6] ,
         \cost5[6][5] , \cost5[6][4] , \cost5[6][3] , \cost5[6][2] ,
         \cost5[6][1] , \cost5[6][0] , \cost5[7][6] , \cost5[7][5] ,
         \cost5[7][4] , \cost5[7][3] , \cost5[7][2] , \cost5[7][1] ,
         \cost5[7][0] , \cost6[0][6] , \cost6[0][5] , \cost6[0][4] ,
         \cost6[0][3] , \cost6[0][2] , \cost6[0][1] , \cost6[0][0] ,
         \cost6[1][6] , \cost6[1][5] , \cost6[1][4] , \cost6[1][3] ,
         \cost6[1][2] , \cost6[1][1] , \cost6[1][0] , \cost6[2][6] ,
         \cost6[2][5] , \cost6[2][4] , \cost6[2][3] , \cost6[2][2] ,
         \cost6[2][1] , \cost6[2][0] , \cost6[3][6] , \cost6[3][5] ,
         \cost6[3][4] , \cost6[3][3] , \cost6[3][2] , \cost6[3][1] ,
         \cost6[3][0] , \cost6[4][6] , \cost6[4][5] , \cost6[4][4] ,
         \cost6[4][3] , \cost6[4][2] , \cost6[4][1] , \cost6[4][0] ,
         \cost6[5][6] , \cost6[5][5] , \cost6[5][4] , \cost6[5][3] ,
         \cost6[5][2] , \cost6[5][1] , \cost6[5][0] , \cost6[6][6] ,
         \cost6[6][5] , \cost6[6][4] , \cost6[6][3] , \cost6[6][2] ,
         \cost6[6][1] , \cost6[6][0] , \cost6[7][6] , \cost6[7][5] ,
         \cost6[7][4] , \cost6[7][3] , \cost6[7][2] , \cost6[7][1] ,
         \cost6[7][0] , \cost7[0][6] , \cost7[0][5] , \cost7[0][4] ,
         \cost7[0][3] , \cost7[0][2] , \cost7[0][1] , \cost7[0][0] ,
         \cost7[1][6] , \cost7[1][5] , \cost7[1][4] , \cost7[1][3] ,
         \cost7[1][2] , \cost7[1][1] , \cost7[1][0] , \cost7[2][6] ,
         \cost7[2][5] , \cost7[2][4] , \cost7[2][3] , \cost7[2][2] ,
         \cost7[2][1] , \cost7[2][0] , \cost7[3][6] , \cost7[3][5] ,
         \cost7[3][4] , \cost7[3][3] , \cost7[3][2] , \cost7[3][1] ,
         \cost7[3][0] , \cost7[4][6] , \cost7[4][5] , \cost7[4][4] ,
         \cost7[4][3] , \cost7[4][2] , \cost7[4][1] , \cost7[4][0] ,
         \cost7[5][6] , \cost7[5][5] , \cost7[5][4] , \cost7[5][3] ,
         \cost7[5][2] , \cost7[5][1] , \cost7[5][0] , \cost7[6][6] ,
         \cost7[6][5] , \cost7[6][4] , \cost7[6][3] , \cost7[6][2] ,
         \cost7[6][1] , \cost7[6][0] , \cost7[7][6] , \cost7[7][5] ,
         \cost7[7][4] , \cost7[7][3] , \cost7[7][2] , \cost7[7][1] ,
         \cost7[7][0] , \sort[0][3] , \sort[1][3] , \sort[2][3] , \sort[3][3] ,
         \sort[4][3] , \sort[5][3] , \sort[6][3] , \sort[7][3] , \mini_idx[3] ,
         N1647, N1648, N1649, N1650, N1651, N1652, N1653, N1654, N1655, N1656,
         N1657, N1658, N1659, N1660, N1661, N1662, N1663, N1664, N1665, N1666,
         N1667, N1668, N1669, N1670, N1671, N1672, N1673, N1674, N1675, N1676,
         N1677, N1678, N1679, N1680, N1681, N1682, N1683, N1684, N1685, N1686,
         N1687, N1688, N1689, N1690, N1691, N1692, N1693, N1694, N1695, N1696,
         N1697, N1698, N1699, N1700, N1701, N1702, N1703, N1704, N1705, N1706,
         N1707, N1708, N1709, N1710, N1711, N1712, N1713, N1714, N1715, N1716,
         N1717, N1718, N1720, N1721, N1722, N1723, N1724, N1725, N1726, N1727,
         N1730, N1731, N1732, N1733, N1734, N1735, N1736, N1737, N1740, N1741,
         N1742, N1743, N1744, N1745, N1746, N1747, N1748, N1750, N1751, N1752,
         N1753, N1754, N1755, N1756, N1757, N1758, N1760, N1761, N1762, N1763,
         N1764, N1765, N1766, N1767, N1768, N1769, N1835, N1836, N1837, N1838,
         N1839, N1840, N1841, N1842, N1843, N1844, N1845, N1846, N1847, N1848,
         n103, n105, n146, n147, n180, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593,
         n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603,
         n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613,
         n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623,
         n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633,
         n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643,
         n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653,
         n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663,
         n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673,
         n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683,
         n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693,
         n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703,
         n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713,
         n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723,
         n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733,
         n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743,
         n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753,
         n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763,
         n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773,
         n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783,
         n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793,
         n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803,
         n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813,
         n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823,
         n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833,
         n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843,
         n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853,
         n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873,
         n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883,
         n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893,
         n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903,
         n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913,
         n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923,
         n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933,
         n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943,
         n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953,
         n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963,
         n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973,
         n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983,
         n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993,
         n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003,
         n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162, n2163,
         n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172, n2173,
         n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, n2183,
         n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202, n2203,
         n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213,
         n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223,
         n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232, n2233,
         n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242, n2243,
         n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252, n2253,
         n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263,
         n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272, n2273,
         n2274, n2275;
  wire   [3:0] state;
  wire   [3:0] iter_num;
  wire   [3:0] swap_num;
  wire   [3:0] mini_num;
  wire   [3:0] match_count;
  wire   [3:0] nx_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  JAM_DW01_add_0 add_0_root_add_249_7 ( .A({1'b0, N1748, N1747, N1746, N1745, 
        N1744, N1743, N1742, N1741, N1740}), .B({1'b0, N1758, N1757, N1756, 
        N1755, N1754, N1753, N1752, N1751, N1750}), .CI(1'b0), .SUM({N1769, 
        N1768, N1767, N1766, N1765, N1764, N1763, N1762, N1761, N1760}) );
  JAM_DW01_add_1 add_1_root_add_249_7 ( .A({1'b0, 1'b0, N1727, N1726, N1725, 
        N1724, N1723, N1722, N1721, N1720}), .B({1'b0, 1'b0, N1737, N1736, 
        N1735, N1734, N1733, N1732, N1731, N1730}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__0, N1758, N1757, N1756, N1755, N1754, N1753, 
        N1752, N1751, N1750}) );
  JAM_DW01_add_2 add_2_root_add_249_7 ( .A({1'b0, 1'b0, N1710, N1709, N1708, 
        N1707, N1706, N1705, N1704, N1703}), .B({1'b0, 1'b0, N1718, N1717, 
        N1716, N1715, N1714, N1713, N1712, N1711}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__1, N1748, N1747, N1746, N1745, N1744, N1743, 
        N1742, N1741, N1740}) );
  JAM_DW01_add_5 add_6_root_add_249_7 ( .A({1'b0, N1647, N1648, N1649, N1650, 
        N1651, N1652, N1653}), .B({1'b0, N1654, N1655, N1656, N1657, N1658, 
        N1659, N1660}), .CI(1'b0), .SUM({N1710, N1709, N1708, N1707, N1706, 
        N1705, N1704, N1703}) );
  DFFX1 \current_reg[9]  ( .D(n1127), .CK(CLK), .Q(n1177), .QN(n180) );
  DFFX1 \current_reg[8]  ( .D(n1128), .CK(CLK), .Q(n1183), .QN(n185) );
  DFFX1 \current_reg[7]  ( .D(n1129), .CK(CLK), .Q(n1174), .QN(n186) );
  DFFX1 \current_reg[6]  ( .D(n1130), .CK(CLK), .Q(n1181), .QN(n187) );
  DFFX1 \current_reg[5]  ( .D(n1131), .CK(CLK), .Q(n1185), .QN(n188) );
  DFFX1 \current_reg[4]  ( .D(n1132), .CK(CLK), .Q(n1175), .QN(n189) );
  DFFX1 \current_reg[3]  ( .D(n1133), .CK(CLK), .Q(n1179), .QN(n190) );
  DFFX1 \current_reg[2]  ( .D(n1134), .CK(CLK), .QN(n191) );
  DFFX1 \current_reg[1]  ( .D(n1135), .CK(CLK), .Q(n1178), .QN(n192) );
  DFFX1 \current_reg[0]  ( .D(n1136), .CK(CLK), .Q(n1184), .QN(n193) );
  DFFX1 \swap_number_reg_reg[3]  ( .D(n1169), .CK(CLK), .QN(n2272) );
  DFFX1 \min_cost_reg[9]  ( .D(n657), .CK(CLK), .QN(n194) );
  DFFX1 \min_cost_reg[7]  ( .D(n658), .CK(CLK), .Q(n1182), .QN(n196) );
  DFFX1 \min_cost_reg[6]  ( .D(n659), .CK(CLK), .Q(n1188), .QN(n197) );
  DFFX1 \min_cost_reg[5]  ( .D(n660), .CK(CLK), .QN(n198) );
  DFFX1 \min_cost_reg[4]  ( .D(n661), .CK(CLK), .QN(n199) );
  DFFX1 \min_cost_reg[3]  ( .D(n662), .CK(CLK), .Q(n1187), .QN(n200) );
  DFFX1 \min_cost_reg[2]  ( .D(n663), .CK(CLK), .Q(n1180), .QN(n201) );
  DFFX1 \min_cost_reg[1]  ( .D(n664), .CK(CLK), .Q(n1186), .QN(n202) );
  DFFX1 \min_cost_reg[0]  ( .D(n665), .CK(CLK), .QN(n203) );
  DFFX1 \min_cost_reg[8]  ( .D(n666), .CK(CLK), .Q(n1176), .QN(n195) );
  DFFX1 \match_count_reg[3]  ( .D(n654), .CK(CLK), .QN(n2271) );
  DFFHQX1 \cost0_reg[2][6]  ( .D(n681), .CK(CLK), .Q(\cost0[2][6] ) );
  DFFHQX1 \cost0_reg[2][5]  ( .D(n682), .CK(CLK), .Q(\cost0[2][5] ) );
  DFFHQX1 \cost0_reg[2][4]  ( .D(n683), .CK(CLK), .Q(\cost0[2][4] ) );
  DFFHQX1 \cost0_reg[2][3]  ( .D(n684), .CK(CLK), .Q(\cost0[2][3] ) );
  DFFHQX1 \cost0_reg[2][2]  ( .D(n685), .CK(CLK), .Q(\cost0[2][2] ) );
  DFFHQX1 \cost0_reg[2][1]  ( .D(n686), .CK(CLK), .Q(\cost0[2][1] ) );
  DFFHQX1 \cost0_reg[2][0]  ( .D(n687), .CK(CLK), .Q(\cost0[2][0] ) );
  DFFHQX1 \cost7_reg[2][6]  ( .D(n736), .CK(CLK), .Q(\cost7[2][6] ) );
  DFFHQX1 \cost7_reg[2][5]  ( .D(n737), .CK(CLK), .Q(\cost7[2][5] ) );
  DFFHQX1 \cost7_reg[2][4]  ( .D(n738), .CK(CLK), .Q(\cost7[2][4] ) );
  DFFHQX1 \cost7_reg[2][3]  ( .D(n739), .CK(CLK), .Q(\cost7[2][3] ) );
  DFFHQX1 \cost7_reg[2][2]  ( .D(n740), .CK(CLK), .Q(\cost7[2][2] ) );
  DFFHQX1 \cost7_reg[2][1]  ( .D(n741), .CK(CLK), .Q(\cost7[2][1] ) );
  DFFHQX1 \cost7_reg[2][0]  ( .D(n742), .CK(CLK), .Q(\cost7[2][0] ) );
  DFFHQX1 \cost6_reg[2][6]  ( .D(n792), .CK(CLK), .Q(\cost6[2][6] ) );
  DFFHQX1 \cost6_reg[2][5]  ( .D(n793), .CK(CLK), .Q(\cost6[2][5] ) );
  DFFHQX1 \cost6_reg[2][4]  ( .D(n794), .CK(CLK), .Q(\cost6[2][4] ) );
  DFFHQX1 \cost6_reg[2][3]  ( .D(n795), .CK(CLK), .Q(\cost6[2][3] ) );
  DFFHQX1 \cost6_reg[2][2]  ( .D(n796), .CK(CLK), .Q(\cost6[2][2] ) );
  DFFHQX1 \cost6_reg[2][1]  ( .D(n797), .CK(CLK), .Q(\cost6[2][1] ) );
  DFFHQX1 \cost6_reg[2][0]  ( .D(n798), .CK(CLK), .Q(\cost6[2][0] ) );
  DFFHQX1 \cost5_reg[2][6]  ( .D(n848), .CK(CLK), .Q(\cost5[2][6] ) );
  DFFHQX1 \cost5_reg[2][5]  ( .D(n849), .CK(CLK), .Q(\cost5[2][5] ) );
  DFFHQX1 \cost5_reg[2][4]  ( .D(n850), .CK(CLK), .Q(\cost5[2][4] ) );
  DFFHQX1 \cost5_reg[2][3]  ( .D(n851), .CK(CLK), .Q(\cost5[2][3] ) );
  DFFHQX1 \cost5_reg[2][2]  ( .D(n852), .CK(CLK), .Q(\cost5[2][2] ) );
  DFFHQX1 \cost5_reg[2][1]  ( .D(n853), .CK(CLK), .Q(\cost5[2][1] ) );
  DFFHQX1 \cost5_reg[2][0]  ( .D(n854), .CK(CLK), .Q(\cost5[2][0] ) );
  DFFHQX1 \cost4_reg[2][6]  ( .D(n904), .CK(CLK), .Q(\cost4[2][6] ) );
  DFFHQX1 \cost4_reg[2][5]  ( .D(n905), .CK(CLK), .Q(\cost4[2][5] ) );
  DFFHQX1 \cost4_reg[2][4]  ( .D(n906), .CK(CLK), .Q(\cost4[2][4] ) );
  DFFHQX1 \cost4_reg[2][3]  ( .D(n907), .CK(CLK), .Q(\cost4[2][3] ) );
  DFFHQX1 \cost4_reg[2][2]  ( .D(n908), .CK(CLK), .Q(\cost4[2][2] ) );
  DFFHQX1 \cost4_reg[2][1]  ( .D(n909), .CK(CLK), .Q(\cost4[2][1] ) );
  DFFHQX1 \cost4_reg[2][0]  ( .D(n910), .CK(CLK), .Q(\cost4[2][0] ) );
  DFFHQX1 \cost3_reg[2][6]  ( .D(n960), .CK(CLK), .Q(\cost3[2][6] ) );
  DFFHQX1 \cost3_reg[2][5]  ( .D(n961), .CK(CLK), .Q(\cost3[2][5] ) );
  DFFHQX1 \cost3_reg[2][4]  ( .D(n962), .CK(CLK), .Q(\cost3[2][4] ) );
  DFFHQX1 \cost3_reg[2][3]  ( .D(n963), .CK(CLK), .Q(\cost3[2][3] ) );
  DFFHQX1 \cost3_reg[2][2]  ( .D(n964), .CK(CLK), .Q(\cost3[2][2] ) );
  DFFHQX1 \cost3_reg[2][1]  ( .D(n965), .CK(CLK), .Q(\cost3[2][1] ) );
  DFFHQX1 \cost3_reg[2][0]  ( .D(n966), .CK(CLK), .Q(\cost3[2][0] ) );
  DFFHQX1 \cost2_reg[2][6]  ( .D(n1016), .CK(CLK), .Q(\cost2[2][6] ) );
  DFFHQX1 \cost2_reg[2][5]  ( .D(n1017), .CK(CLK), .Q(\cost2[2][5] ) );
  DFFHQX1 \cost2_reg[2][4]  ( .D(n1018), .CK(CLK), .Q(\cost2[2][4] ) );
  DFFHQX1 \cost2_reg[2][3]  ( .D(n1019), .CK(CLK), .Q(\cost2[2][3] ) );
  DFFHQX1 \cost2_reg[2][2]  ( .D(n1020), .CK(CLK), .Q(\cost2[2][2] ) );
  DFFHQX1 \cost2_reg[2][1]  ( .D(n1021), .CK(CLK), .Q(\cost2[2][1] ) );
  DFFHQX1 \cost2_reg[2][0]  ( .D(n1022), .CK(CLK), .Q(\cost2[2][0] ) );
  DFFHQX1 \cost1_reg[2][6]  ( .D(n1072), .CK(CLK), .Q(\cost1[2][6] ) );
  DFFHQX1 \cost1_reg[2][5]  ( .D(n1073), .CK(CLK), .Q(\cost1[2][5] ) );
  DFFHQX1 \cost1_reg[2][4]  ( .D(n1074), .CK(CLK), .Q(\cost1[2][4] ) );
  DFFHQX1 \cost1_reg[2][3]  ( .D(n1075), .CK(CLK), .Q(\cost1[2][3] ) );
  DFFHQX1 \cost1_reg[2][2]  ( .D(n1076), .CK(CLK), .Q(\cost1[2][2] ) );
  DFFHQX1 \cost1_reg[2][1]  ( .D(n1077), .CK(CLK), .Q(\cost1[2][1] ) );
  DFFHQX1 \cost1_reg[2][0]  ( .D(n1078), .CK(CLK), .Q(\cost1[2][0] ) );
  DFFHQX1 \cost0_reg[3][6]  ( .D(n688), .CK(CLK), .Q(\cost0[3][6] ) );
  DFFHQX1 \cost0_reg[3][5]  ( .D(n689), .CK(CLK), .Q(\cost0[3][5] ) );
  DFFHQX1 \cost0_reg[3][4]  ( .D(n690), .CK(CLK), .Q(\cost0[3][4] ) );
  DFFHQX1 \cost0_reg[3][3]  ( .D(n691), .CK(CLK), .Q(\cost0[3][3] ) );
  DFFHQX1 \cost0_reg[3][2]  ( .D(n692), .CK(CLK), .Q(\cost0[3][2] ) );
  DFFHQX1 \cost0_reg[3][1]  ( .D(n693), .CK(CLK), .Q(\cost0[3][1] ) );
  DFFHQX1 \cost0_reg[3][0]  ( .D(n694), .CK(CLK), .Q(\cost0[3][0] ) );
  DFFHQX1 \cost7_reg[3][6]  ( .D(n743), .CK(CLK), .Q(\cost7[3][6] ) );
  DFFHQX1 \cost7_reg[3][5]  ( .D(n744), .CK(CLK), .Q(\cost7[3][5] ) );
  DFFHQX1 \cost7_reg[3][4]  ( .D(n745), .CK(CLK), .Q(\cost7[3][4] ) );
  DFFHQX1 \cost7_reg[3][3]  ( .D(n746), .CK(CLK), .Q(\cost7[3][3] ) );
  DFFHQX1 \cost7_reg[3][2]  ( .D(n747), .CK(CLK), .Q(\cost7[3][2] ) );
  DFFHQX1 \cost7_reg[3][1]  ( .D(n748), .CK(CLK), .Q(\cost7[3][1] ) );
  DFFHQX1 \cost7_reg[3][0]  ( .D(n749), .CK(CLK), .Q(\cost7[3][0] ) );
  DFFHQX1 \cost6_reg[3][6]  ( .D(n799), .CK(CLK), .Q(\cost6[3][6] ) );
  DFFHQX1 \cost6_reg[3][5]  ( .D(n800), .CK(CLK), .Q(\cost6[3][5] ) );
  DFFHQX1 \cost6_reg[3][4]  ( .D(n801), .CK(CLK), .Q(\cost6[3][4] ) );
  DFFHQX1 \cost6_reg[3][3]  ( .D(n802), .CK(CLK), .Q(\cost6[3][3] ) );
  DFFHQX1 \cost6_reg[3][2]  ( .D(n803), .CK(CLK), .Q(\cost6[3][2] ) );
  DFFHQX1 \cost6_reg[3][1]  ( .D(n804), .CK(CLK), .Q(\cost6[3][1] ) );
  DFFHQX1 \cost6_reg[3][0]  ( .D(n805), .CK(CLK), .Q(\cost6[3][0] ) );
  DFFHQX1 \cost5_reg[3][6]  ( .D(n855), .CK(CLK), .Q(\cost5[3][6] ) );
  DFFHQX1 \cost5_reg[3][5]  ( .D(n856), .CK(CLK), .Q(\cost5[3][5] ) );
  DFFHQX1 \cost5_reg[3][4]  ( .D(n857), .CK(CLK), .Q(\cost5[3][4] ) );
  DFFHQX1 \cost5_reg[3][3]  ( .D(n858), .CK(CLK), .Q(\cost5[3][3] ) );
  DFFHQX1 \cost5_reg[3][2]  ( .D(n859), .CK(CLK), .Q(\cost5[3][2] ) );
  DFFHQX1 \cost5_reg[3][1]  ( .D(n860), .CK(CLK), .Q(\cost5[3][1] ) );
  DFFHQX1 \cost5_reg[3][0]  ( .D(n861), .CK(CLK), .Q(\cost5[3][0] ) );
  DFFHQX1 \cost4_reg[3][6]  ( .D(n911), .CK(CLK), .Q(\cost4[3][6] ) );
  DFFHQX1 \cost4_reg[3][5]  ( .D(n912), .CK(CLK), .Q(\cost4[3][5] ) );
  DFFHQX1 \cost4_reg[3][4]  ( .D(n913), .CK(CLK), .Q(\cost4[3][4] ) );
  DFFHQX1 \cost4_reg[3][3]  ( .D(n914), .CK(CLK), .Q(\cost4[3][3] ) );
  DFFHQX1 \cost4_reg[3][2]  ( .D(n915), .CK(CLK), .Q(\cost4[3][2] ) );
  DFFHQX1 \cost4_reg[3][1]  ( .D(n916), .CK(CLK), .Q(\cost4[3][1] ) );
  DFFHQX1 \cost4_reg[3][0]  ( .D(n917), .CK(CLK), .Q(\cost4[3][0] ) );
  DFFHQX1 \cost3_reg[3][6]  ( .D(n967), .CK(CLK), .Q(\cost3[3][6] ) );
  DFFHQX1 \cost3_reg[3][5]  ( .D(n968), .CK(CLK), .Q(\cost3[3][5] ) );
  DFFHQX1 \cost3_reg[3][4]  ( .D(n969), .CK(CLK), .Q(\cost3[3][4] ) );
  DFFHQX1 \cost3_reg[3][3]  ( .D(n970), .CK(CLK), .Q(\cost3[3][3] ) );
  DFFHQX1 \cost3_reg[3][2]  ( .D(n971), .CK(CLK), .Q(\cost3[3][2] ) );
  DFFHQX1 \cost3_reg[3][1]  ( .D(n972), .CK(CLK), .Q(\cost3[3][1] ) );
  DFFHQX1 \cost3_reg[3][0]  ( .D(n973), .CK(CLK), .Q(\cost3[3][0] ) );
  DFFHQX1 \cost2_reg[3][6]  ( .D(n1023), .CK(CLK), .Q(\cost2[3][6] ) );
  DFFHQX1 \cost2_reg[3][5]  ( .D(n1024), .CK(CLK), .Q(\cost2[3][5] ) );
  DFFHQX1 \cost2_reg[3][4]  ( .D(n1025), .CK(CLK), .Q(\cost2[3][4] ) );
  DFFHQX1 \cost2_reg[3][3]  ( .D(n1026), .CK(CLK), .Q(\cost2[3][3] ) );
  DFFHQX1 \cost2_reg[3][2]  ( .D(n1027), .CK(CLK), .Q(\cost2[3][2] ) );
  DFFHQX1 \cost2_reg[3][1]  ( .D(n1028), .CK(CLK), .Q(\cost2[3][1] ) );
  DFFHQX1 \cost2_reg[3][0]  ( .D(n1029), .CK(CLK), .Q(\cost2[3][0] ) );
  DFFHQX1 \cost1_reg[3][6]  ( .D(n1079), .CK(CLK), .Q(\cost1[3][6] ) );
  DFFHQX1 \cost1_reg[3][5]  ( .D(n1080), .CK(CLK), .Q(\cost1[3][5] ) );
  DFFHQX1 \cost1_reg[3][4]  ( .D(n1081), .CK(CLK), .Q(\cost1[3][4] ) );
  DFFHQX1 \cost1_reg[3][3]  ( .D(n1082), .CK(CLK), .Q(\cost1[3][3] ) );
  DFFHQX1 \cost1_reg[3][2]  ( .D(n1083), .CK(CLK), .Q(\cost1[3][2] ) );
  DFFHQX1 \cost1_reg[3][1]  ( .D(n1084), .CK(CLK), .Q(\cost1[3][1] ) );
  DFFHQX1 \cost1_reg[3][0]  ( .D(n1085), .CK(CLK), .Q(\cost1[3][0] ) );
  DFFHQX1 last_reg ( .D(N219), .CK(CLK), .Q(last) );
  DFFHQX1 \cost0_reg[4][5]  ( .D(n696), .CK(CLK), .Q(\cost0[4][5] ) );
  DFFHQX1 \cost0_reg[5][5]  ( .D(n703), .CK(CLK), .Q(\cost0[5][5] ) );
  DFFHQX1 \cost7_reg[4][5]  ( .D(n751), .CK(CLK), .Q(\cost7[4][5] ) );
  DFFHQX1 \cost7_reg[5][5]  ( .D(n758), .CK(CLK), .Q(\cost7[5][5] ) );
  DFFHQX1 \cost6_reg[4][5]  ( .D(n807), .CK(CLK), .Q(\cost6[4][5] ) );
  DFFHQX1 \cost6_reg[5][5]  ( .D(n814), .CK(CLK), .Q(\cost6[5][5] ) );
  DFFHQX1 \cost5_reg[4][5]  ( .D(n863), .CK(CLK), .Q(\cost5[4][5] ) );
  DFFHQX1 \cost5_reg[5][5]  ( .D(n870), .CK(CLK), .Q(\cost5[5][5] ) );
  DFFHQX1 \cost4_reg[4][5]  ( .D(n919), .CK(CLK), .Q(\cost4[4][5] ) );
  DFFHQX1 \cost4_reg[5][5]  ( .D(n926), .CK(CLK), .Q(\cost4[5][5] ) );
  DFFHQX1 \cost3_reg[4][5]  ( .D(n975), .CK(CLK), .Q(\cost3[4][5] ) );
  DFFHQX1 \cost3_reg[5][5]  ( .D(n982), .CK(CLK), .Q(\cost3[5][5] ) );
  DFFHQX1 \cost2_reg[4][5]  ( .D(n1031), .CK(CLK), .Q(\cost2[4][5] ) );
  DFFHQX1 \cost2_reg[5][5]  ( .D(n1038), .CK(CLK), .Q(\cost2[5][5] ) );
  DFFHQX1 \cost1_reg[4][5]  ( .D(n1087), .CK(CLK), .Q(\cost1[4][5] ) );
  DFFHQX1 \cost1_reg[5][5]  ( .D(n1094), .CK(CLK), .Q(\cost1[5][5] ) );
  DFFHQX1 \cost0_reg[4][4]  ( .D(n697), .CK(CLK), .Q(\cost0[4][4] ) );
  DFFHQX1 \cost0_reg[5][4]  ( .D(n704), .CK(CLK), .Q(\cost0[5][4] ) );
  DFFHQX1 \cost7_reg[4][4]  ( .D(n752), .CK(CLK), .Q(\cost7[4][4] ) );
  DFFHQX1 \cost7_reg[5][4]  ( .D(n759), .CK(CLK), .Q(\cost7[5][4] ) );
  DFFHQX1 \cost6_reg[4][4]  ( .D(n808), .CK(CLK), .Q(\cost6[4][4] ) );
  DFFHQX1 \cost6_reg[5][4]  ( .D(n815), .CK(CLK), .Q(\cost6[5][4] ) );
  DFFHQX1 \cost5_reg[4][4]  ( .D(n864), .CK(CLK), .Q(\cost5[4][4] ) );
  DFFHQX1 \cost5_reg[5][4]  ( .D(n871), .CK(CLK), .Q(\cost5[5][4] ) );
  DFFHQX1 \cost4_reg[4][4]  ( .D(n920), .CK(CLK), .Q(\cost4[4][4] ) );
  DFFHQX1 \cost4_reg[5][4]  ( .D(n927), .CK(CLK), .Q(\cost4[5][4] ) );
  DFFHQX1 \cost3_reg[4][4]  ( .D(n976), .CK(CLK), .Q(\cost3[4][4] ) );
  DFFHQX1 \cost3_reg[5][4]  ( .D(n983), .CK(CLK), .Q(\cost3[5][4] ) );
  DFFHQX1 \cost2_reg[4][4]  ( .D(n1032), .CK(CLK), .Q(\cost2[4][4] ) );
  DFFHQX1 \cost2_reg[5][4]  ( .D(n1039), .CK(CLK), .Q(\cost2[5][4] ) );
  DFFHQX1 \cost1_reg[4][4]  ( .D(n1088), .CK(CLK), .Q(\cost1[4][4] ) );
  DFFHQX1 \cost1_reg[5][4]  ( .D(n1095), .CK(CLK), .Q(\cost1[5][4] ) );
  DFFHQX1 \cost0_reg[4][3]  ( .D(n698), .CK(CLK), .Q(\cost0[4][3] ) );
  DFFHQX1 \cost0_reg[5][3]  ( .D(n705), .CK(CLK), .Q(\cost0[5][3] ) );
  DFFHQX1 \cost7_reg[4][3]  ( .D(n753), .CK(CLK), .Q(\cost7[4][3] ) );
  DFFHQX1 \cost7_reg[5][3]  ( .D(n760), .CK(CLK), .Q(\cost7[5][3] ) );
  DFFHQX1 \cost6_reg[4][3]  ( .D(n809), .CK(CLK), .Q(\cost6[4][3] ) );
  DFFHQX1 \cost6_reg[5][3]  ( .D(n816), .CK(CLK), .Q(\cost6[5][3] ) );
  DFFHQX1 \cost5_reg[4][3]  ( .D(n865), .CK(CLK), .Q(\cost5[4][3] ) );
  DFFHQX1 \cost5_reg[5][3]  ( .D(n872), .CK(CLK), .Q(\cost5[5][3] ) );
  DFFHQX1 \cost4_reg[4][3]  ( .D(n921), .CK(CLK), .Q(\cost4[4][3] ) );
  DFFHQX1 \cost4_reg[5][3]  ( .D(n928), .CK(CLK), .Q(\cost4[5][3] ) );
  DFFHQX1 \cost3_reg[4][3]  ( .D(n977), .CK(CLK), .Q(\cost3[4][3] ) );
  DFFHQX1 \cost3_reg[5][3]  ( .D(n984), .CK(CLK), .Q(\cost3[5][3] ) );
  DFFHQX1 \cost2_reg[4][3]  ( .D(n1033), .CK(CLK), .Q(\cost2[4][3] ) );
  DFFHQX1 \cost2_reg[5][3]  ( .D(n1040), .CK(CLK), .Q(\cost2[5][3] ) );
  DFFHQX1 \cost1_reg[4][3]  ( .D(n1089), .CK(CLK), .Q(\cost1[4][3] ) );
  DFFHQX1 \cost1_reg[5][3]  ( .D(n1096), .CK(CLK), .Q(\cost1[5][3] ) );
  DFFHQX1 \cost0_reg[4][2]  ( .D(n699), .CK(CLK), .Q(\cost0[4][2] ) );
  DFFHQX1 \cost0_reg[5][2]  ( .D(n706), .CK(CLK), .Q(\cost0[5][2] ) );
  DFFHQX1 \cost7_reg[4][2]  ( .D(n754), .CK(CLK), .Q(\cost7[4][2] ) );
  DFFHQX1 \cost7_reg[5][2]  ( .D(n761), .CK(CLK), .Q(\cost7[5][2] ) );
  DFFHQX1 \cost6_reg[4][2]  ( .D(n810), .CK(CLK), .Q(\cost6[4][2] ) );
  DFFHQX1 \cost6_reg[5][2]  ( .D(n817), .CK(CLK), .Q(\cost6[5][2] ) );
  DFFHQX1 \cost5_reg[4][2]  ( .D(n866), .CK(CLK), .Q(\cost5[4][2] ) );
  DFFHQX1 \cost5_reg[5][2]  ( .D(n873), .CK(CLK), .Q(\cost5[5][2] ) );
  DFFHQX1 \cost4_reg[4][2]  ( .D(n922), .CK(CLK), .Q(\cost4[4][2] ) );
  DFFHQX1 \cost4_reg[5][2]  ( .D(n929), .CK(CLK), .Q(\cost4[5][2] ) );
  DFFHQX1 \cost3_reg[4][2]  ( .D(n978), .CK(CLK), .Q(\cost3[4][2] ) );
  DFFHQX1 \cost3_reg[5][2]  ( .D(n985), .CK(CLK), .Q(\cost3[5][2] ) );
  DFFHQX1 \cost2_reg[4][2]  ( .D(n1034), .CK(CLK), .Q(\cost2[4][2] ) );
  DFFHQX1 \cost2_reg[5][2]  ( .D(n1041), .CK(CLK), .Q(\cost2[5][2] ) );
  DFFHQX1 \cost1_reg[4][2]  ( .D(n1090), .CK(CLK), .Q(\cost1[4][2] ) );
  DFFHQX1 \cost1_reg[5][2]  ( .D(n1097), .CK(CLK), .Q(\cost1[5][2] ) );
  DFFHQX1 \cost0_reg[4][1]  ( .D(n700), .CK(CLK), .Q(\cost0[4][1] ) );
  DFFHQX1 \cost0_reg[5][1]  ( .D(n707), .CK(CLK), .Q(\cost0[5][1] ) );
  DFFHQX1 \cost7_reg[4][1]  ( .D(n755), .CK(CLK), .Q(\cost7[4][1] ) );
  DFFHQX1 \cost7_reg[5][1]  ( .D(n762), .CK(CLK), .Q(\cost7[5][1] ) );
  DFFHQX1 \cost6_reg[4][1]  ( .D(n811), .CK(CLK), .Q(\cost6[4][1] ) );
  DFFHQX1 \cost6_reg[5][1]  ( .D(n818), .CK(CLK), .Q(\cost6[5][1] ) );
  DFFHQX1 \cost5_reg[4][1]  ( .D(n867), .CK(CLK), .Q(\cost5[4][1] ) );
  DFFHQX1 \cost5_reg[5][1]  ( .D(n874), .CK(CLK), .Q(\cost5[5][1] ) );
  DFFHQX1 \cost4_reg[4][1]  ( .D(n923), .CK(CLK), .Q(\cost4[4][1] ) );
  DFFHQX1 \cost4_reg[5][1]  ( .D(n930), .CK(CLK), .Q(\cost4[5][1] ) );
  DFFHQX1 \cost3_reg[4][1]  ( .D(n979), .CK(CLK), .Q(\cost3[4][1] ) );
  DFFHQX1 \cost3_reg[5][1]  ( .D(n986), .CK(CLK), .Q(\cost3[5][1] ) );
  DFFHQX1 \cost2_reg[4][1]  ( .D(n1035), .CK(CLK), .Q(\cost2[4][1] ) );
  DFFHQX1 \cost2_reg[5][1]  ( .D(n1042), .CK(CLK), .Q(\cost2[5][1] ) );
  DFFHQX1 \cost1_reg[4][1]  ( .D(n1091), .CK(CLK), .Q(\cost1[4][1] ) );
  DFFHQX1 \cost1_reg[5][1]  ( .D(n1098), .CK(CLK), .Q(\cost1[5][1] ) );
  DFFHQX1 \cost0_reg[4][0]  ( .D(n701), .CK(CLK), .Q(\cost0[4][0] ) );
  DFFHQX1 \cost0_reg[5][0]  ( .D(n708), .CK(CLK), .Q(\cost0[5][0] ) );
  DFFHQX1 \cost7_reg[4][0]  ( .D(n756), .CK(CLK), .Q(\cost7[4][0] ) );
  DFFHQX1 \cost7_reg[5][0]  ( .D(n763), .CK(CLK), .Q(\cost7[5][0] ) );
  DFFHQX1 \cost6_reg[4][0]  ( .D(n812), .CK(CLK), .Q(\cost6[4][0] ) );
  DFFHQX1 \cost6_reg[5][0]  ( .D(n819), .CK(CLK), .Q(\cost6[5][0] ) );
  DFFHQX1 \cost5_reg[4][0]  ( .D(n868), .CK(CLK), .Q(\cost5[4][0] ) );
  DFFHQX1 \cost5_reg[5][0]  ( .D(n875), .CK(CLK), .Q(\cost5[5][0] ) );
  DFFHQX1 \cost4_reg[4][0]  ( .D(n924), .CK(CLK), .Q(\cost4[4][0] ) );
  DFFHQX1 \cost4_reg[5][0]  ( .D(n931), .CK(CLK), .Q(\cost4[5][0] ) );
  DFFHQX1 \cost3_reg[4][0]  ( .D(n980), .CK(CLK), .Q(\cost3[4][0] ) );
  DFFHQX1 \cost3_reg[5][0]  ( .D(n987), .CK(CLK), .Q(\cost3[5][0] ) );
  DFFHQX1 \cost2_reg[4][0]  ( .D(n1036), .CK(CLK), .Q(\cost2[4][0] ) );
  DFFHQX1 \cost2_reg[5][0]  ( .D(n1043), .CK(CLK), .Q(\cost2[5][0] ) );
  DFFHQX1 \cost1_reg[4][0]  ( .D(n1092), .CK(CLK), .Q(\cost1[4][0] ) );
  DFFHQX1 \cost1_reg[5][0]  ( .D(n1099), .CK(CLK), .Q(\cost1[5][0] ) );
  DFFHQX1 \cost0_reg[4][6]  ( .D(n695), .CK(CLK), .Q(\cost0[4][6] ) );
  DFFHQX1 \cost0_reg[5][6]  ( .D(n702), .CK(CLK), .Q(\cost0[5][6] ) );
  DFFHQX1 \cost7_reg[4][6]  ( .D(n750), .CK(CLK), .Q(\cost7[4][6] ) );
  DFFHQX1 \cost7_reg[5][6]  ( .D(n757), .CK(CLK), .Q(\cost7[5][6] ) );
  DFFHQX1 \cost6_reg[4][6]  ( .D(n806), .CK(CLK), .Q(\cost6[4][6] ) );
  DFFHQX1 \cost6_reg[5][6]  ( .D(n813), .CK(CLK), .Q(\cost6[5][6] ) );
  DFFHQX1 \cost5_reg[4][6]  ( .D(n862), .CK(CLK), .Q(\cost5[4][6] ) );
  DFFHQX1 \cost5_reg[5][6]  ( .D(n869), .CK(CLK), .Q(\cost5[5][6] ) );
  DFFHQX1 \cost4_reg[4][6]  ( .D(n918), .CK(CLK), .Q(\cost4[4][6] ) );
  DFFHQX1 \cost4_reg[5][6]  ( .D(n925), .CK(CLK), .Q(\cost4[5][6] ) );
  DFFHQX1 \cost3_reg[4][6]  ( .D(n974), .CK(CLK), .Q(\cost3[4][6] ) );
  DFFHQX1 \cost3_reg[5][6]  ( .D(n981), .CK(CLK), .Q(\cost3[5][6] ) );
  DFFHQX1 \cost2_reg[4][6]  ( .D(n1030), .CK(CLK), .Q(\cost2[4][6] ) );
  DFFHQX1 \cost2_reg[5][6]  ( .D(n1037), .CK(CLK), .Q(\cost2[5][6] ) );
  DFFHQX1 \cost1_reg[4][6]  ( .D(n1086), .CK(CLK), .Q(\cost1[4][6] ) );
  DFFHQX1 \cost1_reg[5][6]  ( .D(n1093), .CK(CLK), .Q(\cost1[5][6] ) );
  DFFHQX1 \cost0_reg[7][5]  ( .D(n717), .CK(CLK), .Q(\cost0[7][5] ) );
  DFFHQX1 \cost7_reg[7][5]  ( .D(n772), .CK(CLK), .Q(\cost7[7][5] ) );
  DFFHQX1 \cost6_reg[7][5]  ( .D(n828), .CK(CLK), .Q(\cost6[7][5] ) );
  DFFHQX1 \cost5_reg[7][5]  ( .D(n884), .CK(CLK), .Q(\cost5[7][5] ) );
  DFFHQX1 \cost4_reg[7][5]  ( .D(n940), .CK(CLK), .Q(\cost4[7][5] ) );
  DFFHQX1 \cost3_reg[7][5]  ( .D(n996), .CK(CLK), .Q(\cost3[7][5] ) );
  DFFHQX1 \cost2_reg[7][5]  ( .D(n1052), .CK(CLK), .Q(\cost2[7][5] ) );
  DFFHQX1 \cost1_reg[7][5]  ( .D(n1108), .CK(CLK), .Q(\cost1[7][5] ) );
  DFFHQX1 \cost0_reg[7][4]  ( .D(n718), .CK(CLK), .Q(\cost0[7][4] ) );
  DFFHQX1 \cost7_reg[7][4]  ( .D(n773), .CK(CLK), .Q(\cost7[7][4] ) );
  DFFHQX1 \cost6_reg[7][4]  ( .D(n829), .CK(CLK), .Q(\cost6[7][4] ) );
  DFFHQX1 \cost5_reg[7][4]  ( .D(n885), .CK(CLK), .Q(\cost5[7][4] ) );
  DFFHQX1 \cost4_reg[7][4]  ( .D(n941), .CK(CLK), .Q(\cost4[7][4] ) );
  DFFHQX1 \cost3_reg[7][4]  ( .D(n997), .CK(CLK), .Q(\cost3[7][4] ) );
  DFFHQX1 \cost2_reg[7][4]  ( .D(n1053), .CK(CLK), .Q(\cost2[7][4] ) );
  DFFHQX1 \cost1_reg[7][4]  ( .D(n1109), .CK(CLK), .Q(\cost1[7][4] ) );
  DFFHQX1 \cost0_reg[7][3]  ( .D(n719), .CK(CLK), .Q(\cost0[7][3] ) );
  DFFHQX1 \cost7_reg[7][3]  ( .D(n774), .CK(CLK), .Q(\cost7[7][3] ) );
  DFFHQX1 \cost6_reg[7][3]  ( .D(n830), .CK(CLK), .Q(\cost6[7][3] ) );
  DFFHQX1 \cost5_reg[7][3]  ( .D(n886), .CK(CLK), .Q(\cost5[7][3] ) );
  DFFHQX1 \cost4_reg[7][3]  ( .D(n942), .CK(CLK), .Q(\cost4[7][3] ) );
  DFFHQX1 \cost3_reg[7][3]  ( .D(n998), .CK(CLK), .Q(\cost3[7][3] ) );
  DFFHQX1 \cost2_reg[7][3]  ( .D(n1054), .CK(CLK), .Q(\cost2[7][3] ) );
  DFFHQX1 \cost1_reg[7][3]  ( .D(n1110), .CK(CLK), .Q(\cost1[7][3] ) );
  DFFHQX1 \cost0_reg[7][2]  ( .D(n720), .CK(CLK), .Q(\cost0[7][2] ) );
  DFFHQX1 \cost7_reg[7][2]  ( .D(n775), .CK(CLK), .Q(\cost7[7][2] ) );
  DFFHQX1 \cost6_reg[7][2]  ( .D(n831), .CK(CLK), .Q(\cost6[7][2] ) );
  DFFHQX1 \cost5_reg[7][2]  ( .D(n887), .CK(CLK), .Q(\cost5[7][2] ) );
  DFFHQX1 \cost4_reg[7][2]  ( .D(n943), .CK(CLK), .Q(\cost4[7][2] ) );
  DFFHQX1 \cost3_reg[7][2]  ( .D(n999), .CK(CLK), .Q(\cost3[7][2] ) );
  DFFHQX1 \cost2_reg[7][2]  ( .D(n1055), .CK(CLK), .Q(\cost2[7][2] ) );
  DFFHQX1 \cost1_reg[7][2]  ( .D(n1111), .CK(CLK), .Q(\cost1[7][2] ) );
  DFFHQX1 \cost0_reg[7][1]  ( .D(n721), .CK(CLK), .Q(\cost0[7][1] ) );
  DFFHQX1 \cost7_reg[7][1]  ( .D(n776), .CK(CLK), .Q(\cost7[7][1] ) );
  DFFHQX1 \cost6_reg[7][1]  ( .D(n832), .CK(CLK), .Q(\cost6[7][1] ) );
  DFFHQX1 \cost5_reg[7][1]  ( .D(n888), .CK(CLK), .Q(\cost5[7][1] ) );
  DFFHQX1 \cost4_reg[7][1]  ( .D(n944), .CK(CLK), .Q(\cost4[7][1] ) );
  DFFHQX1 \cost3_reg[7][1]  ( .D(n1000), .CK(CLK), .Q(\cost3[7][1] ) );
  DFFHQX1 \cost2_reg[7][1]  ( .D(n1056), .CK(CLK), .Q(\cost2[7][1] ) );
  DFFHQX1 \cost1_reg[7][1]  ( .D(n1112), .CK(CLK), .Q(\cost1[7][1] ) );
  DFFHQX1 \cost0_reg[7][0]  ( .D(n722), .CK(CLK), .Q(\cost0[7][0] ) );
  DFFHQX1 \cost7_reg[7][0]  ( .D(n777), .CK(CLK), .Q(\cost7[7][0] ) );
  DFFHQX1 \cost6_reg[7][0]  ( .D(n833), .CK(CLK), .Q(\cost6[7][0] ) );
  DFFHQX1 \cost5_reg[7][0]  ( .D(n889), .CK(CLK), .Q(\cost5[7][0] ) );
  DFFHQX1 \cost4_reg[7][0]  ( .D(n945), .CK(CLK), .Q(\cost4[7][0] ) );
  DFFHQX1 \cost3_reg[7][0]  ( .D(n1001), .CK(CLK), .Q(\cost3[7][0] ) );
  DFFHQX1 \cost2_reg[7][0]  ( .D(n1057), .CK(CLK), .Q(\cost2[7][0] ) );
  DFFHQX1 \cost1_reg[7][0]  ( .D(n1113), .CK(CLK), .Q(\cost1[7][0] ) );
  DFFHQX1 \cost0_reg[7][6]  ( .D(n716), .CK(CLK), .Q(\cost0[7][6] ) );
  DFFHQX1 \cost7_reg[7][6]  ( .D(n771), .CK(CLK), .Q(\cost7[7][6] ) );
  DFFHQX1 \cost6_reg[7][6]  ( .D(n827), .CK(CLK), .Q(\cost6[7][6] ) );
  DFFHQX1 \cost5_reg[7][6]  ( .D(n883), .CK(CLK), .Q(\cost5[7][6] ) );
  DFFHQX1 \cost4_reg[7][6]  ( .D(n939), .CK(CLK), .Q(\cost4[7][6] ) );
  DFFHQX1 \cost3_reg[7][6]  ( .D(n995), .CK(CLK), .Q(\cost3[7][6] ) );
  DFFHQX1 \cost2_reg[7][6]  ( .D(n1051), .CK(CLK), .Q(\cost2[7][6] ) );
  DFFHQX1 \cost1_reg[7][6]  ( .D(n1107), .CK(CLK), .Q(\cost1[7][6] ) );
  DFFHQX1 \cost0_reg[6][6]  ( .D(n709), .CK(CLK), .Q(\cost0[6][6] ) );
  DFFHQX1 \cost0_reg[6][5]  ( .D(n710), .CK(CLK), .Q(\cost0[6][5] ) );
  DFFHQX1 \cost0_reg[6][4]  ( .D(n711), .CK(CLK), .Q(\cost0[6][4] ) );
  DFFHQX1 \cost0_reg[6][3]  ( .D(n712), .CK(CLK), .Q(\cost0[6][3] ) );
  DFFHQX1 \cost0_reg[6][2]  ( .D(n713), .CK(CLK), .Q(\cost0[6][2] ) );
  DFFHQX1 \cost0_reg[6][1]  ( .D(n714), .CK(CLK), .Q(\cost0[6][1] ) );
  DFFHQX1 \cost0_reg[6][0]  ( .D(n715), .CK(CLK), .Q(\cost0[6][0] ) );
  DFFHQX1 \cost7_reg[6][6]  ( .D(n764), .CK(CLK), .Q(\cost7[6][6] ) );
  DFFHQX1 \cost7_reg[6][5]  ( .D(n765), .CK(CLK), .Q(\cost7[6][5] ) );
  DFFHQX1 \cost7_reg[6][4]  ( .D(n766), .CK(CLK), .Q(\cost7[6][4] ) );
  DFFHQX1 \cost7_reg[6][3]  ( .D(n767), .CK(CLK), .Q(\cost7[6][3] ) );
  DFFHQX1 \cost7_reg[6][2]  ( .D(n768), .CK(CLK), .Q(\cost7[6][2] ) );
  DFFHQX1 \cost7_reg[6][1]  ( .D(n769), .CK(CLK), .Q(\cost7[6][1] ) );
  DFFHQX1 \cost7_reg[6][0]  ( .D(n770), .CK(CLK), .Q(\cost7[6][0] ) );
  DFFHQX1 \cost6_reg[6][6]  ( .D(n820), .CK(CLK), .Q(\cost6[6][6] ) );
  DFFHQX1 \cost6_reg[6][5]  ( .D(n821), .CK(CLK), .Q(\cost6[6][5] ) );
  DFFHQX1 \cost6_reg[6][4]  ( .D(n822), .CK(CLK), .Q(\cost6[6][4] ) );
  DFFHQX1 \cost6_reg[6][3]  ( .D(n823), .CK(CLK), .Q(\cost6[6][3] ) );
  DFFHQX1 \cost6_reg[6][2]  ( .D(n824), .CK(CLK), .Q(\cost6[6][2] ) );
  DFFHQX1 \cost6_reg[6][1]  ( .D(n825), .CK(CLK), .Q(\cost6[6][1] ) );
  DFFHQX1 \cost6_reg[6][0]  ( .D(n826), .CK(CLK), .Q(\cost6[6][0] ) );
  DFFHQX1 \cost5_reg[6][6]  ( .D(n876), .CK(CLK), .Q(\cost5[6][6] ) );
  DFFHQX1 \cost5_reg[6][5]  ( .D(n877), .CK(CLK), .Q(\cost5[6][5] ) );
  DFFHQX1 \cost5_reg[6][4]  ( .D(n878), .CK(CLK), .Q(\cost5[6][4] ) );
  DFFHQX1 \cost5_reg[6][3]  ( .D(n879), .CK(CLK), .Q(\cost5[6][3] ) );
  DFFHQX1 \cost5_reg[6][2]  ( .D(n880), .CK(CLK), .Q(\cost5[6][2] ) );
  DFFHQX1 \cost5_reg[6][1]  ( .D(n881), .CK(CLK), .Q(\cost5[6][1] ) );
  DFFHQX1 \cost5_reg[6][0]  ( .D(n882), .CK(CLK), .Q(\cost5[6][0] ) );
  DFFHQX1 \cost4_reg[6][6]  ( .D(n932), .CK(CLK), .Q(\cost4[6][6] ) );
  DFFHQX1 \cost4_reg[6][5]  ( .D(n933), .CK(CLK), .Q(\cost4[6][5] ) );
  DFFHQX1 \cost4_reg[6][4]  ( .D(n934), .CK(CLK), .Q(\cost4[6][4] ) );
  DFFHQX1 \cost4_reg[6][3]  ( .D(n935), .CK(CLK), .Q(\cost4[6][3] ) );
  DFFHQX1 \cost4_reg[6][2]  ( .D(n936), .CK(CLK), .Q(\cost4[6][2] ) );
  DFFHQX1 \cost4_reg[6][1]  ( .D(n937), .CK(CLK), .Q(\cost4[6][1] ) );
  DFFHQX1 \cost4_reg[6][0]  ( .D(n938), .CK(CLK), .Q(\cost4[6][0] ) );
  DFFHQX1 \cost3_reg[6][6]  ( .D(n988), .CK(CLK), .Q(\cost3[6][6] ) );
  DFFHQX1 \cost3_reg[6][5]  ( .D(n989), .CK(CLK), .Q(\cost3[6][5] ) );
  DFFHQX1 \cost3_reg[6][4]  ( .D(n990), .CK(CLK), .Q(\cost3[6][4] ) );
  DFFHQX1 \cost3_reg[6][3]  ( .D(n991), .CK(CLK), .Q(\cost3[6][3] ) );
  DFFHQX1 \cost3_reg[6][2]  ( .D(n992), .CK(CLK), .Q(\cost3[6][2] ) );
  DFFHQX1 \cost3_reg[6][1]  ( .D(n993), .CK(CLK), .Q(\cost3[6][1] ) );
  DFFHQX1 \cost3_reg[6][0]  ( .D(n994), .CK(CLK), .Q(\cost3[6][0] ) );
  DFFHQX1 \cost2_reg[6][6]  ( .D(n1044), .CK(CLK), .Q(\cost2[6][6] ) );
  DFFHQX1 \cost2_reg[6][5]  ( .D(n1045), .CK(CLK), .Q(\cost2[6][5] ) );
  DFFHQX1 \cost2_reg[6][4]  ( .D(n1046), .CK(CLK), .Q(\cost2[6][4] ) );
  DFFHQX1 \cost2_reg[6][3]  ( .D(n1047), .CK(CLK), .Q(\cost2[6][3] ) );
  DFFHQX1 \cost2_reg[6][2]  ( .D(n1048), .CK(CLK), .Q(\cost2[6][2] ) );
  DFFHQX1 \cost2_reg[6][1]  ( .D(n1049), .CK(CLK), .Q(\cost2[6][1] ) );
  DFFHQX1 \cost2_reg[6][0]  ( .D(n1050), .CK(CLK), .Q(\cost2[6][0] ) );
  DFFHQX1 \cost1_reg[6][6]  ( .D(n1100), .CK(CLK), .Q(\cost1[6][6] ) );
  DFFHQX1 \cost1_reg[6][5]  ( .D(n1101), .CK(CLK), .Q(\cost1[6][5] ) );
  DFFHQX1 \cost1_reg[6][4]  ( .D(n1102), .CK(CLK), .Q(\cost1[6][4] ) );
  DFFHQX1 \cost1_reg[6][3]  ( .D(n1103), .CK(CLK), .Q(\cost1[6][3] ) );
  DFFHQX1 \cost1_reg[6][2]  ( .D(n1104), .CK(CLK), .Q(\cost1[6][2] ) );
  DFFHQX1 \cost1_reg[6][1]  ( .D(n1105), .CK(CLK), .Q(\cost1[6][1] ) );
  DFFHQX1 \cost1_reg[6][0]  ( .D(n1106), .CK(CLK), .Q(\cost1[6][0] ) );
  DFFHQX1 \cost0_reg[1][6]  ( .D(n674), .CK(CLK), .Q(\cost0[1][6] ) );
  DFFHQX1 \cost0_reg[1][5]  ( .D(n675), .CK(CLK), .Q(\cost0[1][5] ) );
  DFFHQX1 \cost0_reg[1][4]  ( .D(n676), .CK(CLK), .Q(\cost0[1][4] ) );
  DFFHQX1 \cost0_reg[1][3]  ( .D(n677), .CK(CLK), .Q(\cost0[1][3] ) );
  DFFHQX1 \cost0_reg[1][2]  ( .D(n678), .CK(CLK), .Q(\cost0[1][2] ) );
  DFFHQX1 \cost0_reg[1][1]  ( .D(n679), .CK(CLK), .Q(\cost0[1][1] ) );
  DFFHQX1 \cost0_reg[1][0]  ( .D(n680), .CK(CLK), .Q(\cost0[1][0] ) );
  DFFHQX1 \cost7_reg[1][6]  ( .D(n729), .CK(CLK), .Q(\cost7[1][6] ) );
  DFFHQX1 \cost7_reg[1][5]  ( .D(n730), .CK(CLK), .Q(\cost7[1][5] ) );
  DFFHQX1 \cost7_reg[1][4]  ( .D(n731), .CK(CLK), .Q(\cost7[1][4] ) );
  DFFHQX1 \cost7_reg[1][3]  ( .D(n732), .CK(CLK), .Q(\cost7[1][3] ) );
  DFFHQX1 \cost7_reg[1][2]  ( .D(n733), .CK(CLK), .Q(\cost7[1][2] ) );
  DFFHQX1 \cost7_reg[1][1]  ( .D(n734), .CK(CLK), .Q(\cost7[1][1] ) );
  DFFHQX1 \cost7_reg[1][0]  ( .D(n735), .CK(CLK), .Q(\cost7[1][0] ) );
  DFFHQX1 \cost6_reg[1][6]  ( .D(n785), .CK(CLK), .Q(\cost6[1][6] ) );
  DFFHQX1 \cost6_reg[1][5]  ( .D(n786), .CK(CLK), .Q(\cost6[1][5] ) );
  DFFHQX1 \cost6_reg[1][4]  ( .D(n787), .CK(CLK), .Q(\cost6[1][4] ) );
  DFFHQX1 \cost6_reg[1][3]  ( .D(n788), .CK(CLK), .Q(\cost6[1][3] ) );
  DFFHQX1 \cost6_reg[1][2]  ( .D(n789), .CK(CLK), .Q(\cost6[1][2] ) );
  DFFHQX1 \cost6_reg[1][1]  ( .D(n790), .CK(CLK), .Q(\cost6[1][1] ) );
  DFFHQX1 \cost6_reg[1][0]  ( .D(n791), .CK(CLK), .Q(\cost6[1][0] ) );
  DFFHQX1 \cost5_reg[1][6]  ( .D(n841), .CK(CLK), .Q(\cost5[1][6] ) );
  DFFHQX1 \cost5_reg[1][5]  ( .D(n842), .CK(CLK), .Q(\cost5[1][5] ) );
  DFFHQX1 \cost5_reg[1][4]  ( .D(n843), .CK(CLK), .Q(\cost5[1][4] ) );
  DFFHQX1 \cost5_reg[1][3]  ( .D(n844), .CK(CLK), .Q(\cost5[1][3] ) );
  DFFHQX1 \cost5_reg[1][2]  ( .D(n845), .CK(CLK), .Q(\cost5[1][2] ) );
  DFFHQX1 \cost5_reg[1][1]  ( .D(n846), .CK(CLK), .Q(\cost5[1][1] ) );
  DFFHQX1 \cost5_reg[1][0]  ( .D(n847), .CK(CLK), .Q(\cost5[1][0] ) );
  DFFHQX1 \cost4_reg[1][6]  ( .D(n897), .CK(CLK), .Q(\cost4[1][6] ) );
  DFFHQX1 \cost4_reg[1][5]  ( .D(n898), .CK(CLK), .Q(\cost4[1][5] ) );
  DFFHQX1 \cost4_reg[1][4]  ( .D(n899), .CK(CLK), .Q(\cost4[1][4] ) );
  DFFHQX1 \cost4_reg[1][3]  ( .D(n900), .CK(CLK), .Q(\cost4[1][3] ) );
  DFFHQX1 \cost4_reg[1][2]  ( .D(n901), .CK(CLK), .Q(\cost4[1][2] ) );
  DFFHQX1 \cost4_reg[1][1]  ( .D(n902), .CK(CLK), .Q(\cost4[1][1] ) );
  DFFHQX1 \cost4_reg[1][0]  ( .D(n903), .CK(CLK), .Q(\cost4[1][0] ) );
  DFFHQX1 \cost3_reg[1][6]  ( .D(n953), .CK(CLK), .Q(\cost3[1][6] ) );
  DFFHQX1 \cost3_reg[1][5]  ( .D(n954), .CK(CLK), .Q(\cost3[1][5] ) );
  DFFHQX1 \cost3_reg[1][4]  ( .D(n955), .CK(CLK), .Q(\cost3[1][4] ) );
  DFFHQX1 \cost3_reg[1][3]  ( .D(n956), .CK(CLK), .Q(\cost3[1][3] ) );
  DFFHQX1 \cost3_reg[1][2]  ( .D(n957), .CK(CLK), .Q(\cost3[1][2] ) );
  DFFHQX1 \cost3_reg[1][1]  ( .D(n958), .CK(CLK), .Q(\cost3[1][1] ) );
  DFFHQX1 \cost3_reg[1][0]  ( .D(n959), .CK(CLK), .Q(\cost3[1][0] ) );
  DFFHQX1 \cost2_reg[1][6]  ( .D(n1009), .CK(CLK), .Q(\cost2[1][6] ) );
  DFFHQX1 \cost2_reg[1][5]  ( .D(n1010), .CK(CLK), .Q(\cost2[1][5] ) );
  DFFHQX1 \cost2_reg[1][4]  ( .D(n1011), .CK(CLK), .Q(\cost2[1][4] ) );
  DFFHQX1 \cost2_reg[1][3]  ( .D(n1012), .CK(CLK), .Q(\cost2[1][3] ) );
  DFFHQX1 \cost2_reg[1][2]  ( .D(n1013), .CK(CLK), .Q(\cost2[1][2] ) );
  DFFHQX1 \cost2_reg[1][1]  ( .D(n1014), .CK(CLK), .Q(\cost2[1][1] ) );
  DFFHQX1 \cost2_reg[1][0]  ( .D(n1015), .CK(CLK), .Q(\cost2[1][0] ) );
  DFFHQX1 \cost1_reg[1][6]  ( .D(n1065), .CK(CLK), .Q(\cost1[1][6] ) );
  DFFHQX1 \cost1_reg[1][5]  ( .D(n1066), .CK(CLK), .Q(\cost1[1][5] ) );
  DFFHQX1 \cost1_reg[1][4]  ( .D(n1067), .CK(CLK), .Q(\cost1[1][4] ) );
  DFFHQX1 \cost1_reg[1][3]  ( .D(n1068), .CK(CLK), .Q(\cost1[1][3] ) );
  DFFHQX1 \cost1_reg[1][2]  ( .D(n1069), .CK(CLK), .Q(\cost1[1][2] ) );
  DFFHQX1 \cost1_reg[1][1]  ( .D(n1070), .CK(CLK), .Q(\cost1[1][1] ) );
  DFFHQX1 \cost1_reg[1][0]  ( .D(n1071), .CK(CLK), .Q(\cost1[1][0] ) );
  DFFHQX1 \cost0_reg[0][6]  ( .D(n667), .CK(CLK), .Q(\cost0[0][6] ) );
  DFFHQX1 \cost0_reg[0][5]  ( .D(n668), .CK(CLK), .Q(\cost0[0][5] ) );
  DFFHQX1 \cost0_reg[0][4]  ( .D(n669), .CK(CLK), .Q(\cost0[0][4] ) );
  DFFHQX1 \cost0_reg[0][3]  ( .D(n670), .CK(CLK), .Q(\cost0[0][3] ) );
  DFFHQX1 \cost0_reg[0][2]  ( .D(n671), .CK(CLK), .Q(\cost0[0][2] ) );
  DFFHQX1 \cost0_reg[0][1]  ( .D(n672), .CK(CLK), .Q(\cost0[0][1] ) );
  DFFHQX1 \cost0_reg[0][0]  ( .D(n673), .CK(CLK), .Q(\cost0[0][0] ) );
  DFFHQX1 \cost7_reg[0][5]  ( .D(n723), .CK(CLK), .Q(\cost7[0][5] ) );
  DFFHQX1 \cost7_reg[0][4]  ( .D(n724), .CK(CLK), .Q(\cost7[0][4] ) );
  DFFHQX1 \cost7_reg[0][3]  ( .D(n725), .CK(CLK), .Q(\cost7[0][3] ) );
  DFFHQX1 \cost7_reg[0][2]  ( .D(n726), .CK(CLK), .Q(\cost7[0][2] ) );
  DFFHQX1 \cost7_reg[0][1]  ( .D(n727), .CK(CLK), .Q(\cost7[0][1] ) );
  DFFHQX1 \cost7_reg[0][0]  ( .D(n728), .CK(CLK), .Q(\cost7[0][0] ) );
  DFFHQX1 \cost7_reg[0][6]  ( .D(n778), .CK(CLK), .Q(\cost7[0][6] ) );
  DFFHQX1 \cost6_reg[0][5]  ( .D(n779), .CK(CLK), .Q(\cost6[0][5] ) );
  DFFHQX1 \cost6_reg[0][4]  ( .D(n780), .CK(CLK), .Q(\cost6[0][4] ) );
  DFFHQX1 \cost6_reg[0][3]  ( .D(n781), .CK(CLK), .Q(\cost6[0][3] ) );
  DFFHQX1 \cost6_reg[0][2]  ( .D(n782), .CK(CLK), .Q(\cost6[0][2] ) );
  DFFHQX1 \cost6_reg[0][1]  ( .D(n783), .CK(CLK), .Q(\cost6[0][1] ) );
  DFFHQX1 \cost6_reg[0][0]  ( .D(n784), .CK(CLK), .Q(\cost6[0][0] ) );
  DFFHQX1 \cost6_reg[0][6]  ( .D(n834), .CK(CLK), .Q(\cost6[0][6] ) );
  DFFHQX1 \cost5_reg[0][5]  ( .D(n835), .CK(CLK), .Q(\cost5[0][5] ) );
  DFFHQX1 \cost5_reg[0][4]  ( .D(n836), .CK(CLK), .Q(\cost5[0][4] ) );
  DFFHQX1 \cost5_reg[0][3]  ( .D(n837), .CK(CLK), .Q(\cost5[0][3] ) );
  DFFHQX1 \cost5_reg[0][2]  ( .D(n838), .CK(CLK), .Q(\cost5[0][2] ) );
  DFFHQX1 \cost5_reg[0][1]  ( .D(n839), .CK(CLK), .Q(\cost5[0][1] ) );
  DFFHQX1 \cost5_reg[0][0]  ( .D(n840), .CK(CLK), .Q(\cost5[0][0] ) );
  DFFHQX1 \cost5_reg[0][6]  ( .D(n890), .CK(CLK), .Q(\cost5[0][6] ) );
  DFFHQX1 \cost4_reg[0][5]  ( .D(n891), .CK(CLK), .Q(\cost4[0][5] ) );
  DFFHQX1 \cost4_reg[0][4]  ( .D(n892), .CK(CLK), .Q(\cost4[0][4] ) );
  DFFHQX1 \cost4_reg[0][3]  ( .D(n893), .CK(CLK), .Q(\cost4[0][3] ) );
  DFFHQX1 \cost4_reg[0][2]  ( .D(n894), .CK(CLK), .Q(\cost4[0][2] ) );
  DFFHQX1 \cost4_reg[0][1]  ( .D(n895), .CK(CLK), .Q(\cost4[0][1] ) );
  DFFHQX1 \cost4_reg[0][0]  ( .D(n896), .CK(CLK), .Q(\cost4[0][0] ) );
  DFFHQX1 \cost4_reg[0][6]  ( .D(n946), .CK(CLK), .Q(\cost4[0][6] ) );
  DFFHQX1 \cost3_reg[0][5]  ( .D(n947), .CK(CLK), .Q(\cost3[0][5] ) );
  DFFHQX1 \cost3_reg[0][4]  ( .D(n948), .CK(CLK), .Q(\cost3[0][4] ) );
  DFFHQX1 \cost3_reg[0][3]  ( .D(n949), .CK(CLK), .Q(\cost3[0][3] ) );
  DFFHQX1 \cost3_reg[0][2]  ( .D(n950), .CK(CLK), .Q(\cost3[0][2] ) );
  DFFHQX1 \cost3_reg[0][1]  ( .D(n951), .CK(CLK), .Q(\cost3[0][1] ) );
  DFFHQX1 \cost3_reg[0][0]  ( .D(n952), .CK(CLK), .Q(\cost3[0][0] ) );
  DFFHQX1 \cost3_reg[0][6]  ( .D(n1002), .CK(CLK), .Q(\cost3[0][6] ) );
  DFFHQX1 \cost2_reg[0][5]  ( .D(n1003), .CK(CLK), .Q(\cost2[0][5] ) );
  DFFHQX1 \cost2_reg[0][4]  ( .D(n1004), .CK(CLK), .Q(\cost2[0][4] ) );
  DFFHQX1 \cost2_reg[0][3]  ( .D(n1005), .CK(CLK), .Q(\cost2[0][3] ) );
  DFFHQX1 \cost2_reg[0][2]  ( .D(n1006), .CK(CLK), .Q(\cost2[0][2] ) );
  DFFHQX1 \cost2_reg[0][1]  ( .D(n1007), .CK(CLK), .Q(\cost2[0][1] ) );
  DFFHQX1 \cost2_reg[0][0]  ( .D(n1008), .CK(CLK), .Q(\cost2[0][0] ) );
  DFFHQX1 \cost2_reg[0][6]  ( .D(n1058), .CK(CLK), .Q(\cost2[0][6] ) );
  DFFHQX1 \cost1_reg[0][5]  ( .D(n1059), .CK(CLK), .Q(\cost1[0][5] ) );
  DFFHQX1 \cost1_reg[0][4]  ( .D(n1060), .CK(CLK), .Q(\cost1[0][4] ) );
  DFFHQX1 \cost1_reg[0][3]  ( .D(n1061), .CK(CLK), .Q(\cost1[0][3] ) );
  DFFHQX1 \cost1_reg[0][2]  ( .D(n1062), .CK(CLK), .Q(\cost1[0][2] ) );
  DFFHQX1 \cost1_reg[0][1]  ( .D(n1063), .CK(CLK), .Q(\cost1[0][1] ) );
  DFFHQX1 \cost1_reg[0][0]  ( .D(n1064), .CK(CLK), .Q(\cost1[0][0] ) );
  DFFHQX1 \cost1_reg[0][6]  ( .D(n1114), .CK(CLK), .Q(\cost1[0][6] ) );
  DFFHQX1 \match_count_reg[0]  ( .D(n656), .CK(CLK), .Q(match_count[0]) );
  DFFHQX1 \sort_reg[1][3]  ( .D(n1140), .CK(CLK), .Q(\sort[1][3] ) );
  DFFHQX1 \match_count_reg[2]  ( .D(n2273), .CK(CLK), .Q(match_count[2]) );
  DFFHQX1 \J_reg[1]  ( .D(n1118), .CK(CLK), .Q(J[1]) );
  DFFHQX1 \W_reg[1]  ( .D(n1117), .CK(CLK), .Q(W[1]) );
  DFFHQX1 \J_reg[2]  ( .D(n1120), .CK(CLK), .Q(J[2]) );
  DFFHQX1 \sort_reg[0][3]  ( .D(n1137), .CK(CLK), .Q(\sort[0][3] ) );
  DFFHQX1 \sort_reg[2][3]  ( .D(n1144), .CK(CLK), .Q(\sort[2][3] ) );
  DFFHQX1 \match_count_reg[1]  ( .D(n655), .CK(CLK), .Q(match_count[1]) );
  DFFHQX1 \W_reg[2]  ( .D(n1115), .CK(CLK), .Q(W[2]) );
  DFFHQX1 \mini_idx_reg[3]  ( .D(n1168), .CK(CLK), .Q(\mini_idx[3] ) );
  DFFHQX1 \W_reg[0]  ( .D(n1116), .CK(CLK), .Q(W[0]) );
  DFFHQX1 \sort_reg[4][3]  ( .D(n1152), .CK(CLK), .Q(\sort[4][3] ) );
  DFFHQX1 \sort_reg[5][3]  ( .D(n1156), .CK(CLK), .Q(\sort[5][3] ) );
  DFFHQX1 \J_reg[0]  ( .D(n1119), .CK(CLK), .Q(J[0]) );
  DFFHQX1 \sort_reg[6][3]  ( .D(n1160), .CK(CLK), .Q(\sort[6][3] ) );
  DFFX1 \swap_number_reg_reg[1]  ( .D(n1125), .CK(CLK), .Q(N184), .QN(n105) );
  DFFHQX1 \sort_reg[7][3]  ( .D(n1164), .CK(CLK), .Q(\sort[7][3] ) );
  DFFHQX1 \swap_number_reg_reg[0]  ( .D(n1126), .CK(CLK), .Q(N183) );
  DFFHQX1 \sort_reg[3][3]  ( .D(n1148), .CK(CLK), .Q(\sort[3][3] ) );
  DFFX1 \swap_number_reg_reg[2]  ( .D(n1124), .CK(CLK), .Q(N185), .QN(n103) );
  DFFX1 \sort_reg[0][1]  ( .D(n1172), .CK(CLK), .Q(N193), .QN(n146) );
  DFFRHQX1 \state_reg[0]  ( .D(nx_state[0]), .CK(CLK), .RN(n2275), .Q(state[0]) );
  DFFRHQX1 \state_reg[3]  ( .D(nx_state[3]), .CK(CLK), .RN(n2275), .Q(state[3]) );
  DFFRHQX1 \state_reg[1]  ( .D(nx_state[1]), .CK(CLK), .RN(n2275), .Q(state[1]) );
  DFFHQX1 \mini_idx_reg[1]  ( .D(n1122), .CK(CLK), .Q(N190) );
  DFFHQX1 \mini_idx_reg[2]  ( .D(n1121), .CK(CLK), .Q(N191) );
  DFFHQX1 \sort_reg[0][2]  ( .D(n1138), .CK(CLK), .Q(N194) );
  DFFHQX1 \mini_idx_reg[0]  ( .D(n1123), .CK(CLK), .Q(N189) );
  DFFHQX1 \sort_reg[3][2]  ( .D(n1149), .CK(CLK), .Q(N203) );
  DFFHQX1 \sort_reg[1][1]  ( .D(n1142), .CK(CLK), .Q(N196) );
  DFFHQX1 \sort_reg[1][2]  ( .D(n1141), .CK(CLK), .Q(N197) );
  DFFHQX1 \sort_reg[6][1]  ( .D(n1162), .CK(CLK), .Q(N211) );
  DFFHQX1 \sort_reg[2][1]  ( .D(n1146), .CK(CLK), .Q(N199) );
  DFFRHQX1 \state_reg[2]  ( .D(nx_state[2]), .CK(CLK), .RN(n2275), .Q(state[2]) );
  DFFHQX1 \sort_reg[6][2]  ( .D(n1161), .CK(CLK), .Q(N212) );
  DFFHQX1 \swap_number_const_reg[1]  ( .D(n1170), .CK(CLK), .Q(N187) );
  DFFHQX1 \swap_number_const_reg[0]  ( .D(n1171), .CK(CLK), .Q(N186) );
  DFFHQX1 \sort_reg[7][1]  ( .D(n1166), .CK(CLK), .Q(N214) );
  DFFHQX1 \sort_reg[2][2]  ( .D(n1145), .CK(CLK), .Q(N200) );
  DFFHQX1 \sort_reg[4][1]  ( .D(n1154), .CK(CLK), .Q(N205) );
  DFFHQX1 \sort_reg[1][0]  ( .D(n1143), .CK(CLK), .Q(N195) );
  DFFHQX1 \sort_reg[3][1]  ( .D(n1150), .CK(CLK), .Q(N202) );
  DFFHQX1 \sort_reg[5][2]  ( .D(n1157), .CK(CLK), .Q(N209) );
  DFFX1 \sort_reg[0][0]  ( .D(n1139), .CK(CLK), .Q(N192), .QN(n147) );
  DFFHQX1 \sort_reg[7][2]  ( .D(n1165), .CK(CLK), .Q(N215) );
  DFFHQX1 \sort_reg[5][1]  ( .D(n1158), .CK(CLK), .Q(N208) );
  DFFHQX1 \sort_reg[4][2]  ( .D(n1153), .CK(CLK), .Q(N206) );
  DFFHQX1 \swap_number_const_reg[2]  ( .D(n1173), .CK(CLK), .Q(N188) );
  DFFHQX1 \sort_reg[2][0]  ( .D(n1147), .CK(CLK), .Q(N198) );
  DFFHQX1 \sort_reg[5][0]  ( .D(n1159), .CK(CLK), .Q(N207) );
  DFFHQX1 \sort_reg[6][0]  ( .D(n1163), .CK(CLK), .Q(N210) );
  DFFHQX1 \sort_reg[7][0]  ( .D(n1167), .CK(CLK), .Q(N213) );
  DFFHQX1 \sort_reg[3][0]  ( .D(n1151), .CK(CLK), .Q(N201) );
  DFFHQX1 \sort_reg[4][0]  ( .D(n1155), .CK(CLK), .Q(N204) );
  DFFHQX1 \MinCost_reg[9]  ( .D(N1848), .CK(CLK), .Q(MinCost[9]) );
  DFFHQX1 \MinCost_reg[7]  ( .D(N1846), .CK(CLK), .Q(MinCost[7]) );
  DFFHQX1 \MinCost_reg[6]  ( .D(N1845), .CK(CLK), .Q(MinCost[6]) );
  DFFHQX1 \MinCost_reg[5]  ( .D(N1844), .CK(CLK), .Q(MinCost[5]) );
  DFFHQX1 \MinCost_reg[4]  ( .D(N1843), .CK(CLK), .Q(MinCost[4]) );
  DFFHQX1 \MinCost_reg[3]  ( .D(N1842), .CK(CLK), .Q(MinCost[3]) );
  DFFHQX1 \MinCost_reg[2]  ( .D(N1841), .CK(CLK), .Q(MinCost[2]) );
  DFFHQX1 \MinCost_reg[1]  ( .D(N1840), .CK(CLK), .Q(MinCost[1]) );
  DFFHQX1 \MinCost_reg[0]  ( .D(N1839), .CK(CLK), .Q(MinCost[0]) );
  DFFHQX1 \MinCost_reg[8]  ( .D(N1847), .CK(CLK), .Q(MinCost[8]) );
  DFFHQX1 \MatchCount_reg[1]  ( .D(N1836), .CK(CLK), .Q(MatchCount[1]) );
  DFFHQX1 \MatchCount_reg[2]  ( .D(N1837), .CK(CLK), .Q(MatchCount[2]) );
  DFFHQX1 \MatchCount_reg[3]  ( .D(N1838), .CK(CLK), .Q(MatchCount[3]) );
  DFFHQX1 \MatchCount_reg[0]  ( .D(N1835), .CK(CLK), .Q(MatchCount[0]) );
  DFFHQX1 Valid_reg ( .D(n2274), .CK(CLK), .Q(Valid) );
  AOI2BB1X2 U1097 ( .A0N(n2150), .A1N(n2154), .B0(RST), .Y(n1707) );
  AOI2BB1X2 U1098 ( .A0N(J[2]), .A1N(n2153), .B0(RST), .Y(n1716) );
  INVX2 U1099 ( .A(n1712), .Y(n1710) );
  INVX2 U1100 ( .A(n1715), .Y(n1713) );
  INVX2 U1101 ( .A(n1750), .Y(n1722) );
  AOI2BB1X2 U1102 ( .A0N(n2150), .A1N(n2153), .B0(RST), .Y(n1701) );
  AOI2BB1X2 U1103 ( .A0N(J[2]), .A1N(n2154), .B0(RST), .Y(n1719) );
  NOR2X2 U1104 ( .A(n2162), .B(RST), .Y(n1694) );
  INVX2 U1105 ( .A(N204), .Y(n1512) );
  INVX2 U1106 ( .A(N198), .Y(n1417) );
  INVX2 U1107 ( .A(N206), .Y(n1511) );
  INVX2 U1108 ( .A(N208), .Y(n1559) );
  INVX2 U1109 ( .A(N215), .Y(n1652) );
  INVX2 U1110 ( .A(N202), .Y(n1464) );
  INVX2 U1111 ( .A(N200), .Y(n1416) );
  INVX2 U1112 ( .A(N187), .Y(n1245) );
  INVX2 U1113 ( .A(N197), .Y(n1369) );
  INVX2 U1114 ( .A(N196), .Y(n1368) );
  INVX2 U1115 ( .A(N189), .Y(n1274) );
  INVX2 U1116 ( .A(N194), .Y(n1321) );
  NOR2X1 U1117 ( .A(n105), .B(N183), .Y(n1214) );
  NOR2X1 U1118 ( .A(n105), .B(n2083), .Y(n1213) );
  NOR2X1 U1119 ( .A(n2083), .B(N184), .Y(n1211) );
  NOR2X1 U1120 ( .A(N183), .B(N184), .Y(n1209) );
  NAND2X1 U1121 ( .A(N204), .B(n1209), .Y(n1189) );
  OAI2BB1X1 U1122 ( .A0N(N207), .A1N(n1211), .B0(n1189), .Y(n1190) );
  AOI221XL U1123 ( .A0(N210), .A1(n1214), .B0(N213), .B1(n1213), .C0(n1190), 
        .Y(n1194) );
  NAND2X1 U1124 ( .A(N192), .B(n1209), .Y(n1191) );
  OAI2BB1X1 U1125 ( .A0N(N195), .A1N(n1211), .B0(n1191), .Y(n1192) );
  AOI221XL U1126 ( .A0(N198), .A1(n1214), .B0(N201), .B1(n1213), .C0(n1192), 
        .Y(n1193) );
  OAI22X1 U1127 ( .A0(n103), .A1(n1194), .B0(N185), .B1(n1193), .Y(iter_num[0]) );
  NAND2X1 U1128 ( .A(N205), .B(n1209), .Y(n1195) );
  OAI2BB1X1 U1129 ( .A0N(N208), .A1N(n1211), .B0(n1195), .Y(n1196) );
  AOI221XL U1130 ( .A0(N211), .A1(n1214), .B0(N214), .B1(n1213), .C0(n1196), 
        .Y(n1200) );
  NAND2X1 U1131 ( .A(N193), .B(n1209), .Y(n1197) );
  OAI2BB1X1 U1132 ( .A0N(N196), .A1N(n1211), .B0(n1197), .Y(n1198) );
  AOI221XL U1133 ( .A0(N199), .A1(n1214), .B0(N202), .B1(n1213), .C0(n1198), 
        .Y(n1199) );
  OAI22X1 U1134 ( .A0(n103), .A1(n1200), .B0(N185), .B1(n1199), .Y(iter_num[1]) );
  NAND2X1 U1135 ( .A(N206), .B(n1209), .Y(n1201) );
  OAI2BB1X1 U1136 ( .A0N(N209), .A1N(n1211), .B0(n1201), .Y(n1202) );
  AOI221XL U1137 ( .A0(N212), .A1(n1214), .B0(N215), .B1(n1213), .C0(n1202), 
        .Y(n1206) );
  NAND2X1 U1138 ( .A(N194), .B(n1209), .Y(n1203) );
  OAI2BB1X1 U1139 ( .A0N(N197), .A1N(n1211), .B0(n1203), .Y(n1204) );
  AOI221XL U1140 ( .A0(N200), .A1(n1214), .B0(N203), .B1(n1213), .C0(n1204), 
        .Y(n1205) );
  OAI22X1 U1141 ( .A0(n103), .A1(n1206), .B0(N185), .B1(n1205), .Y(iter_num[2]) );
  NAND2X1 U1142 ( .A(\sort[4][3] ), .B(n1209), .Y(n1207) );
  OAI2BB1X1 U1143 ( .A0N(\sort[5][3] ), .A1N(n1211), .B0(n1207), .Y(n1208) );
  AOI221XL U1144 ( .A0(\sort[6][3] ), .A1(n1214), .B0(\sort[7][3] ), .B1(n1213), .C0(n1208), .Y(n1216) );
  NAND2X1 U1145 ( .A(\sort[0][3] ), .B(n1209), .Y(n1210) );
  OAI2BB1X1 U1146 ( .A0N(\sort[1][3] ), .A1N(n1211), .B0(n1210), .Y(n1212) );
  AOI221XL U1147 ( .A0(\sort[2][3] ), .A1(n1214), .B0(\sort[3][3] ), .B1(n1213), .C0(n1212), .Y(n1215) );
  OAI22X1 U1148 ( .A0(n1216), .A1(n103), .B0(N185), .B1(n1215), .Y(iter_num[3]) );
  NOR2X1 U1149 ( .A(n1245), .B(N186), .Y(n1242) );
  NOR2X1 U1150 ( .A(n1245), .B(n1881), .Y(n1241) );
  NOR2X1 U1151 ( .A(n1881), .B(N187), .Y(n1239) );
  NOR2X1 U1152 ( .A(N186), .B(N187), .Y(n1237) );
  NAND2X1 U1153 ( .A(N204), .B(n1237), .Y(n1217) );
  OAI2BB1X1 U1154 ( .A0N(N207), .A1N(n1239), .B0(n1217), .Y(n1218) );
  AOI221XL U1155 ( .A0(N210), .A1(n1242), .B0(N213), .B1(n1241), .C0(n1218), 
        .Y(n1222) );
  NAND2X1 U1156 ( .A(N192), .B(n1237), .Y(n1219) );
  OAI2BB1X1 U1157 ( .A0N(N195), .A1N(n1239), .B0(n1219), .Y(n1220) );
  AOI221XL U1158 ( .A0(N198), .A1(n1242), .B0(N201), .B1(n1241), .C0(n1220), 
        .Y(n1221) );
  OAI22X1 U1159 ( .A0(n1872), .A1(n1222), .B0(N188), .B1(n1221), .Y(
        swap_num[0]) );
  NAND2X1 U1160 ( .A(N205), .B(n1237), .Y(n1223) );
  OAI2BB1X1 U1161 ( .A0N(N208), .A1N(n1239), .B0(n1223), .Y(n1224) );
  AOI221XL U1162 ( .A0(N211), .A1(n1242), .B0(N214), .B1(n1241), .C0(n1224), 
        .Y(n1228) );
  NAND2X1 U1163 ( .A(N193), .B(n1237), .Y(n1225) );
  OAI2BB1X1 U1164 ( .A0N(N196), .A1N(n1239), .B0(n1225), .Y(n1226) );
  AOI221XL U1165 ( .A0(N199), .A1(n1242), .B0(N202), .B1(n1241), .C0(n1226), 
        .Y(n1227) );
  OAI22X1 U1166 ( .A0(n1872), .A1(n1228), .B0(N188), .B1(n1227), .Y(
        swap_num[1]) );
  NAND2X1 U1167 ( .A(N206), .B(n1237), .Y(n1229) );
  OAI2BB1X1 U1168 ( .A0N(N209), .A1N(n1239), .B0(n1229), .Y(n1230) );
  AOI221XL U1169 ( .A0(N212), .A1(n1242), .B0(N215), .B1(n1241), .C0(n1230), 
        .Y(n1234) );
  NAND2X1 U1170 ( .A(N194), .B(n1237), .Y(n1231) );
  OAI2BB1X1 U1171 ( .A0N(N197), .A1N(n1239), .B0(n1231), .Y(n1232) );
  AOI221XL U1172 ( .A0(N200), .A1(n1242), .B0(N203), .B1(n1241), .C0(n1232), 
        .Y(n1233) );
  OAI22X1 U1173 ( .A0(n1872), .A1(n1234), .B0(N188), .B1(n1233), .Y(
        swap_num[2]) );
  NAND2X1 U1174 ( .A(\sort[4][3] ), .B(n1237), .Y(n1235) );
  OAI2BB1X1 U1175 ( .A0N(\sort[5][3] ), .A1N(n1239), .B0(n1235), .Y(n1236) );
  AOI221XL U1176 ( .A0(\sort[6][3] ), .A1(n1242), .B0(\sort[7][3] ), .B1(n1241), .C0(n1236), .Y(n1244) );
  NAND2X1 U1177 ( .A(\sort[0][3] ), .B(n1237), .Y(n1238) );
  OAI2BB1X1 U1178 ( .A0N(\sort[1][3] ), .A1N(n1239), .B0(n1238), .Y(n1240) );
  AOI221XL U1179 ( .A0(\sort[2][3] ), .A1(n1242), .B0(\sort[3][3] ), .B1(n1241), .C0(n1240), .Y(n1243) );
  OAI22X1 U1180 ( .A0(n1244), .A1(n1872), .B0(N188), .B1(n1243), .Y(
        swap_num[3]) );
  NOR2X1 U1181 ( .A(n1944), .B(N189), .Y(n1271) );
  NOR2X1 U1182 ( .A(n1944), .B(n1274), .Y(n1270) );
  NOR2X1 U1183 ( .A(n1274), .B(N190), .Y(n1268) );
  NOR2X1 U1184 ( .A(N189), .B(N190), .Y(n1266) );
  NAND2X1 U1185 ( .A(N204), .B(n1266), .Y(n1246) );
  OAI2BB1X1 U1186 ( .A0N(N207), .A1N(n1268), .B0(n1246), .Y(n1247) );
  AOI221XL U1187 ( .A0(N210), .A1(n1271), .B0(N213), .B1(n1270), .C0(n1247), 
        .Y(n1251) );
  NAND2X1 U1188 ( .A(N192), .B(n1266), .Y(n1248) );
  OAI2BB1X1 U1189 ( .A0N(N195), .A1N(n1268), .B0(n1248), .Y(n1249) );
  AOI221XL U1190 ( .A0(N198), .A1(n1271), .B0(N201), .B1(n1270), .C0(n1249), 
        .Y(n1250) );
  OAI22X1 U1191 ( .A0(n1943), .A1(n1251), .B0(N191), .B1(n1250), .Y(
        mini_num[0]) );
  NAND2X1 U1192 ( .A(N205), .B(n1266), .Y(n1252) );
  OAI2BB1X1 U1193 ( .A0N(N208), .A1N(n1268), .B0(n1252), .Y(n1253) );
  AOI221XL U1194 ( .A0(N211), .A1(n1271), .B0(N214), .B1(n1270), .C0(n1253), 
        .Y(n1257) );
  NAND2X1 U1195 ( .A(N193), .B(n1266), .Y(n1254) );
  OAI2BB1X1 U1196 ( .A0N(N196), .A1N(n1268), .B0(n1254), .Y(n1255) );
  AOI221XL U1197 ( .A0(N199), .A1(n1271), .B0(N202), .B1(n1270), .C0(n1255), 
        .Y(n1256) );
  OAI22X1 U1198 ( .A0(n1943), .A1(n1257), .B0(N191), .B1(n1256), .Y(
        mini_num[1]) );
  NAND2X1 U1199 ( .A(N206), .B(n1266), .Y(n1258) );
  OAI2BB1X1 U1200 ( .A0N(N209), .A1N(n1268), .B0(n1258), .Y(n1259) );
  AOI221XL U1201 ( .A0(N212), .A1(n1271), .B0(N215), .B1(n1270), .C0(n1259), 
        .Y(n1263) );
  NAND2X1 U1202 ( .A(N194), .B(n1266), .Y(n1260) );
  OAI2BB1X1 U1203 ( .A0N(N197), .A1N(n1268), .B0(n1260), .Y(n1261) );
  AOI221XL U1204 ( .A0(N200), .A1(n1271), .B0(N203), .B1(n1270), .C0(n1261), 
        .Y(n1262) );
  OAI22X1 U1205 ( .A0(n1943), .A1(n1263), .B0(N191), .B1(n1262), .Y(
        mini_num[2]) );
  NAND2X1 U1206 ( .A(\sort[4][3] ), .B(n1266), .Y(n1264) );
  OAI2BB1X1 U1207 ( .A0N(\sort[5][3] ), .A1N(n1268), .B0(n1264), .Y(n1265) );
  AOI221XL U1208 ( .A0(\sort[6][3] ), .A1(n1271), .B0(\sort[7][3] ), .B1(n1270), .C0(n1265), .Y(n1273) );
  NAND2X1 U1209 ( .A(\sort[0][3] ), .B(n1266), .Y(n1267) );
  OAI2BB1X1 U1210 ( .A0N(\sort[1][3] ), .A1N(n1268), .B0(n1267), .Y(n1269) );
  AOI221XL U1211 ( .A0(\sort[2][3] ), .A1(n1271), .B0(\sort[3][3] ), .B1(n1270), .C0(n1269), .Y(n1272) );
  OAI22X1 U1212 ( .A0(n1273), .A1(n1943), .B0(N191), .B1(n1272), .Y(
        mini_num[3]) );
  NOR2X1 U1213 ( .A(n1321), .B(N193), .Y(n1318) );
  NOR2X1 U1214 ( .A(n1321), .B(n146), .Y(n1317) );
  NOR2X1 U1215 ( .A(n146), .B(N194), .Y(n1315) );
  NOR2X1 U1216 ( .A(N193), .B(N194), .Y(n1313) );
  NAND2X1 U1217 ( .A(\cost0[1][0] ), .B(n1313), .Y(n1275) );
  OAI2BB1X1 U1218 ( .A0N(\cost0[3][0] ), .A1N(n1315), .B0(n1275), .Y(n1276) );
  AOI221XL U1219 ( .A0(\cost0[5][0] ), .A1(n1318), .B0(\cost0[7][0] ), .B1(
        n1317), .C0(n1276), .Y(n1280) );
  NAND2X1 U1220 ( .A(\cost0[0][0] ), .B(n1313), .Y(n1277) );
  OAI2BB1X1 U1221 ( .A0N(\cost0[2][0] ), .A1N(n1315), .B0(n1277), .Y(n1278) );
  AOI221XL U1222 ( .A0(\cost0[4][0] ), .A1(n1318), .B0(\cost0[6][0] ), .B1(
        n1317), .C0(n1278), .Y(n1279) );
  OAI22X1 U1223 ( .A0(n147), .A1(n1280), .B0(N192), .B1(n1279), .Y(N1653) );
  NAND2X1 U1224 ( .A(\cost0[1][1] ), .B(n1313), .Y(n1281) );
  OAI2BB1X1 U1225 ( .A0N(\cost0[3][1] ), .A1N(n1315), .B0(n1281), .Y(n1282) );
  AOI221XL U1226 ( .A0(\cost0[5][1] ), .A1(n1318), .B0(\cost0[7][1] ), .B1(
        n1317), .C0(n1282), .Y(n1286) );
  NAND2X1 U1227 ( .A(\cost0[0][1] ), .B(n1313), .Y(n1283) );
  OAI2BB1X1 U1228 ( .A0N(\cost0[2][1] ), .A1N(n1315), .B0(n1283), .Y(n1284) );
  AOI221XL U1229 ( .A0(\cost0[4][1] ), .A1(n1318), .B0(\cost0[6][1] ), .B1(
        n1317), .C0(n1284), .Y(n1285) );
  OAI22X1 U1230 ( .A0(n147), .A1(n1286), .B0(N192), .B1(n1285), .Y(N1652) );
  NAND2X1 U1231 ( .A(\cost0[1][2] ), .B(n1313), .Y(n1287) );
  OAI2BB1X1 U1232 ( .A0N(\cost0[3][2] ), .A1N(n1315), .B0(n1287), .Y(n1288) );
  AOI221XL U1233 ( .A0(\cost0[5][2] ), .A1(n1318), .B0(\cost0[7][2] ), .B1(
        n1317), .C0(n1288), .Y(n1292) );
  NAND2X1 U1234 ( .A(\cost0[0][2] ), .B(n1313), .Y(n1289) );
  OAI2BB1X1 U1235 ( .A0N(\cost0[2][2] ), .A1N(n1315), .B0(n1289), .Y(n1290) );
  AOI221XL U1236 ( .A0(\cost0[4][2] ), .A1(n1318), .B0(\cost0[6][2] ), .B1(
        n1317), .C0(n1290), .Y(n1291) );
  OAI22X1 U1237 ( .A0(n147), .A1(n1292), .B0(N192), .B1(n1291), .Y(N1651) );
  NAND2X1 U1238 ( .A(\cost0[1][3] ), .B(n1313), .Y(n1293) );
  OAI2BB1X1 U1239 ( .A0N(\cost0[3][3] ), .A1N(n1315), .B0(n1293), .Y(n1294) );
  AOI221XL U1240 ( .A0(\cost0[5][3] ), .A1(n1318), .B0(\cost0[7][3] ), .B1(
        n1317), .C0(n1294), .Y(n1298) );
  NAND2X1 U1241 ( .A(\cost0[0][3] ), .B(n1313), .Y(n1295) );
  OAI2BB1X1 U1242 ( .A0N(\cost0[2][3] ), .A1N(n1315), .B0(n1295), .Y(n1296) );
  AOI221XL U1243 ( .A0(\cost0[4][3] ), .A1(n1318), .B0(\cost0[6][3] ), .B1(
        n1317), .C0(n1296), .Y(n1297) );
  OAI22X1 U1244 ( .A0(n147), .A1(n1298), .B0(N192), .B1(n1297), .Y(N1650) );
  NAND2X1 U1245 ( .A(\cost0[1][4] ), .B(n1313), .Y(n1299) );
  OAI2BB1X1 U1246 ( .A0N(\cost0[3][4] ), .A1N(n1315), .B0(n1299), .Y(n1300) );
  AOI221XL U1247 ( .A0(\cost0[5][4] ), .A1(n1318), .B0(\cost0[7][4] ), .B1(
        n1317), .C0(n1300), .Y(n1304) );
  NAND2X1 U1248 ( .A(\cost0[0][4] ), .B(n1313), .Y(n1301) );
  OAI2BB1X1 U1249 ( .A0N(\cost0[2][4] ), .A1N(n1315), .B0(n1301), .Y(n1302) );
  AOI221XL U1250 ( .A0(\cost0[4][4] ), .A1(n1318), .B0(\cost0[6][4] ), .B1(
        n1317), .C0(n1302), .Y(n1303) );
  OAI22X1 U1251 ( .A0(n147), .A1(n1304), .B0(N192), .B1(n1303), .Y(N1649) );
  NAND2X1 U1252 ( .A(\cost0[1][5] ), .B(n1313), .Y(n1305) );
  OAI2BB1X1 U1253 ( .A0N(\cost0[3][5] ), .A1N(n1315), .B0(n1305), .Y(n1306) );
  AOI221XL U1254 ( .A0(\cost0[5][5] ), .A1(n1318), .B0(\cost0[7][5] ), .B1(
        n1317), .C0(n1306), .Y(n1310) );
  NAND2X1 U1255 ( .A(\cost0[0][5] ), .B(n1313), .Y(n1307) );
  OAI2BB1X1 U1256 ( .A0N(\cost0[2][5] ), .A1N(n1315), .B0(n1307), .Y(n1308) );
  AOI221XL U1257 ( .A0(\cost0[4][5] ), .A1(n1318), .B0(\cost0[6][5] ), .B1(
        n1317), .C0(n1308), .Y(n1309) );
  OAI22X1 U1258 ( .A0(n147), .A1(n1310), .B0(N192), .B1(n1309), .Y(N1648) );
  NAND2X1 U1259 ( .A(\cost0[1][6] ), .B(n1313), .Y(n1311) );
  OAI2BB1X1 U1260 ( .A0N(\cost0[3][6] ), .A1N(n1315), .B0(n1311), .Y(n1312) );
  AOI221XL U1261 ( .A0(\cost0[5][6] ), .A1(n1318), .B0(\cost0[7][6] ), .B1(
        n1317), .C0(n1312), .Y(n1320) );
  NAND2X1 U1262 ( .A(\cost0[0][6] ), .B(n1313), .Y(n1314) );
  OAI2BB1X1 U1263 ( .A0N(\cost0[2][6] ), .A1N(n1315), .B0(n1314), .Y(n1316) );
  AOI221XL U1264 ( .A0(\cost0[4][6] ), .A1(n1318), .B0(\cost0[6][6] ), .B1(
        n1317), .C0(n1316), .Y(n1319) );
  OAI22X1 U1265 ( .A0(n1320), .A1(n147), .B0(N192), .B1(n1319), .Y(N1647) );
  NOR2X1 U1266 ( .A(n1369), .B(N196), .Y(n1365) );
  NOR2X1 U1267 ( .A(n1369), .B(n1368), .Y(n1364) );
  NOR2X1 U1268 ( .A(n1368), .B(N197), .Y(n1362) );
  NOR2X1 U1269 ( .A(N196), .B(N197), .Y(n1360) );
  NAND2X1 U1270 ( .A(\cost1[1][0] ), .B(n1360), .Y(n1322) );
  OAI2BB1X1 U1271 ( .A0N(\cost1[3][0] ), .A1N(n1362), .B0(n1322), .Y(n1323) );
  AOI221XL U1272 ( .A0(\cost1[5][0] ), .A1(n1365), .B0(\cost1[7][0] ), .B1(
        n1364), .C0(n1323), .Y(n1327) );
  NAND2X1 U1273 ( .A(\cost1[0][0] ), .B(n1360), .Y(n1324) );
  OAI2BB1X1 U1274 ( .A0N(\cost1[2][0] ), .A1N(n1362), .B0(n1324), .Y(n1325) );
  AOI221XL U1275 ( .A0(\cost1[4][0] ), .A1(n1365), .B0(\cost1[6][0] ), .B1(
        n1364), .C0(n1325), .Y(n1326) );
  OAI22X1 U1276 ( .A0(n1901), .A1(n1327), .B0(N195), .B1(n1326), .Y(N1660) );
  NAND2X1 U1277 ( .A(\cost1[1][1] ), .B(n1360), .Y(n1328) );
  OAI2BB1X1 U1278 ( .A0N(\cost1[3][1] ), .A1N(n1362), .B0(n1328), .Y(n1329) );
  AOI221XL U1279 ( .A0(\cost1[5][1] ), .A1(n1365), .B0(\cost1[7][1] ), .B1(
        n1364), .C0(n1329), .Y(n1333) );
  NAND2X1 U1280 ( .A(\cost1[0][1] ), .B(n1360), .Y(n1330) );
  OAI2BB1X1 U1281 ( .A0N(\cost1[2][1] ), .A1N(n1362), .B0(n1330), .Y(n1331) );
  AOI221XL U1282 ( .A0(\cost1[4][1] ), .A1(n1365), .B0(\cost1[6][1] ), .B1(
        n1364), .C0(n1331), .Y(n1332) );
  OAI22X1 U1283 ( .A0(n1901), .A1(n1333), .B0(N195), .B1(n1332), .Y(N1659) );
  NAND2X1 U1284 ( .A(\cost1[1][2] ), .B(n1360), .Y(n1334) );
  OAI2BB1X1 U1285 ( .A0N(\cost1[3][2] ), .A1N(n1362), .B0(n1334), .Y(n1335) );
  AOI221XL U1286 ( .A0(\cost1[5][2] ), .A1(n1365), .B0(\cost1[7][2] ), .B1(
        n1364), .C0(n1335), .Y(n1339) );
  NAND2X1 U1287 ( .A(\cost1[0][2] ), .B(n1360), .Y(n1336) );
  OAI2BB1X1 U1288 ( .A0N(\cost1[2][2] ), .A1N(n1362), .B0(n1336), .Y(n1337) );
  AOI221XL U1289 ( .A0(\cost1[4][2] ), .A1(n1365), .B0(\cost1[6][2] ), .B1(
        n1364), .C0(n1337), .Y(n1338) );
  OAI22X1 U1290 ( .A0(n1901), .A1(n1339), .B0(N195), .B1(n1338), .Y(N1658) );
  NAND2X1 U1291 ( .A(\cost1[1][3] ), .B(n1360), .Y(n1340) );
  OAI2BB1X1 U1292 ( .A0N(\cost1[3][3] ), .A1N(n1362), .B0(n1340), .Y(n1341) );
  AOI221XL U1293 ( .A0(\cost1[5][3] ), .A1(n1365), .B0(\cost1[7][3] ), .B1(
        n1364), .C0(n1341), .Y(n1345) );
  NAND2X1 U1294 ( .A(\cost1[0][3] ), .B(n1360), .Y(n1342) );
  OAI2BB1X1 U1295 ( .A0N(\cost1[2][3] ), .A1N(n1362), .B0(n1342), .Y(n1343) );
  AOI221XL U1296 ( .A0(\cost1[4][3] ), .A1(n1365), .B0(\cost1[6][3] ), .B1(
        n1364), .C0(n1343), .Y(n1344) );
  OAI22X1 U1297 ( .A0(n1901), .A1(n1345), .B0(N195), .B1(n1344), .Y(N1657) );
  NAND2X1 U1298 ( .A(\cost1[1][4] ), .B(n1360), .Y(n1346) );
  OAI2BB1X1 U1299 ( .A0N(\cost1[3][4] ), .A1N(n1362), .B0(n1346), .Y(n1347) );
  AOI221XL U1300 ( .A0(\cost1[5][4] ), .A1(n1365), .B0(\cost1[7][4] ), .B1(
        n1364), .C0(n1347), .Y(n1351) );
  NAND2X1 U1301 ( .A(\cost1[0][4] ), .B(n1360), .Y(n1348) );
  OAI2BB1X1 U1302 ( .A0N(\cost1[2][4] ), .A1N(n1362), .B0(n1348), .Y(n1349) );
  AOI221XL U1303 ( .A0(\cost1[4][4] ), .A1(n1365), .B0(\cost1[6][4] ), .B1(
        n1364), .C0(n1349), .Y(n1350) );
  OAI22X1 U1304 ( .A0(n1901), .A1(n1351), .B0(N195), .B1(n1350), .Y(N1656) );
  NAND2X1 U1305 ( .A(\cost1[1][5] ), .B(n1360), .Y(n1352) );
  OAI2BB1X1 U1306 ( .A0N(\cost1[3][5] ), .A1N(n1362), .B0(n1352), .Y(n1353) );
  AOI221XL U1307 ( .A0(\cost1[5][5] ), .A1(n1365), .B0(\cost1[7][5] ), .B1(
        n1364), .C0(n1353), .Y(n1357) );
  NAND2X1 U1308 ( .A(\cost1[0][5] ), .B(n1360), .Y(n1354) );
  OAI2BB1X1 U1309 ( .A0N(\cost1[2][5] ), .A1N(n1362), .B0(n1354), .Y(n1355) );
  AOI221XL U1310 ( .A0(\cost1[4][5] ), .A1(n1365), .B0(\cost1[6][5] ), .B1(
        n1364), .C0(n1355), .Y(n1356) );
  OAI22X1 U1311 ( .A0(n1901), .A1(n1357), .B0(N195), .B1(n1356), .Y(N1655) );
  NAND2X1 U1312 ( .A(\cost1[1][6] ), .B(n1360), .Y(n1358) );
  OAI2BB1X1 U1313 ( .A0N(\cost1[3][6] ), .A1N(n1362), .B0(n1358), .Y(n1359) );
  AOI221XL U1314 ( .A0(\cost1[5][6] ), .A1(n1365), .B0(\cost1[7][6] ), .B1(
        n1364), .C0(n1359), .Y(n1367) );
  NAND2X1 U1315 ( .A(\cost1[0][6] ), .B(n1360), .Y(n1361) );
  OAI2BB1X1 U1316 ( .A0N(\cost1[2][6] ), .A1N(n1362), .B0(n1361), .Y(n1363) );
  AOI221XL U1317 ( .A0(\cost1[4][6] ), .A1(n1365), .B0(\cost1[6][6] ), .B1(
        n1364), .C0(n1363), .Y(n1366) );
  OAI22X1 U1318 ( .A0(n1367), .A1(n1901), .B0(N195), .B1(n1366), .Y(N1654) );
  NOR2X1 U1319 ( .A(n1416), .B(N199), .Y(n1413) );
  NOR2X1 U1320 ( .A(n1416), .B(n1918), .Y(n1412) );
  NOR2X1 U1321 ( .A(n1918), .B(N200), .Y(n1410) );
  NOR2X1 U1322 ( .A(N199), .B(N200), .Y(n1408) );
  NAND2X1 U1323 ( .A(\cost2[1][0] ), .B(n1408), .Y(n1370) );
  OAI2BB1X1 U1324 ( .A0N(\cost2[3][0] ), .A1N(n1410), .B0(n1370), .Y(n1371) );
  AOI221XL U1325 ( .A0(\cost2[5][0] ), .A1(n1413), .B0(\cost2[7][0] ), .B1(
        n1412), .C0(n1371), .Y(n1375) );
  NAND2X1 U1326 ( .A(\cost2[0][0] ), .B(n1408), .Y(n1372) );
  OAI2BB1X1 U1327 ( .A0N(\cost2[2][0] ), .A1N(n1410), .B0(n1372), .Y(n1373) );
  AOI221XL U1328 ( .A0(\cost2[4][0] ), .A1(n1413), .B0(\cost2[6][0] ), .B1(
        n1412), .C0(n1373), .Y(n1374) );
  OAI22X1 U1329 ( .A0(n1417), .A1(n1375), .B0(N198), .B1(n1374), .Y(N1667) );
  NAND2X1 U1330 ( .A(\cost2[1][1] ), .B(n1408), .Y(n1376) );
  OAI2BB1X1 U1331 ( .A0N(\cost2[3][1] ), .A1N(n1410), .B0(n1376), .Y(n1377) );
  AOI221XL U1332 ( .A0(\cost2[5][1] ), .A1(n1413), .B0(\cost2[7][1] ), .B1(
        n1412), .C0(n1377), .Y(n1381) );
  NAND2X1 U1333 ( .A(\cost2[0][1] ), .B(n1408), .Y(n1378) );
  OAI2BB1X1 U1334 ( .A0N(\cost2[2][1] ), .A1N(n1410), .B0(n1378), .Y(n1379) );
  AOI221XL U1335 ( .A0(\cost2[4][1] ), .A1(n1413), .B0(\cost2[6][1] ), .B1(
        n1412), .C0(n1379), .Y(n1380) );
  OAI22X1 U1336 ( .A0(n1417), .A1(n1381), .B0(N198), .B1(n1380), .Y(N1666) );
  NAND2X1 U1337 ( .A(\cost2[1][2] ), .B(n1408), .Y(n1382) );
  OAI2BB1X1 U1338 ( .A0N(\cost2[3][2] ), .A1N(n1410), .B0(n1382), .Y(n1383) );
  AOI221XL U1339 ( .A0(\cost2[5][2] ), .A1(n1413), .B0(\cost2[7][2] ), .B1(
        n1412), .C0(n1383), .Y(n1387) );
  NAND2X1 U1340 ( .A(\cost2[0][2] ), .B(n1408), .Y(n1384) );
  OAI2BB1X1 U1341 ( .A0N(\cost2[2][2] ), .A1N(n1410), .B0(n1384), .Y(n1385) );
  AOI221XL U1342 ( .A0(\cost2[4][2] ), .A1(n1413), .B0(\cost2[6][2] ), .B1(
        n1412), .C0(n1385), .Y(n1386) );
  OAI22X1 U1343 ( .A0(n1417), .A1(n1387), .B0(N198), .B1(n1386), .Y(N1665) );
  NAND2X1 U1344 ( .A(\cost2[1][3] ), .B(n1408), .Y(n1388) );
  OAI2BB1X1 U1345 ( .A0N(\cost2[3][3] ), .A1N(n1410), .B0(n1388), .Y(n1389) );
  AOI221XL U1346 ( .A0(\cost2[5][3] ), .A1(n1413), .B0(\cost2[7][3] ), .B1(
        n1412), .C0(n1389), .Y(n1393) );
  NAND2X1 U1347 ( .A(\cost2[0][3] ), .B(n1408), .Y(n1390) );
  OAI2BB1X1 U1348 ( .A0N(\cost2[2][3] ), .A1N(n1410), .B0(n1390), .Y(n1391) );
  AOI221XL U1349 ( .A0(\cost2[4][3] ), .A1(n1413), .B0(\cost2[6][3] ), .B1(
        n1412), .C0(n1391), .Y(n1392) );
  OAI22X1 U1350 ( .A0(n1417), .A1(n1393), .B0(N198), .B1(n1392), .Y(N1664) );
  NAND2X1 U1351 ( .A(\cost2[1][4] ), .B(n1408), .Y(n1394) );
  OAI2BB1X1 U1352 ( .A0N(\cost2[3][4] ), .A1N(n1410), .B0(n1394), .Y(n1395) );
  AOI221XL U1353 ( .A0(\cost2[5][4] ), .A1(n1413), .B0(\cost2[7][4] ), .B1(
        n1412), .C0(n1395), .Y(n1399) );
  NAND2X1 U1354 ( .A(\cost2[0][4] ), .B(n1408), .Y(n1396) );
  OAI2BB1X1 U1355 ( .A0N(\cost2[2][4] ), .A1N(n1410), .B0(n1396), .Y(n1397) );
  AOI221XL U1356 ( .A0(\cost2[4][4] ), .A1(n1413), .B0(\cost2[6][4] ), .B1(
        n1412), .C0(n1397), .Y(n1398) );
  OAI22X1 U1357 ( .A0(n1417), .A1(n1399), .B0(N198), .B1(n1398), .Y(N1663) );
  NAND2X1 U1358 ( .A(\cost2[1][5] ), .B(n1408), .Y(n1400) );
  OAI2BB1X1 U1359 ( .A0N(\cost2[3][5] ), .A1N(n1410), .B0(n1400), .Y(n1401) );
  AOI221XL U1360 ( .A0(\cost2[5][5] ), .A1(n1413), .B0(\cost2[7][5] ), .B1(
        n1412), .C0(n1401), .Y(n1405) );
  NAND2X1 U1361 ( .A(\cost2[0][5] ), .B(n1408), .Y(n1402) );
  OAI2BB1X1 U1362 ( .A0N(\cost2[2][5] ), .A1N(n1410), .B0(n1402), .Y(n1403) );
  AOI221XL U1363 ( .A0(\cost2[4][5] ), .A1(n1413), .B0(\cost2[6][5] ), .B1(
        n1412), .C0(n1403), .Y(n1404) );
  OAI22X1 U1364 ( .A0(n1417), .A1(n1405), .B0(N198), .B1(n1404), .Y(N1662) );
  NAND2X1 U1365 ( .A(\cost2[1][6] ), .B(n1408), .Y(n1406) );
  OAI2BB1X1 U1366 ( .A0N(\cost2[3][6] ), .A1N(n1410), .B0(n1406), .Y(n1407) );
  AOI221XL U1367 ( .A0(\cost2[5][6] ), .A1(n1413), .B0(\cost2[7][6] ), .B1(
        n1412), .C0(n1407), .Y(n1415) );
  NAND2X1 U1368 ( .A(\cost2[0][6] ), .B(n1408), .Y(n1409) );
  OAI2BB1X1 U1369 ( .A0N(\cost2[2][6] ), .A1N(n1410), .B0(n1409), .Y(n1411) );
  AOI221XL U1370 ( .A0(\cost2[4][6] ), .A1(n1413), .B0(\cost2[6][6] ), .B1(
        n1412), .C0(n1411), .Y(n1414) );
  OAI22X1 U1371 ( .A0(n1415), .A1(n1417), .B0(N198), .B1(n1414), .Y(N1661) );
  NOR2X1 U1372 ( .A(n1927), .B(N202), .Y(n1461) );
  NOR2X1 U1373 ( .A(n1927), .B(n1464), .Y(n1460) );
  NOR2X1 U1374 ( .A(n1464), .B(N203), .Y(n1458) );
  NOR2X1 U1375 ( .A(N202), .B(N203), .Y(n1456) );
  NAND2X1 U1376 ( .A(\cost3[1][0] ), .B(n1456), .Y(n1418) );
  OAI2BB1X1 U1377 ( .A0N(\cost3[3][0] ), .A1N(n1458), .B0(n1418), .Y(n1419) );
  AOI221XL U1378 ( .A0(\cost3[5][0] ), .A1(n1461), .B0(\cost3[7][0] ), .B1(
        n1460), .C0(n1419), .Y(n1423) );
  NAND2X1 U1379 ( .A(\cost3[0][0] ), .B(n1456), .Y(n1420) );
  OAI2BB1X1 U1380 ( .A0N(\cost3[2][0] ), .A1N(n1458), .B0(n1420), .Y(n1421) );
  AOI221XL U1381 ( .A0(\cost3[4][0] ), .A1(n1461), .B0(\cost3[6][0] ), .B1(
        n1460), .C0(n1421), .Y(n1422) );
  OAI22X1 U1382 ( .A0(n1903), .A1(n1423), .B0(N201), .B1(n1422), .Y(N1674) );
  NAND2X1 U1383 ( .A(\cost3[1][1] ), .B(n1456), .Y(n1424) );
  OAI2BB1X1 U1384 ( .A0N(\cost3[3][1] ), .A1N(n1458), .B0(n1424), .Y(n1425) );
  AOI221XL U1385 ( .A0(\cost3[5][1] ), .A1(n1461), .B0(\cost3[7][1] ), .B1(
        n1460), .C0(n1425), .Y(n1429) );
  NAND2X1 U1386 ( .A(\cost3[0][1] ), .B(n1456), .Y(n1426) );
  OAI2BB1X1 U1387 ( .A0N(\cost3[2][1] ), .A1N(n1458), .B0(n1426), .Y(n1427) );
  AOI221XL U1388 ( .A0(\cost3[4][1] ), .A1(n1461), .B0(\cost3[6][1] ), .B1(
        n1460), .C0(n1427), .Y(n1428) );
  OAI22X1 U1389 ( .A0(n1903), .A1(n1429), .B0(N201), .B1(n1428), .Y(N1673) );
  NAND2X1 U1390 ( .A(\cost3[1][2] ), .B(n1456), .Y(n1430) );
  OAI2BB1X1 U1391 ( .A0N(\cost3[3][2] ), .A1N(n1458), .B0(n1430), .Y(n1431) );
  AOI221XL U1392 ( .A0(\cost3[5][2] ), .A1(n1461), .B0(\cost3[7][2] ), .B1(
        n1460), .C0(n1431), .Y(n1435) );
  NAND2X1 U1393 ( .A(\cost3[0][2] ), .B(n1456), .Y(n1432) );
  OAI2BB1X1 U1394 ( .A0N(\cost3[2][2] ), .A1N(n1458), .B0(n1432), .Y(n1433) );
  AOI221XL U1395 ( .A0(\cost3[4][2] ), .A1(n1461), .B0(\cost3[6][2] ), .B1(
        n1460), .C0(n1433), .Y(n1434) );
  OAI22X1 U1396 ( .A0(n1903), .A1(n1435), .B0(N201), .B1(n1434), .Y(N1672) );
  NAND2X1 U1397 ( .A(\cost3[1][3] ), .B(n1456), .Y(n1436) );
  OAI2BB1X1 U1398 ( .A0N(\cost3[3][3] ), .A1N(n1458), .B0(n1436), .Y(n1437) );
  AOI221XL U1399 ( .A0(\cost3[5][3] ), .A1(n1461), .B0(\cost3[7][3] ), .B1(
        n1460), .C0(n1437), .Y(n1441) );
  NAND2X1 U1400 ( .A(\cost3[0][3] ), .B(n1456), .Y(n1438) );
  OAI2BB1X1 U1401 ( .A0N(\cost3[2][3] ), .A1N(n1458), .B0(n1438), .Y(n1439) );
  AOI221XL U1402 ( .A0(\cost3[4][3] ), .A1(n1461), .B0(\cost3[6][3] ), .B1(
        n1460), .C0(n1439), .Y(n1440) );
  OAI22X1 U1403 ( .A0(n1903), .A1(n1441), .B0(N201), .B1(n1440), .Y(N1671) );
  NAND2X1 U1404 ( .A(\cost3[1][4] ), .B(n1456), .Y(n1442) );
  OAI2BB1X1 U1405 ( .A0N(\cost3[3][4] ), .A1N(n1458), .B0(n1442), .Y(n1443) );
  AOI221XL U1406 ( .A0(\cost3[5][4] ), .A1(n1461), .B0(\cost3[7][4] ), .B1(
        n1460), .C0(n1443), .Y(n1447) );
  NAND2X1 U1407 ( .A(\cost3[0][4] ), .B(n1456), .Y(n1444) );
  OAI2BB1X1 U1408 ( .A0N(\cost3[2][4] ), .A1N(n1458), .B0(n1444), .Y(n1445) );
  AOI221XL U1409 ( .A0(\cost3[4][4] ), .A1(n1461), .B0(\cost3[6][4] ), .B1(
        n1460), .C0(n1445), .Y(n1446) );
  OAI22X1 U1410 ( .A0(n1903), .A1(n1447), .B0(N201), .B1(n1446), .Y(N1670) );
  NAND2X1 U1411 ( .A(\cost3[1][5] ), .B(n1456), .Y(n1448) );
  OAI2BB1X1 U1412 ( .A0N(\cost3[3][5] ), .A1N(n1458), .B0(n1448), .Y(n1449) );
  AOI221XL U1413 ( .A0(\cost3[5][5] ), .A1(n1461), .B0(\cost3[7][5] ), .B1(
        n1460), .C0(n1449), .Y(n1453) );
  NAND2X1 U1414 ( .A(\cost3[0][5] ), .B(n1456), .Y(n1450) );
  OAI2BB1X1 U1415 ( .A0N(\cost3[2][5] ), .A1N(n1458), .B0(n1450), .Y(n1451) );
  AOI221XL U1416 ( .A0(\cost3[4][5] ), .A1(n1461), .B0(\cost3[6][5] ), .B1(
        n1460), .C0(n1451), .Y(n1452) );
  OAI22X1 U1417 ( .A0(n1903), .A1(n1453), .B0(N201), .B1(n1452), .Y(N1669) );
  NAND2X1 U1418 ( .A(\cost3[1][6] ), .B(n1456), .Y(n1454) );
  OAI2BB1X1 U1419 ( .A0N(\cost3[3][6] ), .A1N(n1458), .B0(n1454), .Y(n1455) );
  AOI221XL U1420 ( .A0(\cost3[5][6] ), .A1(n1461), .B0(\cost3[7][6] ), .B1(
        n1460), .C0(n1455), .Y(n1463) );
  NAND2X1 U1421 ( .A(\cost3[0][6] ), .B(n1456), .Y(n1457) );
  OAI2BB1X1 U1422 ( .A0N(\cost3[2][6] ), .A1N(n1458), .B0(n1457), .Y(n1459) );
  AOI221XL U1423 ( .A0(\cost3[4][6] ), .A1(n1461), .B0(\cost3[6][6] ), .B1(
        n1460), .C0(n1459), .Y(n1462) );
  OAI22X1 U1424 ( .A0(n1463), .A1(n1903), .B0(N201), .B1(n1462), .Y(N1668) );
  NOR2X1 U1425 ( .A(n1511), .B(N205), .Y(n1508) );
  NOR2X1 U1426 ( .A(n1511), .B(n1960), .Y(n1507) );
  NOR2X1 U1427 ( .A(n1960), .B(N206), .Y(n1505) );
  NOR2X1 U1428 ( .A(N205), .B(N206), .Y(n1503) );
  NAND2X1 U1429 ( .A(\cost4[1][0] ), .B(n1503), .Y(n1465) );
  OAI2BB1X1 U1430 ( .A0N(\cost4[3][0] ), .A1N(n1505), .B0(n1465), .Y(n1466) );
  AOI221XL U1431 ( .A0(\cost4[5][0] ), .A1(n1508), .B0(\cost4[7][0] ), .B1(
        n1507), .C0(n1466), .Y(n1470) );
  NAND2X1 U1432 ( .A(\cost4[0][0] ), .B(n1503), .Y(n1467) );
  OAI2BB1X1 U1433 ( .A0N(\cost4[2][0] ), .A1N(n1505), .B0(n1467), .Y(n1468) );
  AOI221XL U1434 ( .A0(\cost4[4][0] ), .A1(n1508), .B0(\cost4[6][0] ), .B1(
        n1507), .C0(n1468), .Y(n1469) );
  OAI22X1 U1435 ( .A0(n1512), .A1(n1470), .B0(N204), .B1(n1469), .Y(N1681) );
  NAND2X1 U1436 ( .A(\cost4[1][1] ), .B(n1503), .Y(n1471) );
  OAI2BB1X1 U1437 ( .A0N(\cost4[3][1] ), .A1N(n1505), .B0(n1471), .Y(n1472) );
  AOI221XL U1438 ( .A0(\cost4[5][1] ), .A1(n1508), .B0(\cost4[7][1] ), .B1(
        n1507), .C0(n1472), .Y(n1476) );
  NAND2X1 U1439 ( .A(\cost4[0][1] ), .B(n1503), .Y(n1473) );
  OAI2BB1X1 U1440 ( .A0N(\cost4[2][1] ), .A1N(n1505), .B0(n1473), .Y(n1474) );
  AOI221XL U1441 ( .A0(\cost4[4][1] ), .A1(n1508), .B0(\cost4[6][1] ), .B1(
        n1507), .C0(n1474), .Y(n1475) );
  OAI22X1 U1442 ( .A0(n1512), .A1(n1476), .B0(N204), .B1(n1475), .Y(N1680) );
  NAND2X1 U1443 ( .A(\cost4[1][2] ), .B(n1503), .Y(n1477) );
  OAI2BB1X1 U1444 ( .A0N(\cost4[3][2] ), .A1N(n1505), .B0(n1477), .Y(n1478) );
  AOI221XL U1445 ( .A0(\cost4[5][2] ), .A1(n1508), .B0(\cost4[7][2] ), .B1(
        n1507), .C0(n1478), .Y(n1482) );
  NAND2X1 U1446 ( .A(\cost4[0][2] ), .B(n1503), .Y(n1479) );
  OAI2BB1X1 U1447 ( .A0N(\cost4[2][2] ), .A1N(n1505), .B0(n1479), .Y(n1480) );
  AOI221XL U1448 ( .A0(\cost4[4][2] ), .A1(n1508), .B0(\cost4[6][2] ), .B1(
        n1507), .C0(n1480), .Y(n1481) );
  OAI22X1 U1449 ( .A0(n1512), .A1(n1482), .B0(N204), .B1(n1481), .Y(N1679) );
  NAND2X1 U1450 ( .A(\cost4[1][3] ), .B(n1503), .Y(n1483) );
  OAI2BB1X1 U1451 ( .A0N(\cost4[3][3] ), .A1N(n1505), .B0(n1483), .Y(n1484) );
  AOI221XL U1452 ( .A0(\cost4[5][3] ), .A1(n1508), .B0(\cost4[7][3] ), .B1(
        n1507), .C0(n1484), .Y(n1488) );
  NAND2X1 U1453 ( .A(\cost4[0][3] ), .B(n1503), .Y(n1485) );
  OAI2BB1X1 U1454 ( .A0N(\cost4[2][3] ), .A1N(n1505), .B0(n1485), .Y(n1486) );
  AOI221XL U1455 ( .A0(\cost4[4][3] ), .A1(n1508), .B0(\cost4[6][3] ), .B1(
        n1507), .C0(n1486), .Y(n1487) );
  OAI22X1 U1456 ( .A0(n1512), .A1(n1488), .B0(N204), .B1(n1487), .Y(N1678) );
  NAND2X1 U1457 ( .A(\cost4[1][4] ), .B(n1503), .Y(n1489) );
  OAI2BB1X1 U1458 ( .A0N(\cost4[3][4] ), .A1N(n1505), .B0(n1489), .Y(n1490) );
  AOI221XL U1459 ( .A0(\cost4[5][4] ), .A1(n1508), .B0(\cost4[7][4] ), .B1(
        n1507), .C0(n1490), .Y(n1494) );
  NAND2X1 U1460 ( .A(\cost4[0][4] ), .B(n1503), .Y(n1491) );
  OAI2BB1X1 U1461 ( .A0N(\cost4[2][4] ), .A1N(n1505), .B0(n1491), .Y(n1492) );
  AOI221XL U1462 ( .A0(\cost4[4][4] ), .A1(n1508), .B0(\cost4[6][4] ), .B1(
        n1507), .C0(n1492), .Y(n1493) );
  OAI22X1 U1463 ( .A0(n1512), .A1(n1494), .B0(N204), .B1(n1493), .Y(N1677) );
  NAND2X1 U1464 ( .A(\cost4[1][5] ), .B(n1503), .Y(n1495) );
  OAI2BB1X1 U1465 ( .A0N(\cost4[3][5] ), .A1N(n1505), .B0(n1495), .Y(n1496) );
  AOI221XL U1466 ( .A0(\cost4[5][5] ), .A1(n1508), .B0(\cost4[7][5] ), .B1(
        n1507), .C0(n1496), .Y(n1500) );
  NAND2X1 U1467 ( .A(\cost4[0][5] ), .B(n1503), .Y(n1497) );
  OAI2BB1X1 U1468 ( .A0N(\cost4[2][5] ), .A1N(n1505), .B0(n1497), .Y(n1498) );
  AOI221XL U1469 ( .A0(\cost4[4][5] ), .A1(n1508), .B0(\cost4[6][5] ), .B1(
        n1507), .C0(n1498), .Y(n1499) );
  OAI22X1 U1470 ( .A0(n1512), .A1(n1500), .B0(N204), .B1(n1499), .Y(N1676) );
  NAND2X1 U1471 ( .A(\cost4[1][6] ), .B(n1503), .Y(n1501) );
  OAI2BB1X1 U1472 ( .A0N(\cost4[3][6] ), .A1N(n1505), .B0(n1501), .Y(n1502) );
  AOI221XL U1473 ( .A0(\cost4[5][6] ), .A1(n1508), .B0(\cost4[7][6] ), .B1(
        n1507), .C0(n1502), .Y(n1510) );
  NAND2X1 U1474 ( .A(\cost4[0][6] ), .B(n1503), .Y(n1504) );
  OAI2BB1X1 U1475 ( .A0N(\cost4[2][6] ), .A1N(n1505), .B0(n1504), .Y(n1506) );
  AOI221XL U1476 ( .A0(\cost4[4][6] ), .A1(n1508), .B0(\cost4[6][6] ), .B1(
        n1507), .C0(n1506), .Y(n1509) );
  OAI22X1 U1477 ( .A0(n1510), .A1(n1512), .B0(N204), .B1(n1509), .Y(N1675) );
  NOR2X1 U1478 ( .A(n1966), .B(N208), .Y(n1556) );
  NOR2X1 U1479 ( .A(n1966), .B(n1559), .Y(n1555) );
  NOR2X1 U1480 ( .A(n1559), .B(N209), .Y(n1553) );
  NOR2X1 U1481 ( .A(N208), .B(N209), .Y(n1551) );
  NAND2X1 U1482 ( .A(\cost5[1][0] ), .B(n1551), .Y(n1513) );
  OAI2BB1X1 U1483 ( .A0N(\cost5[3][0] ), .A1N(n1553), .B0(n1513), .Y(n1514) );
  AOI221XL U1484 ( .A0(\cost5[5][0] ), .A1(n1556), .B0(\cost5[7][0] ), .B1(
        n1555), .C0(n1514), .Y(n1518) );
  NAND2X1 U1485 ( .A(\cost5[0][0] ), .B(n1551), .Y(n1515) );
  OAI2BB1X1 U1486 ( .A0N(\cost5[2][0] ), .A1N(n1553), .B0(n1515), .Y(n1516) );
  AOI221XL U1487 ( .A0(\cost5[4][0] ), .A1(n1556), .B0(\cost5[6][0] ), .B1(
        n1555), .C0(n1516), .Y(n1517) );
  OAI22X1 U1488 ( .A0(n1977), .A1(n1518), .B0(N207), .B1(n1517), .Y(N1688) );
  NAND2X1 U1489 ( .A(\cost5[1][1] ), .B(n1551), .Y(n1519) );
  OAI2BB1X1 U1490 ( .A0N(\cost5[3][1] ), .A1N(n1553), .B0(n1519), .Y(n1520) );
  AOI221XL U1491 ( .A0(\cost5[5][1] ), .A1(n1556), .B0(\cost5[7][1] ), .B1(
        n1555), .C0(n1520), .Y(n1524) );
  NAND2X1 U1492 ( .A(\cost5[0][1] ), .B(n1551), .Y(n1521) );
  OAI2BB1X1 U1493 ( .A0N(\cost5[2][1] ), .A1N(n1553), .B0(n1521), .Y(n1522) );
  AOI221XL U1494 ( .A0(\cost5[4][1] ), .A1(n1556), .B0(\cost5[6][1] ), .B1(
        n1555), .C0(n1522), .Y(n1523) );
  OAI22X1 U1495 ( .A0(n1977), .A1(n1524), .B0(N207), .B1(n1523), .Y(N1687) );
  NAND2X1 U1496 ( .A(\cost5[1][2] ), .B(n1551), .Y(n1525) );
  OAI2BB1X1 U1497 ( .A0N(\cost5[3][2] ), .A1N(n1553), .B0(n1525), .Y(n1526) );
  AOI221XL U1498 ( .A0(\cost5[5][2] ), .A1(n1556), .B0(\cost5[7][2] ), .B1(
        n1555), .C0(n1526), .Y(n1530) );
  NAND2X1 U1499 ( .A(\cost5[0][2] ), .B(n1551), .Y(n1527) );
  OAI2BB1X1 U1500 ( .A0N(\cost5[2][2] ), .A1N(n1553), .B0(n1527), .Y(n1528) );
  AOI221XL U1501 ( .A0(\cost5[4][2] ), .A1(n1556), .B0(\cost5[6][2] ), .B1(
        n1555), .C0(n1528), .Y(n1529) );
  OAI22X1 U1502 ( .A0(n1977), .A1(n1530), .B0(N207), .B1(n1529), .Y(N1686) );
  NAND2X1 U1503 ( .A(\cost5[1][3] ), .B(n1551), .Y(n1531) );
  OAI2BB1X1 U1504 ( .A0N(\cost5[3][3] ), .A1N(n1553), .B0(n1531), .Y(n1532) );
  AOI221XL U1505 ( .A0(\cost5[5][3] ), .A1(n1556), .B0(\cost5[7][3] ), .B1(
        n1555), .C0(n1532), .Y(n1536) );
  NAND2X1 U1506 ( .A(\cost5[0][3] ), .B(n1551), .Y(n1533) );
  OAI2BB1X1 U1507 ( .A0N(\cost5[2][3] ), .A1N(n1553), .B0(n1533), .Y(n1534) );
  AOI221XL U1508 ( .A0(\cost5[4][3] ), .A1(n1556), .B0(\cost5[6][3] ), .B1(
        n1555), .C0(n1534), .Y(n1535) );
  OAI22X1 U1509 ( .A0(n1977), .A1(n1536), .B0(N207), .B1(n1535), .Y(N1685) );
  NAND2X1 U1510 ( .A(\cost5[1][4] ), .B(n1551), .Y(n1537) );
  OAI2BB1X1 U1511 ( .A0N(\cost5[3][4] ), .A1N(n1553), .B0(n1537), .Y(n1538) );
  AOI221XL U1512 ( .A0(\cost5[5][4] ), .A1(n1556), .B0(\cost5[7][4] ), .B1(
        n1555), .C0(n1538), .Y(n1542) );
  NAND2X1 U1513 ( .A(\cost5[0][4] ), .B(n1551), .Y(n1539) );
  OAI2BB1X1 U1514 ( .A0N(\cost5[2][4] ), .A1N(n1553), .B0(n1539), .Y(n1540) );
  AOI221XL U1515 ( .A0(\cost5[4][4] ), .A1(n1556), .B0(\cost5[6][4] ), .B1(
        n1555), .C0(n1540), .Y(n1541) );
  OAI22X1 U1516 ( .A0(n1977), .A1(n1542), .B0(N207), .B1(n1541), .Y(N1684) );
  NAND2X1 U1517 ( .A(\cost5[1][5] ), .B(n1551), .Y(n1543) );
  OAI2BB1X1 U1518 ( .A0N(\cost5[3][5] ), .A1N(n1553), .B0(n1543), .Y(n1544) );
  AOI221XL U1519 ( .A0(\cost5[5][5] ), .A1(n1556), .B0(\cost5[7][5] ), .B1(
        n1555), .C0(n1544), .Y(n1548) );
  NAND2X1 U1520 ( .A(\cost5[0][5] ), .B(n1551), .Y(n1545) );
  OAI2BB1X1 U1521 ( .A0N(\cost5[2][5] ), .A1N(n1553), .B0(n1545), .Y(n1546) );
  AOI221XL U1522 ( .A0(\cost5[4][5] ), .A1(n1556), .B0(\cost5[6][5] ), .B1(
        n1555), .C0(n1546), .Y(n1547) );
  OAI22X1 U1523 ( .A0(n1977), .A1(n1548), .B0(N207), .B1(n1547), .Y(N1683) );
  NAND2X1 U1524 ( .A(\cost5[1][6] ), .B(n1551), .Y(n1549) );
  OAI2BB1X1 U1525 ( .A0N(\cost5[3][6] ), .A1N(n1553), .B0(n1549), .Y(n1550) );
  AOI221XL U1526 ( .A0(\cost5[5][6] ), .A1(n1556), .B0(\cost5[7][6] ), .B1(
        n1555), .C0(n1550), .Y(n1558) );
  NAND2X1 U1527 ( .A(\cost5[0][6] ), .B(n1551), .Y(n1552) );
  OAI2BB1X1 U1528 ( .A0N(\cost5[2][6] ), .A1N(n1553), .B0(n1552), .Y(n1554) );
  AOI221XL U1529 ( .A0(\cost5[4][6] ), .A1(n1556), .B0(\cost5[6][6] ), .B1(
        n1555), .C0(n1554), .Y(n1557) );
  OAI22X1 U1530 ( .A0(n1558), .A1(n1977), .B0(N207), .B1(n1557), .Y(N1682) );
  NOR2X1 U1531 ( .A(n1671), .B(N211), .Y(n1603) );
  NOR2X1 U1532 ( .A(n1671), .B(n1670), .Y(n1602) );
  NOR2X1 U1533 ( .A(n1670), .B(N212), .Y(n1600) );
  NOR2X1 U1534 ( .A(N211), .B(N212), .Y(n1598) );
  NAND2X1 U1535 ( .A(\cost6[1][0] ), .B(n1598), .Y(n1560) );
  OAI2BB1X1 U1536 ( .A0N(\cost6[3][0] ), .A1N(n1600), .B0(n1560), .Y(n1561) );
  AOI221XL U1537 ( .A0(\cost6[5][0] ), .A1(n1603), .B0(\cost6[7][0] ), .B1(
        n1602), .C0(n1561), .Y(n1565) );
  NAND2X1 U1538 ( .A(\cost6[0][0] ), .B(n1598), .Y(n1562) );
  OAI2BB1X1 U1539 ( .A0N(\cost6[2][0] ), .A1N(n1600), .B0(n1562), .Y(n1563) );
  AOI221XL U1540 ( .A0(\cost6[4][0] ), .A1(n1603), .B0(\cost6[6][0] ), .B1(
        n1602), .C0(n1563), .Y(n1564) );
  OAI22X1 U1541 ( .A0(n1905), .A1(n1565), .B0(N210), .B1(n1564), .Y(N1695) );
  NAND2X1 U1542 ( .A(\cost6[1][1] ), .B(n1598), .Y(n1566) );
  OAI2BB1X1 U1543 ( .A0N(\cost6[3][1] ), .A1N(n1600), .B0(n1566), .Y(n1567) );
  AOI221XL U1544 ( .A0(\cost6[5][1] ), .A1(n1603), .B0(\cost6[7][1] ), .B1(
        n1602), .C0(n1567), .Y(n1571) );
  NAND2X1 U1545 ( .A(\cost6[0][1] ), .B(n1598), .Y(n1568) );
  OAI2BB1X1 U1546 ( .A0N(\cost6[2][1] ), .A1N(n1600), .B0(n1568), .Y(n1569) );
  AOI221XL U1547 ( .A0(\cost6[4][1] ), .A1(n1603), .B0(\cost6[6][1] ), .B1(
        n1602), .C0(n1569), .Y(n1570) );
  OAI22X1 U1548 ( .A0(n1905), .A1(n1571), .B0(N210), .B1(n1570), .Y(N1694) );
  NAND2X1 U1549 ( .A(\cost6[1][2] ), .B(n1598), .Y(n1572) );
  OAI2BB1X1 U1550 ( .A0N(\cost6[3][2] ), .A1N(n1600), .B0(n1572), .Y(n1573) );
  AOI221XL U1551 ( .A0(\cost6[5][2] ), .A1(n1603), .B0(\cost6[7][2] ), .B1(
        n1602), .C0(n1573), .Y(n1577) );
  NAND2X1 U1552 ( .A(\cost6[0][2] ), .B(n1598), .Y(n1574) );
  OAI2BB1X1 U1553 ( .A0N(\cost6[2][2] ), .A1N(n1600), .B0(n1574), .Y(n1575) );
  AOI221XL U1554 ( .A0(\cost6[4][2] ), .A1(n1603), .B0(\cost6[6][2] ), .B1(
        n1602), .C0(n1575), .Y(n1576) );
  OAI22X1 U1555 ( .A0(n1905), .A1(n1577), .B0(N210), .B1(n1576), .Y(N1693) );
  NAND2X1 U1556 ( .A(\cost6[1][3] ), .B(n1598), .Y(n1578) );
  OAI2BB1X1 U1557 ( .A0N(\cost6[3][3] ), .A1N(n1600), .B0(n1578), .Y(n1579) );
  AOI221XL U1558 ( .A0(\cost6[5][3] ), .A1(n1603), .B0(\cost6[7][3] ), .B1(
        n1602), .C0(n1579), .Y(n1583) );
  NAND2X1 U1559 ( .A(\cost6[0][3] ), .B(n1598), .Y(n1580) );
  OAI2BB1X1 U1560 ( .A0N(\cost6[2][3] ), .A1N(n1600), .B0(n1580), .Y(n1581) );
  AOI221XL U1561 ( .A0(\cost6[4][3] ), .A1(n1603), .B0(\cost6[6][3] ), .B1(
        n1602), .C0(n1581), .Y(n1582) );
  OAI22X1 U1562 ( .A0(n1905), .A1(n1583), .B0(N210), .B1(n1582), .Y(N1692) );
  NAND2X1 U1563 ( .A(\cost6[1][4] ), .B(n1598), .Y(n1584) );
  OAI2BB1X1 U1564 ( .A0N(\cost6[3][4] ), .A1N(n1600), .B0(n1584), .Y(n1585) );
  AOI221XL U1565 ( .A0(\cost6[5][4] ), .A1(n1603), .B0(\cost6[7][4] ), .B1(
        n1602), .C0(n1585), .Y(n1589) );
  NAND2X1 U1566 ( .A(\cost6[0][4] ), .B(n1598), .Y(n1586) );
  OAI2BB1X1 U1567 ( .A0N(\cost6[2][4] ), .A1N(n1600), .B0(n1586), .Y(n1587) );
  AOI221XL U1568 ( .A0(\cost6[4][4] ), .A1(n1603), .B0(\cost6[6][4] ), .B1(
        n1602), .C0(n1587), .Y(n1588) );
  OAI22X1 U1569 ( .A0(n1905), .A1(n1589), .B0(N210), .B1(n1588), .Y(N1691) );
  NAND2X1 U1570 ( .A(\cost6[1][5] ), .B(n1598), .Y(n1590) );
  OAI2BB1X1 U1571 ( .A0N(\cost6[3][5] ), .A1N(n1600), .B0(n1590), .Y(n1591) );
  AOI221XL U1572 ( .A0(\cost6[5][5] ), .A1(n1603), .B0(\cost6[7][5] ), .B1(
        n1602), .C0(n1591), .Y(n1595) );
  NAND2X1 U1573 ( .A(\cost6[0][5] ), .B(n1598), .Y(n1592) );
  OAI2BB1X1 U1574 ( .A0N(\cost6[2][5] ), .A1N(n1600), .B0(n1592), .Y(n1593) );
  AOI221XL U1575 ( .A0(\cost6[4][5] ), .A1(n1603), .B0(\cost6[6][5] ), .B1(
        n1602), .C0(n1593), .Y(n1594) );
  OAI22X1 U1576 ( .A0(n1905), .A1(n1595), .B0(N210), .B1(n1594), .Y(N1690) );
  NAND2X1 U1577 ( .A(\cost6[1][6] ), .B(n1598), .Y(n1596) );
  OAI2BB1X1 U1578 ( .A0N(\cost6[3][6] ), .A1N(n1600), .B0(n1596), .Y(n1597) );
  AOI221XL U1579 ( .A0(\cost6[5][6] ), .A1(n1603), .B0(\cost6[7][6] ), .B1(
        n1602), .C0(n1597), .Y(n1605) );
  NAND2X1 U1580 ( .A(\cost6[0][6] ), .B(n1598), .Y(n1599) );
  OAI2BB1X1 U1581 ( .A0N(\cost6[2][6] ), .A1N(n1600), .B0(n1599), .Y(n1601) );
  AOI221XL U1582 ( .A0(\cost6[4][6] ), .A1(n1603), .B0(\cost6[6][6] ), .B1(
        n1602), .C0(n1601), .Y(n1604) );
  OAI22X1 U1583 ( .A0(n1605), .A1(n1905), .B0(N210), .B1(n1604), .Y(N1689) );
  NOR2X1 U1584 ( .A(n1652), .B(N214), .Y(n1649) );
  NOR2X1 U1585 ( .A(n1652), .B(n1673), .Y(n1648) );
  NOR2X1 U1586 ( .A(n1673), .B(N215), .Y(n1646) );
  NOR2X1 U1587 ( .A(N214), .B(N215), .Y(n1644) );
  NAND2X1 U1588 ( .A(\cost7[1][0] ), .B(n1644), .Y(n1606) );
  OAI2BB1X1 U1589 ( .A0N(\cost7[3][0] ), .A1N(n1646), .B0(n1606), .Y(n1607) );
  AOI221XL U1590 ( .A0(\cost7[5][0] ), .A1(n1649), .B0(\cost7[7][0] ), .B1(
        n1648), .C0(n1607), .Y(n1611) );
  NAND2X1 U1591 ( .A(\cost7[0][0] ), .B(n1644), .Y(n1608) );
  OAI2BB1X1 U1592 ( .A0N(\cost7[2][0] ), .A1N(n1646), .B0(n1608), .Y(n1609) );
  AOI221XL U1593 ( .A0(\cost7[4][0] ), .A1(n1649), .B0(\cost7[6][0] ), .B1(
        n1648), .C0(n1609), .Y(n1610) );
  OAI22X1 U1594 ( .A0(n1672), .A1(n1611), .B0(N213), .B1(n1610), .Y(N1702) );
  NAND2X1 U1595 ( .A(\cost7[1][1] ), .B(n1644), .Y(n1612) );
  OAI2BB1X1 U1596 ( .A0N(\cost7[3][1] ), .A1N(n1646), .B0(n1612), .Y(n1613) );
  AOI221XL U1597 ( .A0(\cost7[5][1] ), .A1(n1649), .B0(\cost7[7][1] ), .B1(
        n1648), .C0(n1613), .Y(n1617) );
  NAND2X1 U1598 ( .A(\cost7[0][1] ), .B(n1644), .Y(n1614) );
  OAI2BB1X1 U1599 ( .A0N(\cost7[2][1] ), .A1N(n1646), .B0(n1614), .Y(n1615) );
  AOI221XL U1600 ( .A0(\cost7[4][1] ), .A1(n1649), .B0(\cost7[6][1] ), .B1(
        n1648), .C0(n1615), .Y(n1616) );
  OAI22X1 U1601 ( .A0(n1672), .A1(n1617), .B0(N213), .B1(n1616), .Y(N1701) );
  NAND2X1 U1602 ( .A(\cost7[1][2] ), .B(n1644), .Y(n1618) );
  OAI2BB1X1 U1603 ( .A0N(\cost7[3][2] ), .A1N(n1646), .B0(n1618), .Y(n1619) );
  AOI221XL U1604 ( .A0(\cost7[5][2] ), .A1(n1649), .B0(\cost7[7][2] ), .B1(
        n1648), .C0(n1619), .Y(n1623) );
  NAND2X1 U1605 ( .A(\cost7[0][2] ), .B(n1644), .Y(n1620) );
  OAI2BB1X1 U1606 ( .A0N(\cost7[2][2] ), .A1N(n1646), .B0(n1620), .Y(n1621) );
  AOI221XL U1607 ( .A0(\cost7[4][2] ), .A1(n1649), .B0(\cost7[6][2] ), .B1(
        n1648), .C0(n1621), .Y(n1622) );
  OAI22X1 U1608 ( .A0(n1672), .A1(n1623), .B0(N213), .B1(n1622), .Y(N1700) );
  NAND2X1 U1609 ( .A(\cost7[1][3] ), .B(n1644), .Y(n1624) );
  OAI2BB1X1 U1610 ( .A0N(\cost7[3][3] ), .A1N(n1646), .B0(n1624), .Y(n1625) );
  AOI221XL U1611 ( .A0(\cost7[5][3] ), .A1(n1649), .B0(\cost7[7][3] ), .B1(
        n1648), .C0(n1625), .Y(n1629) );
  NAND2X1 U1612 ( .A(\cost7[0][3] ), .B(n1644), .Y(n1626) );
  OAI2BB1X1 U1613 ( .A0N(\cost7[2][3] ), .A1N(n1646), .B0(n1626), .Y(n1627) );
  AOI221XL U1614 ( .A0(\cost7[4][3] ), .A1(n1649), .B0(\cost7[6][3] ), .B1(
        n1648), .C0(n1627), .Y(n1628) );
  OAI22X1 U1615 ( .A0(n1672), .A1(n1629), .B0(N213), .B1(n1628), .Y(N1699) );
  NAND2X1 U1616 ( .A(\cost7[1][4] ), .B(n1644), .Y(n1630) );
  OAI2BB1X1 U1617 ( .A0N(\cost7[3][4] ), .A1N(n1646), .B0(n1630), .Y(n1631) );
  AOI221XL U1618 ( .A0(\cost7[5][4] ), .A1(n1649), .B0(\cost7[7][4] ), .B1(
        n1648), .C0(n1631), .Y(n1635) );
  NAND2X1 U1619 ( .A(\cost7[0][4] ), .B(n1644), .Y(n1632) );
  OAI2BB1X1 U1620 ( .A0N(\cost7[2][4] ), .A1N(n1646), .B0(n1632), .Y(n1633) );
  AOI221XL U1621 ( .A0(\cost7[4][4] ), .A1(n1649), .B0(\cost7[6][4] ), .B1(
        n1648), .C0(n1633), .Y(n1634) );
  OAI22X1 U1622 ( .A0(n1672), .A1(n1635), .B0(N213), .B1(n1634), .Y(N1698) );
  NAND2X1 U1623 ( .A(\cost7[1][5] ), .B(n1644), .Y(n1636) );
  OAI2BB1X1 U1624 ( .A0N(\cost7[3][5] ), .A1N(n1646), .B0(n1636), .Y(n1637) );
  AOI221XL U1625 ( .A0(\cost7[5][5] ), .A1(n1649), .B0(\cost7[7][5] ), .B1(
        n1648), .C0(n1637), .Y(n1641) );
  NAND2X1 U1626 ( .A(\cost7[0][5] ), .B(n1644), .Y(n1638) );
  OAI2BB1X1 U1627 ( .A0N(\cost7[2][5] ), .A1N(n1646), .B0(n1638), .Y(n1639) );
  AOI221XL U1628 ( .A0(\cost7[4][5] ), .A1(n1649), .B0(\cost7[6][5] ), .B1(
        n1648), .C0(n1639), .Y(n1640) );
  OAI22X1 U1629 ( .A0(n1672), .A1(n1641), .B0(N213), .B1(n1640), .Y(N1697) );
  NAND2X1 U1630 ( .A(\cost7[1][6] ), .B(n1644), .Y(n1642) );
  OAI2BB1X1 U1631 ( .A0N(\cost7[3][6] ), .A1N(n1646), .B0(n1642), .Y(n1643) );
  AOI221XL U1632 ( .A0(\cost7[5][6] ), .A1(n1649), .B0(\cost7[7][6] ), .B1(
        n1648), .C0(n1643), .Y(n1651) );
  NAND2X1 U1633 ( .A(\cost7[0][6] ), .B(n1644), .Y(n1645) );
  OAI2BB1X1 U1634 ( .A0N(\cost7[2][6] ), .A1N(n1646), .B0(n1645), .Y(n1647) );
  AOI221XL U1635 ( .A0(\cost7[4][6] ), .A1(n1649), .B0(\cost7[6][6] ), .B1(
        n1648), .C0(n1647), .Y(n1650) );
  OAI22X1 U1636 ( .A0(n1651), .A1(n1672), .B0(N213), .B1(n1650), .Y(N1696) );
  OAI31X1 U1637 ( .A0(n1653), .A1(state[3]), .A2(state[2]), .B0(n1654), .Y(
        nx_state[2]) );
  NOR2X1 U1638 ( .A(n1655), .B(n1656), .Y(n1654) );
  NOR3X1 U1639 ( .A(n1657), .B(last), .C(n1658), .Y(n1656) );
  NAND4BBX1 U1640 ( .AN(n1659), .BN(n1655), .C(n1660), .D(n1661), .Y(
        nx_state[1]) );
  NAND4X1 U1641 ( .A(n1662), .B(n1663), .C(n1664), .D(n1665), .Y(n1660) );
  NOR4X1 U1642 ( .A(n1666), .B(n1667), .C(n1668), .D(n1669), .Y(n1665) );
  NAND4X1 U1643 ( .A(n1670), .B(n1671), .C(n1672), .D(n1673), .Y(n1669) );
  OR4X1 U1644 ( .A(N215), .B(n146), .C(n147), .D(\sort[0][3] ), .Y(n1668) );
  NAND4X1 U1645 ( .A(n1674), .B(n1675), .C(n1676), .D(n1677), .Y(n1667) );
  NAND4X1 U1646 ( .A(n1678), .B(n1679), .C(n1680), .D(n1658), .Y(n1666) );
  NOR2X1 U1647 ( .A(n1681), .B(n1682), .Y(n1664) );
  NAND4X1 U1648 ( .A(N208), .B(N205), .C(N204), .D(N203), .Y(n1682) );
  NAND4X1 U1649 ( .A(N200), .B(N197), .C(N196), .D(N194), .Y(n1681) );
  NOR4X1 U1650 ( .A(N209), .B(N206), .C(N202), .D(N201), .Y(n1663) );
  NOR4X1 U1651 ( .A(N199), .B(n1683), .C(n1684), .D(n1685), .Y(n1662) );
  CLKINVX1 U1652 ( .A(n1686), .Y(nx_state[0]) );
  AOI221XL U1653 ( .A0(n1687), .A1(n1655), .B0(n1658), .B1(n1688), .C0(n1689), 
        .Y(n1686) );
  NOR2X1 U1654 ( .A(n1690), .B(state[0]), .Y(n1655) );
  MXI2X1 U1655 ( .A(n1691), .B(n1692), .S0(match_count[2]), .Y(n2273) );
  NAND2X1 U1656 ( .A(match_count[1]), .B(n1693), .Y(n1691) );
  OAI2BB2X1 U1657 ( .B0(n1694), .B1(n1695), .A0N(\cost3[7][2] ), .A1N(n1696), 
        .Y(n999) );
  OAI2BB2X1 U1658 ( .B0(n1694), .B1(n1697), .A0N(\cost3[7][3] ), .A1N(n1696), 
        .Y(n998) );
  OAI2BB2X1 U1659 ( .B0(n1694), .B1(n1698), .A0N(\cost3[7][4] ), .A1N(n1696), 
        .Y(n997) );
  OAI2BB2X1 U1660 ( .B0(n1694), .B1(n1699), .A0N(\cost3[7][5] ), .A1N(n1696), 
        .Y(n996) );
  OAI2BB2X1 U1661 ( .B0(n1694), .B1(n1700), .A0N(\cost3[7][6] ), .A1N(n1696), 
        .Y(n995) );
  OAI2BB2X1 U1662 ( .B0(n1701), .B1(n1702), .A0N(\cost3[6][0] ), .A1N(n1703), 
        .Y(n994) );
  OAI2BB2X1 U1663 ( .B0(n1701), .B1(n1704), .A0N(\cost3[6][1] ), .A1N(n1703), 
        .Y(n993) );
  OAI2BB2X1 U1664 ( .B0(n1701), .B1(n1695), .A0N(\cost3[6][2] ), .A1N(n1703), 
        .Y(n992) );
  OAI2BB2X1 U1665 ( .B0(n1701), .B1(n1697), .A0N(\cost3[6][3] ), .A1N(n1703), 
        .Y(n991) );
  OAI2BB2X1 U1666 ( .B0(n1701), .B1(n1698), .A0N(\cost3[6][4] ), .A1N(n1703), 
        .Y(n990) );
  OAI2BB2X1 U1667 ( .B0(n1701), .B1(n1699), .A0N(\cost3[6][5] ), .A1N(n1703), 
        .Y(n989) );
  OAI2BB2X1 U1668 ( .B0(n1701), .B1(n1700), .A0N(\cost3[6][6] ), .A1N(n1703), 
        .Y(n988) );
  NAND2X1 U1669 ( .A(n1705), .B(n1706), .Y(n1703) );
  OAI2BB2X1 U1670 ( .B0(n1707), .B1(n1702), .A0N(\cost3[5][0] ), .A1N(n1708), 
        .Y(n987) );
  OAI2BB2X1 U1671 ( .B0(n1707), .B1(n1704), .A0N(\cost3[5][1] ), .A1N(n1708), 
        .Y(n986) );
  OAI2BB2X1 U1672 ( .B0(n1707), .B1(n1695), .A0N(\cost3[5][2] ), .A1N(n1708), 
        .Y(n985) );
  OAI2BB2X1 U1673 ( .B0(n1707), .B1(n1697), .A0N(\cost3[5][3] ), .A1N(n1708), 
        .Y(n984) );
  OAI2BB2X1 U1674 ( .B0(n1707), .B1(n1698), .A0N(\cost3[5][4] ), .A1N(n1708), 
        .Y(n983) );
  OAI2BB2X1 U1675 ( .B0(n1707), .B1(n1699), .A0N(\cost3[5][5] ), .A1N(n1708), 
        .Y(n982) );
  OAI2BB2X1 U1676 ( .B0(n1707), .B1(n1700), .A0N(\cost3[5][6] ), .A1N(n1708), 
        .Y(n981) );
  NAND2X1 U1677 ( .A(n1705), .B(n1709), .Y(n1708) );
  OAI2BB2X1 U1678 ( .B0(n1710), .B1(n1702), .A0N(\cost3[4][0] ), .A1N(n1711), 
        .Y(n980) );
  OAI2BB2X1 U1679 ( .B0(n1710), .B1(n1704), .A0N(\cost3[4][1] ), .A1N(n1711), 
        .Y(n979) );
  OAI2BB2X1 U1680 ( .B0(n1710), .B1(n1695), .A0N(\cost3[4][2] ), .A1N(n1711), 
        .Y(n978) );
  OAI2BB2X1 U1681 ( .B0(n1710), .B1(n1697), .A0N(\cost3[4][3] ), .A1N(n1711), 
        .Y(n977) );
  OAI2BB2X1 U1682 ( .B0(n1710), .B1(n1698), .A0N(\cost3[4][4] ), .A1N(n1711), 
        .Y(n976) );
  OAI2BB2X1 U1683 ( .B0(n1710), .B1(n1699), .A0N(\cost3[4][5] ), .A1N(n1711), 
        .Y(n975) );
  OAI2BB2X1 U1684 ( .B0(n1710), .B1(n1700), .A0N(\cost3[4][6] ), .A1N(n1711), 
        .Y(n974) );
  NAND2X1 U1685 ( .A(n1705), .B(n1712), .Y(n1711) );
  OAI2BB2X1 U1686 ( .B0(n1713), .B1(n1702), .A0N(\cost3[3][0] ), .A1N(n1714), 
        .Y(n973) );
  OAI2BB2X1 U1687 ( .B0(n1713), .B1(n1704), .A0N(\cost3[3][1] ), .A1N(n1714), 
        .Y(n972) );
  OAI2BB2X1 U1688 ( .B0(n1713), .B1(n1695), .A0N(\cost3[3][2] ), .A1N(n1714), 
        .Y(n971) );
  OAI2BB2X1 U1689 ( .B0(n1713), .B1(n1697), .A0N(\cost3[3][3] ), .A1N(n1714), 
        .Y(n970) );
  OAI2BB2X1 U1690 ( .B0(n1713), .B1(n1698), .A0N(\cost3[3][4] ), .A1N(n1714), 
        .Y(n969) );
  OAI2BB2X1 U1691 ( .B0(n1713), .B1(n1699), .A0N(\cost3[3][5] ), .A1N(n1714), 
        .Y(n968) );
  OAI2BB2X1 U1692 ( .B0(n1713), .B1(n1700), .A0N(\cost3[3][6] ), .A1N(n1714), 
        .Y(n967) );
  NAND2X1 U1693 ( .A(n1705), .B(n1715), .Y(n1714) );
  OAI2BB2X1 U1694 ( .B0(n1716), .B1(n1702), .A0N(\cost3[2][0] ), .A1N(n1717), 
        .Y(n966) );
  OAI2BB2X1 U1695 ( .B0(n1716), .B1(n1704), .A0N(\cost3[2][1] ), .A1N(n1717), 
        .Y(n965) );
  OAI2BB2X1 U1696 ( .B0(n1716), .B1(n1695), .A0N(\cost3[2][2] ), .A1N(n1717), 
        .Y(n964) );
  OAI2BB2X1 U1697 ( .B0(n1716), .B1(n1697), .A0N(\cost3[2][3] ), .A1N(n1717), 
        .Y(n963) );
  OAI2BB2X1 U1698 ( .B0(n1716), .B1(n1698), .A0N(\cost3[2][4] ), .A1N(n1717), 
        .Y(n962) );
  OAI2BB2X1 U1699 ( .B0(n1716), .B1(n1699), .A0N(\cost3[2][5] ), .A1N(n1717), 
        .Y(n961) );
  OAI2BB2X1 U1700 ( .B0(n1716), .B1(n1700), .A0N(\cost3[2][6] ), .A1N(n1717), 
        .Y(n960) );
  NAND2X1 U1701 ( .A(n1705), .B(n1718), .Y(n1717) );
  OAI2BB2X1 U1702 ( .B0(n1719), .B1(n1702), .A0N(\cost3[1][0] ), .A1N(n1720), 
        .Y(n959) );
  OAI2BB2X1 U1703 ( .B0(n1719), .B1(n1704), .A0N(\cost3[1][1] ), .A1N(n1720), 
        .Y(n958) );
  OAI2BB2X1 U1704 ( .B0(n1719), .B1(n1695), .A0N(\cost3[1][2] ), .A1N(n1720), 
        .Y(n957) );
  OAI2BB2X1 U1705 ( .B0(n1719), .B1(n1697), .A0N(\cost3[1][3] ), .A1N(n1720), 
        .Y(n956) );
  OAI2BB2X1 U1706 ( .B0(n1719), .B1(n1698), .A0N(\cost3[1][4] ), .A1N(n1720), 
        .Y(n955) );
  OAI2BB2X1 U1707 ( .B0(n1719), .B1(n1699), .A0N(\cost3[1][5] ), .A1N(n1720), 
        .Y(n954) );
  OAI2BB2X1 U1708 ( .B0(n1719), .B1(n1700), .A0N(\cost3[1][6] ), .A1N(n1720), 
        .Y(n953) );
  NAND2X1 U1709 ( .A(n1705), .B(n1721), .Y(n1720) );
  OAI2BB2X1 U1710 ( .B0(n1722), .B1(n1702), .A0N(\cost3[0][0] ), .A1N(n1723), 
        .Y(n952) );
  OAI2BB2X1 U1711 ( .B0(n1722), .B1(n1704), .A0N(\cost3[0][1] ), .A1N(n1723), 
        .Y(n951) );
  OAI2BB2X1 U1712 ( .B0(n1722), .B1(n1695), .A0N(\cost3[0][2] ), .A1N(n1723), 
        .Y(n950) );
  NAND2X1 U1713 ( .A(n1724), .B(n1725), .Y(n1695) );
  OAI2BB2X1 U1714 ( .B0(n1722), .B1(n1697), .A0N(\cost3[0][3] ), .A1N(n1723), 
        .Y(n949) );
  NAND2X1 U1715 ( .A(n1726), .B(n1725), .Y(n1697) );
  OAI2BB2X1 U1716 ( .B0(n1722), .B1(n1698), .A0N(\cost3[0][4] ), .A1N(n1723), 
        .Y(n948) );
  NAND2X1 U1717 ( .A(n1727), .B(n1725), .Y(n1698) );
  OAI2BB2X1 U1718 ( .B0(n1722), .B1(n1699), .A0N(\cost3[0][5] ), .A1N(n1723), 
        .Y(n947) );
  NAND2X1 U1719 ( .A(n1728), .B(n1725), .Y(n1699) );
  OAI2BB2X1 U1720 ( .B0(n1722), .B1(n1729), .A0N(\cost4[0][6] ), .A1N(n1730), 
        .Y(n946) );
  OAI2BB2X1 U1721 ( .B0(n1694), .B1(n1731), .A0N(\cost4[7][0] ), .A1N(n1732), 
        .Y(n945) );
  OAI2BB2X1 U1722 ( .B0(n1694), .B1(n1733), .A0N(\cost4[7][1] ), .A1N(n1732), 
        .Y(n944) );
  OAI2BB2X1 U1723 ( .B0(n1694), .B1(n1734), .A0N(\cost4[7][2] ), .A1N(n1732), 
        .Y(n943) );
  OAI2BB2X1 U1724 ( .B0(n1694), .B1(n1735), .A0N(\cost4[7][3] ), .A1N(n1732), 
        .Y(n942) );
  OAI2BB2X1 U1725 ( .B0(n1694), .B1(n1736), .A0N(\cost4[7][4] ), .A1N(n1732), 
        .Y(n941) );
  OAI2BB2X1 U1726 ( .B0(n1694), .B1(n1737), .A0N(\cost4[7][5] ), .A1N(n1732), 
        .Y(n940) );
  OAI2BB2X1 U1727 ( .B0(n1694), .B1(n1729), .A0N(\cost4[7][6] ), .A1N(n1732), 
        .Y(n939) );
  NAND2X1 U1728 ( .A(n1738), .B(n1739), .Y(n1732) );
  OAI2BB2X1 U1729 ( .B0(n1701), .B1(n1731), .A0N(\cost4[6][0] ), .A1N(n1740), 
        .Y(n938) );
  OAI2BB2X1 U1730 ( .B0(n1701), .B1(n1733), .A0N(\cost4[6][1] ), .A1N(n1740), 
        .Y(n937) );
  OAI2BB2X1 U1731 ( .B0(n1701), .B1(n1734), .A0N(\cost4[6][2] ), .A1N(n1740), 
        .Y(n936) );
  OAI2BB2X1 U1732 ( .B0(n1701), .B1(n1735), .A0N(\cost4[6][3] ), .A1N(n1740), 
        .Y(n935) );
  OAI2BB2X1 U1733 ( .B0(n1701), .B1(n1736), .A0N(\cost4[6][4] ), .A1N(n1740), 
        .Y(n934) );
  OAI2BB2X1 U1734 ( .B0(n1701), .B1(n1737), .A0N(\cost4[6][5] ), .A1N(n1740), 
        .Y(n933) );
  OAI2BB2X1 U1735 ( .B0(n1701), .B1(n1729), .A0N(\cost4[6][6] ), .A1N(n1740), 
        .Y(n932) );
  NAND2X1 U1736 ( .A(n1706), .B(n1739), .Y(n1740) );
  OAI2BB2X1 U1737 ( .B0(n1707), .B1(n1731), .A0N(\cost4[5][0] ), .A1N(n1741), 
        .Y(n931) );
  OAI2BB2X1 U1738 ( .B0(n1707), .B1(n1733), .A0N(\cost4[5][1] ), .A1N(n1741), 
        .Y(n930) );
  OAI2BB2X1 U1739 ( .B0(n1707), .B1(n1734), .A0N(\cost4[5][2] ), .A1N(n1741), 
        .Y(n929) );
  OAI2BB2X1 U1740 ( .B0(n1707), .B1(n1735), .A0N(\cost4[5][3] ), .A1N(n1741), 
        .Y(n928) );
  OAI2BB2X1 U1741 ( .B0(n1707), .B1(n1736), .A0N(\cost4[5][4] ), .A1N(n1741), 
        .Y(n927) );
  OAI2BB2X1 U1742 ( .B0(n1707), .B1(n1737), .A0N(\cost4[5][5] ), .A1N(n1741), 
        .Y(n926) );
  OAI2BB2X1 U1743 ( .B0(n1707), .B1(n1729), .A0N(\cost4[5][6] ), .A1N(n1741), 
        .Y(n925) );
  NAND2X1 U1744 ( .A(n1709), .B(n1739), .Y(n1741) );
  OAI2BB2X1 U1745 ( .B0(n1710), .B1(n1731), .A0N(\cost4[4][0] ), .A1N(n1742), 
        .Y(n924) );
  OAI2BB2X1 U1746 ( .B0(n1710), .B1(n1733), .A0N(\cost4[4][1] ), .A1N(n1742), 
        .Y(n923) );
  OAI2BB2X1 U1747 ( .B0(n1710), .B1(n1734), .A0N(\cost4[4][2] ), .A1N(n1742), 
        .Y(n922) );
  OAI2BB2X1 U1748 ( .B0(n1710), .B1(n1735), .A0N(\cost4[4][3] ), .A1N(n1742), 
        .Y(n921) );
  OAI2BB2X1 U1749 ( .B0(n1710), .B1(n1736), .A0N(\cost4[4][4] ), .A1N(n1742), 
        .Y(n920) );
  OAI2BB2X1 U1750 ( .B0(n1710), .B1(n1737), .A0N(\cost4[4][5] ), .A1N(n1742), 
        .Y(n919) );
  OAI2BB2X1 U1751 ( .B0(n1710), .B1(n1729), .A0N(\cost4[4][6] ), .A1N(n1742), 
        .Y(n918) );
  NAND2X1 U1752 ( .A(n1712), .B(n1739), .Y(n1742) );
  OAI2BB2X1 U1753 ( .B0(n1713), .B1(n1731), .A0N(\cost4[3][0] ), .A1N(n1743), 
        .Y(n917) );
  OAI2BB2X1 U1754 ( .B0(n1713), .B1(n1733), .A0N(\cost4[3][1] ), .A1N(n1743), 
        .Y(n916) );
  OAI2BB2X1 U1755 ( .B0(n1713), .B1(n1734), .A0N(\cost4[3][2] ), .A1N(n1743), 
        .Y(n915) );
  OAI2BB2X1 U1756 ( .B0(n1713), .B1(n1735), .A0N(\cost4[3][3] ), .A1N(n1743), 
        .Y(n914) );
  OAI2BB2X1 U1757 ( .B0(n1713), .B1(n1736), .A0N(\cost4[3][4] ), .A1N(n1743), 
        .Y(n913) );
  OAI2BB2X1 U1758 ( .B0(n1713), .B1(n1737), .A0N(\cost4[3][5] ), .A1N(n1743), 
        .Y(n912) );
  OAI2BB2X1 U1759 ( .B0(n1713), .B1(n1729), .A0N(\cost4[3][6] ), .A1N(n1743), 
        .Y(n911) );
  NAND2X1 U1760 ( .A(n1715), .B(n1739), .Y(n1743) );
  OAI2BB2X1 U1761 ( .B0(n1716), .B1(n1731), .A0N(\cost4[2][0] ), .A1N(n1744), 
        .Y(n910) );
  OAI2BB2X1 U1762 ( .B0(n1716), .B1(n1733), .A0N(\cost4[2][1] ), .A1N(n1744), 
        .Y(n909) );
  OAI2BB2X1 U1763 ( .B0(n1716), .B1(n1734), .A0N(\cost4[2][2] ), .A1N(n1744), 
        .Y(n908) );
  OAI2BB2X1 U1764 ( .B0(n1716), .B1(n1735), .A0N(\cost4[2][3] ), .A1N(n1744), 
        .Y(n907) );
  OAI2BB2X1 U1765 ( .B0(n1716), .B1(n1736), .A0N(\cost4[2][4] ), .A1N(n1744), 
        .Y(n906) );
  OAI2BB2X1 U1766 ( .B0(n1716), .B1(n1737), .A0N(\cost4[2][5] ), .A1N(n1744), 
        .Y(n905) );
  OAI2BB2X1 U1767 ( .B0(n1716), .B1(n1729), .A0N(\cost4[2][6] ), .A1N(n1744), 
        .Y(n904) );
  NAND2X1 U1768 ( .A(n1718), .B(n1739), .Y(n1744) );
  OAI2BB2X1 U1769 ( .B0(n1719), .B1(n1731), .A0N(\cost4[1][0] ), .A1N(n1745), 
        .Y(n903) );
  OAI2BB2X1 U1770 ( .B0(n1719), .B1(n1733), .A0N(\cost4[1][1] ), .A1N(n1745), 
        .Y(n902) );
  OAI2BB2X1 U1771 ( .B0(n1719), .B1(n1734), .A0N(\cost4[1][2] ), .A1N(n1745), 
        .Y(n901) );
  OAI2BB2X1 U1772 ( .B0(n1719), .B1(n1735), .A0N(\cost4[1][3] ), .A1N(n1745), 
        .Y(n900) );
  OAI2BB2X1 U1773 ( .B0(n1719), .B1(n1736), .A0N(\cost4[1][4] ), .A1N(n1745), 
        .Y(n899) );
  OAI2BB2X1 U1774 ( .B0(n1719), .B1(n1737), .A0N(\cost4[1][5] ), .A1N(n1745), 
        .Y(n898) );
  OAI2BB2X1 U1775 ( .B0(n1719), .B1(n1729), .A0N(\cost4[1][6] ), .A1N(n1745), 
        .Y(n897) );
  NAND2X1 U1776 ( .A(n1721), .B(n1739), .Y(n1745) );
  NAND2X1 U1777 ( .A(n1746), .B(n1747), .Y(n1729) );
  OAI2BB2X1 U1778 ( .B0(n1722), .B1(n1731), .A0N(\cost4[0][0] ), .A1N(n1730), 
        .Y(n896) );
  NAND2X1 U1779 ( .A(n1746), .B(n1748), .Y(n1731) );
  OAI2BB2X1 U1780 ( .B0(n1722), .B1(n1733), .A0N(\cost4[0][1] ), .A1N(n1730), 
        .Y(n895) );
  NAND2X1 U1781 ( .A(n1746), .B(n1749), .Y(n1733) );
  OAI2BB2X1 U1782 ( .B0(n1722), .B1(n1734), .A0N(\cost4[0][2] ), .A1N(n1730), 
        .Y(n894) );
  NAND2X1 U1783 ( .A(n1746), .B(n1724), .Y(n1734) );
  OAI2BB2X1 U1784 ( .B0(n1722), .B1(n1735), .A0N(\cost4[0][3] ), .A1N(n1730), 
        .Y(n893) );
  NAND2X1 U1785 ( .A(n1746), .B(n1726), .Y(n1735) );
  OAI2BB2X1 U1786 ( .B0(n1722), .B1(n1736), .A0N(\cost4[0][4] ), .A1N(n1730), 
        .Y(n892) );
  NAND2X1 U1787 ( .A(n1746), .B(n1727), .Y(n1736) );
  OAI2BB2X1 U1788 ( .B0(n1722), .B1(n1737), .A0N(\cost4[0][5] ), .A1N(n1730), 
        .Y(n891) );
  NAND2X1 U1789 ( .A(n1750), .B(n1739), .Y(n1730) );
  OAI2BB1X1 U1790 ( .A0N(n1751), .A1N(n1746), .B0(n1752), .Y(n1739) );
  NAND2X1 U1791 ( .A(n1746), .B(n1728), .Y(n1737) );
  NOR2X1 U1792 ( .A(n1753), .B(W[0]), .Y(n1746) );
  OAI2BB2X1 U1793 ( .B0(n1722), .B1(n1754), .A0N(\cost5[0][6] ), .A1N(n1755), 
        .Y(n890) );
  OAI2BB2X1 U1794 ( .B0(n1694), .B1(n1756), .A0N(\cost5[7][0] ), .A1N(n1757), 
        .Y(n889) );
  OAI2BB2X1 U1795 ( .B0(n1694), .B1(n1758), .A0N(\cost5[7][1] ), .A1N(n1757), 
        .Y(n888) );
  OAI2BB2X1 U1796 ( .B0(n1694), .B1(n1759), .A0N(\cost5[7][2] ), .A1N(n1757), 
        .Y(n887) );
  OAI2BB2X1 U1797 ( .B0(n1694), .B1(n1760), .A0N(\cost5[7][3] ), .A1N(n1757), 
        .Y(n886) );
  OAI2BB2X1 U1798 ( .B0(n1694), .B1(n1761), .A0N(\cost5[7][4] ), .A1N(n1757), 
        .Y(n885) );
  OAI2BB2X1 U1799 ( .B0(n1694), .B1(n1762), .A0N(\cost5[7][5] ), .A1N(n1757), 
        .Y(n884) );
  OAI2BB2X1 U1800 ( .B0(n1694), .B1(n1754), .A0N(\cost5[7][6] ), .A1N(n1757), 
        .Y(n883) );
  NAND2X1 U1801 ( .A(n1738), .B(n1763), .Y(n1757) );
  OAI2BB2X1 U1802 ( .B0(n1701), .B1(n1756), .A0N(\cost5[6][0] ), .A1N(n1764), 
        .Y(n882) );
  OAI2BB2X1 U1803 ( .B0(n1701), .B1(n1758), .A0N(\cost5[6][1] ), .A1N(n1764), 
        .Y(n881) );
  OAI2BB2X1 U1804 ( .B0(n1701), .B1(n1759), .A0N(\cost5[6][2] ), .A1N(n1764), 
        .Y(n880) );
  OAI2BB2X1 U1805 ( .B0(n1701), .B1(n1760), .A0N(\cost5[6][3] ), .A1N(n1764), 
        .Y(n879) );
  OAI2BB2X1 U1806 ( .B0(n1701), .B1(n1761), .A0N(\cost5[6][4] ), .A1N(n1764), 
        .Y(n878) );
  OAI2BB2X1 U1807 ( .B0(n1701), .B1(n1762), .A0N(\cost5[6][5] ), .A1N(n1764), 
        .Y(n877) );
  OAI2BB2X1 U1808 ( .B0(n1701), .B1(n1754), .A0N(\cost5[6][6] ), .A1N(n1764), 
        .Y(n876) );
  NAND2X1 U1809 ( .A(n1706), .B(n1763), .Y(n1764) );
  OAI2BB2X1 U1810 ( .B0(n1707), .B1(n1756), .A0N(\cost5[5][0] ), .A1N(n1765), 
        .Y(n875) );
  OAI2BB2X1 U1811 ( .B0(n1707), .B1(n1758), .A0N(\cost5[5][1] ), .A1N(n1765), 
        .Y(n874) );
  OAI2BB2X1 U1812 ( .B0(n1707), .B1(n1759), .A0N(\cost5[5][2] ), .A1N(n1765), 
        .Y(n873) );
  OAI2BB2X1 U1813 ( .B0(n1707), .B1(n1760), .A0N(\cost5[5][3] ), .A1N(n1765), 
        .Y(n872) );
  OAI2BB2X1 U1814 ( .B0(n1707), .B1(n1761), .A0N(\cost5[5][4] ), .A1N(n1765), 
        .Y(n871) );
  OAI2BB2X1 U1815 ( .B0(n1707), .B1(n1762), .A0N(\cost5[5][5] ), .A1N(n1765), 
        .Y(n870) );
  OAI2BB2X1 U1816 ( .B0(n1707), .B1(n1754), .A0N(\cost5[5][6] ), .A1N(n1765), 
        .Y(n869) );
  NAND2X1 U1817 ( .A(n1709), .B(n1763), .Y(n1765) );
  OAI2BB2X1 U1818 ( .B0(n1710), .B1(n1756), .A0N(\cost5[4][0] ), .A1N(n1766), 
        .Y(n868) );
  OAI2BB2X1 U1819 ( .B0(n1710), .B1(n1758), .A0N(\cost5[4][1] ), .A1N(n1766), 
        .Y(n867) );
  OAI2BB2X1 U1820 ( .B0(n1710), .B1(n1759), .A0N(\cost5[4][2] ), .A1N(n1766), 
        .Y(n866) );
  OAI2BB2X1 U1821 ( .B0(n1710), .B1(n1760), .A0N(\cost5[4][3] ), .A1N(n1766), 
        .Y(n865) );
  OAI2BB2X1 U1822 ( .B0(n1710), .B1(n1761), .A0N(\cost5[4][4] ), .A1N(n1766), 
        .Y(n864) );
  OAI2BB2X1 U1823 ( .B0(n1710), .B1(n1762), .A0N(\cost5[4][5] ), .A1N(n1766), 
        .Y(n863) );
  OAI2BB2X1 U1824 ( .B0(n1710), .B1(n1754), .A0N(\cost5[4][6] ), .A1N(n1766), 
        .Y(n862) );
  NAND2X1 U1825 ( .A(n1712), .B(n1763), .Y(n1766) );
  OAI2BB2X1 U1826 ( .B0(n1713), .B1(n1756), .A0N(\cost5[3][0] ), .A1N(n1767), 
        .Y(n861) );
  OAI2BB2X1 U1827 ( .B0(n1713), .B1(n1758), .A0N(\cost5[3][1] ), .A1N(n1767), 
        .Y(n860) );
  OAI2BB2X1 U1828 ( .B0(n1713), .B1(n1759), .A0N(\cost5[3][2] ), .A1N(n1767), 
        .Y(n859) );
  OAI2BB2X1 U1829 ( .B0(n1713), .B1(n1760), .A0N(\cost5[3][3] ), .A1N(n1767), 
        .Y(n858) );
  OAI2BB2X1 U1830 ( .B0(n1713), .B1(n1761), .A0N(\cost5[3][4] ), .A1N(n1767), 
        .Y(n857) );
  OAI2BB2X1 U1831 ( .B0(n1713), .B1(n1762), .A0N(\cost5[3][5] ), .A1N(n1767), 
        .Y(n856) );
  OAI2BB2X1 U1832 ( .B0(n1713), .B1(n1754), .A0N(\cost5[3][6] ), .A1N(n1767), 
        .Y(n855) );
  NAND2X1 U1833 ( .A(n1715), .B(n1763), .Y(n1767) );
  OAI2BB2X1 U1834 ( .B0(n1716), .B1(n1756), .A0N(\cost5[2][0] ), .A1N(n1768), 
        .Y(n854) );
  OAI2BB2X1 U1835 ( .B0(n1716), .B1(n1758), .A0N(\cost5[2][1] ), .A1N(n1768), 
        .Y(n853) );
  OAI2BB2X1 U1836 ( .B0(n1716), .B1(n1759), .A0N(\cost5[2][2] ), .A1N(n1768), 
        .Y(n852) );
  OAI2BB2X1 U1837 ( .B0(n1716), .B1(n1760), .A0N(\cost5[2][3] ), .A1N(n1768), 
        .Y(n851) );
  OAI2BB2X1 U1838 ( .B0(n1716), .B1(n1761), .A0N(\cost5[2][4] ), .A1N(n1768), 
        .Y(n850) );
  OAI2BB2X1 U1839 ( .B0(n1716), .B1(n1762), .A0N(\cost5[2][5] ), .A1N(n1768), 
        .Y(n849) );
  OAI2BB2X1 U1840 ( .B0(n1716), .B1(n1754), .A0N(\cost5[2][6] ), .A1N(n1768), 
        .Y(n848) );
  NAND2X1 U1841 ( .A(n1718), .B(n1763), .Y(n1768) );
  OAI2BB2X1 U1842 ( .B0(n1719), .B1(n1756), .A0N(\cost5[1][0] ), .A1N(n1769), 
        .Y(n847) );
  OAI2BB2X1 U1843 ( .B0(n1719), .B1(n1758), .A0N(\cost5[1][1] ), .A1N(n1769), 
        .Y(n846) );
  OAI2BB2X1 U1844 ( .B0(n1719), .B1(n1759), .A0N(\cost5[1][2] ), .A1N(n1769), 
        .Y(n845) );
  OAI2BB2X1 U1845 ( .B0(n1719), .B1(n1760), .A0N(\cost5[1][3] ), .A1N(n1769), 
        .Y(n844) );
  OAI2BB2X1 U1846 ( .B0(n1719), .B1(n1761), .A0N(\cost5[1][4] ), .A1N(n1769), 
        .Y(n843) );
  OAI2BB2X1 U1847 ( .B0(n1719), .B1(n1762), .A0N(\cost5[1][5] ), .A1N(n1769), 
        .Y(n842) );
  OAI2BB2X1 U1848 ( .B0(n1719), .B1(n1754), .A0N(\cost5[1][6] ), .A1N(n1769), 
        .Y(n841) );
  NAND2X1 U1849 ( .A(n1721), .B(n1763), .Y(n1769) );
  NAND2X1 U1850 ( .A(n1770), .B(n1747), .Y(n1754) );
  OAI2BB2X1 U1851 ( .B0(n1722), .B1(n1756), .A0N(\cost5[0][0] ), .A1N(n1755), 
        .Y(n840) );
  NAND2X1 U1852 ( .A(n1770), .B(n1748), .Y(n1756) );
  OAI2BB2X1 U1853 ( .B0(n1722), .B1(n1758), .A0N(\cost5[0][1] ), .A1N(n1755), 
        .Y(n839) );
  NAND2X1 U1854 ( .A(n1770), .B(n1749), .Y(n1758) );
  OAI2BB2X1 U1855 ( .B0(n1722), .B1(n1759), .A0N(\cost5[0][2] ), .A1N(n1755), 
        .Y(n838) );
  NAND2X1 U1856 ( .A(n1770), .B(n1724), .Y(n1759) );
  OAI2BB2X1 U1857 ( .B0(n1722), .B1(n1760), .A0N(\cost5[0][3] ), .A1N(n1755), 
        .Y(n837) );
  NAND2X1 U1858 ( .A(n1770), .B(n1726), .Y(n1760) );
  OAI2BB2X1 U1859 ( .B0(n1722), .B1(n1761), .A0N(\cost5[0][4] ), .A1N(n1755), 
        .Y(n836) );
  NAND2X1 U1860 ( .A(n1770), .B(n1727), .Y(n1761) );
  OAI2BB2X1 U1861 ( .B0(n1722), .B1(n1762), .A0N(\cost5[0][5] ), .A1N(n1755), 
        .Y(n835) );
  NAND2X1 U1862 ( .A(n1750), .B(n1763), .Y(n1755) );
  OAI2BB1X1 U1863 ( .A0N(n1751), .A1N(n1770), .B0(n1752), .Y(n1763) );
  NAND2X1 U1864 ( .A(n1770), .B(n1728), .Y(n1762) );
  NOR2X1 U1865 ( .A(n1753), .B(n1771), .Y(n1770) );
  OAI2BB2X1 U1866 ( .B0(n1722), .B1(n1772), .A0N(\cost6[0][6] ), .A1N(n1773), 
        .Y(n834) );
  OAI2BB2X1 U1867 ( .B0(n1694), .B1(n1774), .A0N(\cost6[7][0] ), .A1N(n1775), 
        .Y(n833) );
  OAI2BB2X1 U1868 ( .B0(n1694), .B1(n1776), .A0N(\cost6[7][1] ), .A1N(n1775), 
        .Y(n832) );
  OAI2BB2X1 U1869 ( .B0(n1694), .B1(n1777), .A0N(\cost6[7][2] ), .A1N(n1775), 
        .Y(n831) );
  OAI2BB2X1 U1870 ( .B0(n1694), .B1(n1778), .A0N(\cost6[7][3] ), .A1N(n1775), 
        .Y(n830) );
  OAI2BB2X1 U1871 ( .B0(n1694), .B1(n1779), .A0N(\cost6[7][4] ), .A1N(n1775), 
        .Y(n829) );
  OAI2BB2X1 U1872 ( .B0(n1694), .B1(n1780), .A0N(\cost6[7][5] ), .A1N(n1775), 
        .Y(n828) );
  OAI2BB2X1 U1873 ( .B0(n1694), .B1(n1772), .A0N(\cost6[7][6] ), .A1N(n1775), 
        .Y(n827) );
  NAND2X1 U1874 ( .A(n1738), .B(n1781), .Y(n1775) );
  OAI2BB2X1 U1875 ( .B0(n1701), .B1(n1774), .A0N(\cost6[6][0] ), .A1N(n1782), 
        .Y(n826) );
  OAI2BB2X1 U1876 ( .B0(n1701), .B1(n1776), .A0N(\cost6[6][1] ), .A1N(n1782), 
        .Y(n825) );
  OAI2BB2X1 U1877 ( .B0(n1701), .B1(n1777), .A0N(\cost6[6][2] ), .A1N(n1782), 
        .Y(n824) );
  OAI2BB2X1 U1878 ( .B0(n1701), .B1(n1778), .A0N(\cost6[6][3] ), .A1N(n1782), 
        .Y(n823) );
  OAI2BB2X1 U1879 ( .B0(n1701), .B1(n1779), .A0N(\cost6[6][4] ), .A1N(n1782), 
        .Y(n822) );
  OAI2BB2X1 U1880 ( .B0(n1701), .B1(n1780), .A0N(\cost6[6][5] ), .A1N(n1782), 
        .Y(n821) );
  OAI2BB2X1 U1881 ( .B0(n1701), .B1(n1772), .A0N(\cost6[6][6] ), .A1N(n1782), 
        .Y(n820) );
  NAND2X1 U1882 ( .A(n1706), .B(n1781), .Y(n1782) );
  OAI2BB2X1 U1883 ( .B0(n1707), .B1(n1774), .A0N(\cost6[5][0] ), .A1N(n1783), 
        .Y(n819) );
  OAI2BB2X1 U1884 ( .B0(n1707), .B1(n1776), .A0N(\cost6[5][1] ), .A1N(n1783), 
        .Y(n818) );
  OAI2BB2X1 U1885 ( .B0(n1707), .B1(n1777), .A0N(\cost6[5][2] ), .A1N(n1783), 
        .Y(n817) );
  OAI2BB2X1 U1886 ( .B0(n1707), .B1(n1778), .A0N(\cost6[5][3] ), .A1N(n1783), 
        .Y(n816) );
  OAI2BB2X1 U1887 ( .B0(n1707), .B1(n1779), .A0N(\cost6[5][4] ), .A1N(n1783), 
        .Y(n815) );
  OAI2BB2X1 U1888 ( .B0(n1707), .B1(n1780), .A0N(\cost6[5][5] ), .A1N(n1783), 
        .Y(n814) );
  OAI2BB2X1 U1889 ( .B0(n1707), .B1(n1772), .A0N(\cost6[5][6] ), .A1N(n1783), 
        .Y(n813) );
  NAND2X1 U1890 ( .A(n1709), .B(n1781), .Y(n1783) );
  OAI2BB2X1 U1891 ( .B0(n1710), .B1(n1774), .A0N(\cost6[4][0] ), .A1N(n1784), 
        .Y(n812) );
  OAI2BB2X1 U1892 ( .B0(n1710), .B1(n1776), .A0N(\cost6[4][1] ), .A1N(n1784), 
        .Y(n811) );
  OAI2BB2X1 U1893 ( .B0(n1710), .B1(n1777), .A0N(\cost6[4][2] ), .A1N(n1784), 
        .Y(n810) );
  OAI2BB2X1 U1894 ( .B0(n1710), .B1(n1778), .A0N(\cost6[4][3] ), .A1N(n1784), 
        .Y(n809) );
  OAI2BB2X1 U1895 ( .B0(n1710), .B1(n1779), .A0N(\cost6[4][4] ), .A1N(n1784), 
        .Y(n808) );
  OAI2BB2X1 U1896 ( .B0(n1710), .B1(n1780), .A0N(\cost6[4][5] ), .A1N(n1784), 
        .Y(n807) );
  OAI2BB2X1 U1897 ( .B0(n1710), .B1(n1772), .A0N(\cost6[4][6] ), .A1N(n1784), 
        .Y(n806) );
  NAND2X1 U1898 ( .A(n1712), .B(n1781), .Y(n1784) );
  OAI2BB2X1 U1899 ( .B0(n1713), .B1(n1774), .A0N(\cost6[3][0] ), .A1N(n1785), 
        .Y(n805) );
  OAI2BB2X1 U1900 ( .B0(n1713), .B1(n1776), .A0N(\cost6[3][1] ), .A1N(n1785), 
        .Y(n804) );
  OAI2BB2X1 U1901 ( .B0(n1713), .B1(n1777), .A0N(\cost6[3][2] ), .A1N(n1785), 
        .Y(n803) );
  OAI2BB2X1 U1902 ( .B0(n1713), .B1(n1778), .A0N(\cost6[3][3] ), .A1N(n1785), 
        .Y(n802) );
  OAI2BB2X1 U1903 ( .B0(n1713), .B1(n1779), .A0N(\cost6[3][4] ), .A1N(n1785), 
        .Y(n801) );
  OAI2BB2X1 U1904 ( .B0(n1713), .B1(n1780), .A0N(\cost6[3][5] ), .A1N(n1785), 
        .Y(n800) );
  OAI2BB2X1 U1905 ( .B0(n1713), .B1(n1772), .A0N(\cost6[3][6] ), .A1N(n1785), 
        .Y(n799) );
  NAND2X1 U1906 ( .A(n1715), .B(n1781), .Y(n1785) );
  OAI2BB2X1 U1907 ( .B0(n1716), .B1(n1774), .A0N(\cost6[2][0] ), .A1N(n1786), 
        .Y(n798) );
  OAI2BB2X1 U1908 ( .B0(n1716), .B1(n1776), .A0N(\cost6[2][1] ), .A1N(n1786), 
        .Y(n797) );
  OAI2BB2X1 U1909 ( .B0(n1716), .B1(n1777), .A0N(\cost6[2][2] ), .A1N(n1786), 
        .Y(n796) );
  OAI2BB2X1 U1910 ( .B0(n1716), .B1(n1778), .A0N(\cost6[2][3] ), .A1N(n1786), 
        .Y(n795) );
  OAI2BB2X1 U1911 ( .B0(n1716), .B1(n1779), .A0N(\cost6[2][4] ), .A1N(n1786), 
        .Y(n794) );
  OAI2BB2X1 U1912 ( .B0(n1716), .B1(n1780), .A0N(\cost6[2][5] ), .A1N(n1786), 
        .Y(n793) );
  OAI2BB2X1 U1913 ( .B0(n1716), .B1(n1772), .A0N(\cost6[2][6] ), .A1N(n1786), 
        .Y(n792) );
  NAND2X1 U1914 ( .A(n1718), .B(n1781), .Y(n1786) );
  OAI2BB2X1 U1915 ( .B0(n1719), .B1(n1774), .A0N(\cost6[1][0] ), .A1N(n1787), 
        .Y(n791) );
  OAI2BB2X1 U1916 ( .B0(n1719), .B1(n1776), .A0N(\cost6[1][1] ), .A1N(n1787), 
        .Y(n790) );
  OAI2BB2X1 U1917 ( .B0(n1719), .B1(n1777), .A0N(\cost6[1][2] ), .A1N(n1787), 
        .Y(n789) );
  OAI2BB2X1 U1918 ( .B0(n1719), .B1(n1778), .A0N(\cost6[1][3] ), .A1N(n1787), 
        .Y(n788) );
  OAI2BB2X1 U1919 ( .B0(n1719), .B1(n1779), .A0N(\cost6[1][4] ), .A1N(n1787), 
        .Y(n787) );
  OAI2BB2X1 U1920 ( .B0(n1719), .B1(n1780), .A0N(\cost6[1][5] ), .A1N(n1787), 
        .Y(n786) );
  OAI2BB2X1 U1921 ( .B0(n1719), .B1(n1772), .A0N(\cost6[1][6] ), .A1N(n1787), 
        .Y(n785) );
  NAND2X1 U1922 ( .A(n1721), .B(n1781), .Y(n1787) );
  NAND2X1 U1923 ( .A(n1788), .B(n1747), .Y(n1772) );
  OAI2BB2X1 U1924 ( .B0(n1722), .B1(n1774), .A0N(\cost6[0][0] ), .A1N(n1773), 
        .Y(n784) );
  NAND2X1 U1925 ( .A(n1788), .B(n1748), .Y(n1774) );
  OAI2BB2X1 U1926 ( .B0(n1722), .B1(n1776), .A0N(\cost6[0][1] ), .A1N(n1773), 
        .Y(n783) );
  NAND2X1 U1927 ( .A(n1788), .B(n1749), .Y(n1776) );
  OAI2BB2X1 U1928 ( .B0(n1722), .B1(n1777), .A0N(\cost6[0][2] ), .A1N(n1773), 
        .Y(n782) );
  NAND2X1 U1929 ( .A(n1788), .B(n1724), .Y(n1777) );
  OAI2BB2X1 U1930 ( .B0(n1722), .B1(n1778), .A0N(\cost6[0][3] ), .A1N(n1773), 
        .Y(n781) );
  NAND2X1 U1931 ( .A(n1788), .B(n1726), .Y(n1778) );
  OAI2BB2X1 U1932 ( .B0(n1722), .B1(n1779), .A0N(\cost6[0][4] ), .A1N(n1773), 
        .Y(n780) );
  NAND2X1 U1933 ( .A(n1788), .B(n1727), .Y(n1779) );
  OAI2BB2X1 U1934 ( .B0(n1722), .B1(n1780), .A0N(\cost6[0][5] ), .A1N(n1773), 
        .Y(n779) );
  NAND2X1 U1935 ( .A(n1750), .B(n1781), .Y(n1773) );
  OAI2BB1X1 U1936 ( .A0N(n1751), .A1N(n1788), .B0(n1752), .Y(n1781) );
  NAND2X1 U1937 ( .A(n1788), .B(n1728), .Y(n1780) );
  NOR3X1 U1938 ( .A(n1789), .B(W[0]), .C(n1790), .Y(n1788) );
  OAI2BB2X1 U1939 ( .B0(n1722), .B1(n1791), .A0N(\cost7[0][6] ), .A1N(n1792), 
        .Y(n778) );
  OAI2BB2X1 U1940 ( .B0(n1694), .B1(n1793), .A0N(\cost7[7][0] ), .A1N(n1794), 
        .Y(n777) );
  OAI2BB2X1 U1941 ( .B0(n1694), .B1(n1795), .A0N(\cost7[7][1] ), .A1N(n1794), 
        .Y(n776) );
  OAI2BB2X1 U1942 ( .B0(n1694), .B1(n1796), .A0N(\cost7[7][2] ), .A1N(n1794), 
        .Y(n775) );
  OAI2BB2X1 U1943 ( .B0(n1694), .B1(n1797), .A0N(\cost7[7][3] ), .A1N(n1794), 
        .Y(n774) );
  OAI2BB2X1 U1944 ( .B0(n1694), .B1(n1798), .A0N(\cost7[7][4] ), .A1N(n1794), 
        .Y(n773) );
  OAI2BB2X1 U1945 ( .B0(n1694), .B1(n1799), .A0N(\cost7[7][5] ), .A1N(n1794), 
        .Y(n772) );
  OAI2BB2X1 U1946 ( .B0(n1694), .B1(n1791), .A0N(\cost7[7][6] ), .A1N(n1794), 
        .Y(n771) );
  NAND2X1 U1947 ( .A(n1738), .B(n1800), .Y(n1794) );
  OAI2BB2X1 U1948 ( .B0(n1701), .B1(n1793), .A0N(\cost7[6][0] ), .A1N(n1801), 
        .Y(n770) );
  OAI2BB2X1 U1949 ( .B0(n1701), .B1(n1795), .A0N(\cost7[6][1] ), .A1N(n1801), 
        .Y(n769) );
  OAI2BB2X1 U1950 ( .B0(n1701), .B1(n1796), .A0N(\cost7[6][2] ), .A1N(n1801), 
        .Y(n768) );
  OAI2BB2X1 U1951 ( .B0(n1701), .B1(n1797), .A0N(\cost7[6][3] ), .A1N(n1801), 
        .Y(n767) );
  OAI2BB2X1 U1952 ( .B0(n1701), .B1(n1798), .A0N(\cost7[6][4] ), .A1N(n1801), 
        .Y(n766) );
  OAI2BB2X1 U1953 ( .B0(n1701), .B1(n1799), .A0N(\cost7[6][5] ), .A1N(n1801), 
        .Y(n765) );
  OAI2BB2X1 U1954 ( .B0(n1701), .B1(n1791), .A0N(\cost7[6][6] ), .A1N(n1801), 
        .Y(n764) );
  NAND2X1 U1955 ( .A(n1706), .B(n1800), .Y(n1801) );
  OAI2BB2X1 U1956 ( .B0(n1707), .B1(n1793), .A0N(\cost7[5][0] ), .A1N(n1802), 
        .Y(n763) );
  OAI2BB2X1 U1957 ( .B0(n1707), .B1(n1795), .A0N(\cost7[5][1] ), .A1N(n1802), 
        .Y(n762) );
  OAI2BB2X1 U1958 ( .B0(n1707), .B1(n1796), .A0N(\cost7[5][2] ), .A1N(n1802), 
        .Y(n761) );
  OAI2BB2X1 U1959 ( .B0(n1707), .B1(n1797), .A0N(\cost7[5][3] ), .A1N(n1802), 
        .Y(n760) );
  OAI2BB2X1 U1960 ( .B0(n1707), .B1(n1798), .A0N(\cost7[5][4] ), .A1N(n1802), 
        .Y(n759) );
  OAI2BB2X1 U1961 ( .B0(n1707), .B1(n1799), .A0N(\cost7[5][5] ), .A1N(n1802), 
        .Y(n758) );
  OAI2BB2X1 U1962 ( .B0(n1707), .B1(n1791), .A0N(\cost7[5][6] ), .A1N(n1802), 
        .Y(n757) );
  NAND2X1 U1963 ( .A(n1709), .B(n1800), .Y(n1802) );
  OAI2BB2X1 U1964 ( .B0(n1710), .B1(n1793), .A0N(\cost7[4][0] ), .A1N(n1803), 
        .Y(n756) );
  OAI2BB2X1 U1965 ( .B0(n1710), .B1(n1795), .A0N(\cost7[4][1] ), .A1N(n1803), 
        .Y(n755) );
  OAI2BB2X1 U1966 ( .B0(n1710), .B1(n1796), .A0N(\cost7[4][2] ), .A1N(n1803), 
        .Y(n754) );
  OAI2BB2X1 U1967 ( .B0(n1710), .B1(n1797), .A0N(\cost7[4][3] ), .A1N(n1803), 
        .Y(n753) );
  OAI2BB2X1 U1968 ( .B0(n1710), .B1(n1798), .A0N(\cost7[4][4] ), .A1N(n1803), 
        .Y(n752) );
  OAI2BB2X1 U1969 ( .B0(n1710), .B1(n1799), .A0N(\cost7[4][5] ), .A1N(n1803), 
        .Y(n751) );
  OAI2BB2X1 U1970 ( .B0(n1710), .B1(n1791), .A0N(\cost7[4][6] ), .A1N(n1803), 
        .Y(n750) );
  NAND2X1 U1971 ( .A(n1712), .B(n1800), .Y(n1803) );
  OAI2BB2X1 U1972 ( .B0(n1713), .B1(n1793), .A0N(\cost7[3][0] ), .A1N(n1804), 
        .Y(n749) );
  OAI2BB2X1 U1973 ( .B0(n1713), .B1(n1795), .A0N(\cost7[3][1] ), .A1N(n1804), 
        .Y(n748) );
  OAI2BB2X1 U1974 ( .B0(n1713), .B1(n1796), .A0N(\cost7[3][2] ), .A1N(n1804), 
        .Y(n747) );
  OAI2BB2X1 U1975 ( .B0(n1713), .B1(n1797), .A0N(\cost7[3][3] ), .A1N(n1804), 
        .Y(n746) );
  OAI2BB2X1 U1976 ( .B0(n1713), .B1(n1798), .A0N(\cost7[3][4] ), .A1N(n1804), 
        .Y(n745) );
  OAI2BB2X1 U1977 ( .B0(n1713), .B1(n1799), .A0N(\cost7[3][5] ), .A1N(n1804), 
        .Y(n744) );
  OAI2BB2X1 U1978 ( .B0(n1713), .B1(n1791), .A0N(\cost7[3][6] ), .A1N(n1804), 
        .Y(n743) );
  NAND2X1 U1979 ( .A(n1715), .B(n1800), .Y(n1804) );
  OAI2BB2X1 U1980 ( .B0(n1716), .B1(n1793), .A0N(\cost7[2][0] ), .A1N(n1805), 
        .Y(n742) );
  OAI2BB2X1 U1981 ( .B0(n1716), .B1(n1795), .A0N(\cost7[2][1] ), .A1N(n1805), 
        .Y(n741) );
  OAI2BB2X1 U1982 ( .B0(n1716), .B1(n1796), .A0N(\cost7[2][2] ), .A1N(n1805), 
        .Y(n740) );
  OAI2BB2X1 U1983 ( .B0(n1716), .B1(n1797), .A0N(\cost7[2][3] ), .A1N(n1805), 
        .Y(n739) );
  OAI2BB2X1 U1984 ( .B0(n1716), .B1(n1798), .A0N(\cost7[2][4] ), .A1N(n1805), 
        .Y(n738) );
  OAI2BB2X1 U1985 ( .B0(n1716), .B1(n1799), .A0N(\cost7[2][5] ), .A1N(n1805), 
        .Y(n737) );
  OAI2BB2X1 U1986 ( .B0(n1716), .B1(n1791), .A0N(\cost7[2][6] ), .A1N(n1805), 
        .Y(n736) );
  NAND2X1 U1987 ( .A(n1718), .B(n1800), .Y(n1805) );
  OAI2BB2X1 U1988 ( .B0(n1719), .B1(n1793), .A0N(\cost7[1][0] ), .A1N(n1806), 
        .Y(n735) );
  OAI2BB2X1 U1989 ( .B0(n1719), .B1(n1795), .A0N(\cost7[1][1] ), .A1N(n1806), 
        .Y(n734) );
  OAI2BB2X1 U1990 ( .B0(n1719), .B1(n1796), .A0N(\cost7[1][2] ), .A1N(n1806), 
        .Y(n733) );
  OAI2BB2X1 U1991 ( .B0(n1719), .B1(n1797), .A0N(\cost7[1][3] ), .A1N(n1806), 
        .Y(n732) );
  OAI2BB2X1 U1992 ( .B0(n1719), .B1(n1798), .A0N(\cost7[1][4] ), .A1N(n1806), 
        .Y(n731) );
  OAI2BB2X1 U1993 ( .B0(n1719), .B1(n1799), .A0N(\cost7[1][5] ), .A1N(n1806), 
        .Y(n730) );
  OAI2BB2X1 U1994 ( .B0(n1719), .B1(n1791), .A0N(\cost7[1][6] ), .A1N(n1806), 
        .Y(n729) );
  NAND2X1 U1995 ( .A(n1721), .B(n1800), .Y(n1806) );
  NAND2X1 U1996 ( .A(n1807), .B(n1747), .Y(n1791) );
  OAI2BB2X1 U1997 ( .B0(n1722), .B1(n1793), .A0N(\cost7[0][0] ), .A1N(n1792), 
        .Y(n728) );
  NAND2X1 U1998 ( .A(n1807), .B(n1748), .Y(n1793) );
  OAI2BB2X1 U1999 ( .B0(n1722), .B1(n1795), .A0N(\cost7[0][1] ), .A1N(n1792), 
        .Y(n727) );
  NAND2X1 U2000 ( .A(n1807), .B(n1749), .Y(n1795) );
  OAI2BB2X1 U2001 ( .B0(n1722), .B1(n1796), .A0N(\cost7[0][2] ), .A1N(n1792), 
        .Y(n726) );
  NAND2X1 U2002 ( .A(n1807), .B(n1724), .Y(n1796) );
  OAI2BB2X1 U2003 ( .B0(n1722), .B1(n1797), .A0N(\cost7[0][3] ), .A1N(n1792), 
        .Y(n725) );
  NAND2X1 U2004 ( .A(n1807), .B(n1726), .Y(n1797) );
  OAI2BB2X1 U2005 ( .B0(n1722), .B1(n1798), .A0N(\cost7[0][4] ), .A1N(n1792), 
        .Y(n724) );
  NAND2X1 U2006 ( .A(n1807), .B(n1727), .Y(n1798) );
  OAI2BB2X1 U2007 ( .B0(n1722), .B1(n1799), .A0N(\cost7[0][5] ), .A1N(n1792), 
        .Y(n723) );
  NAND2X1 U2008 ( .A(n1750), .B(n1800), .Y(n1792) );
  OAI2BB1X1 U2009 ( .A0N(n1751), .A1N(n1807), .B0(n1752), .Y(n1800) );
  NAND2X1 U2010 ( .A(n1807), .B(n1728), .Y(n1799) );
  OAI2BB2X1 U2011 ( .B0(n1694), .B1(n1808), .A0N(\cost0[7][0] ), .A1N(n1809), 
        .Y(n722) );
  OAI2BB2X1 U2012 ( .B0(n1694), .B1(n1810), .A0N(\cost0[7][1] ), .A1N(n1809), 
        .Y(n721) );
  OAI2BB2X1 U2013 ( .B0(n1694), .B1(n1811), .A0N(\cost0[7][2] ), .A1N(n1809), 
        .Y(n720) );
  OAI2BB2X1 U2014 ( .B0(n1694), .B1(n1812), .A0N(\cost0[7][3] ), .A1N(n1809), 
        .Y(n719) );
  OAI2BB2X1 U2015 ( .B0(n1694), .B1(n1813), .A0N(\cost0[7][4] ), .A1N(n1809), 
        .Y(n718) );
  OAI2BB2X1 U2016 ( .B0(n1694), .B1(n1814), .A0N(\cost0[7][5] ), .A1N(n1809), 
        .Y(n717) );
  OAI2BB2X1 U2017 ( .B0(n1694), .B1(n1815), .A0N(\cost0[7][6] ), .A1N(n1809), 
        .Y(n716) );
  NAND2X1 U2018 ( .A(n1738), .B(n1816), .Y(n1809) );
  OAI2BB2X1 U2019 ( .B0(n1701), .B1(n1808), .A0N(\cost0[6][0] ), .A1N(n1817), 
        .Y(n715) );
  OAI2BB2X1 U2020 ( .B0(n1701), .B1(n1810), .A0N(\cost0[6][1] ), .A1N(n1817), 
        .Y(n714) );
  OAI2BB2X1 U2021 ( .B0(n1701), .B1(n1811), .A0N(\cost0[6][2] ), .A1N(n1817), 
        .Y(n713) );
  OAI2BB2X1 U2022 ( .B0(n1701), .B1(n1812), .A0N(\cost0[6][3] ), .A1N(n1817), 
        .Y(n712) );
  OAI2BB2X1 U2023 ( .B0(n1701), .B1(n1813), .A0N(\cost0[6][4] ), .A1N(n1817), 
        .Y(n711) );
  OAI2BB2X1 U2024 ( .B0(n1701), .B1(n1814), .A0N(\cost0[6][5] ), .A1N(n1817), 
        .Y(n710) );
  OAI2BB2X1 U2025 ( .B0(n1701), .B1(n1815), .A0N(\cost0[6][6] ), .A1N(n1817), 
        .Y(n709) );
  NAND2X1 U2026 ( .A(n1706), .B(n1816), .Y(n1817) );
  OAI2BB2X1 U2027 ( .B0(n1707), .B1(n1808), .A0N(\cost0[5][0] ), .A1N(n1818), 
        .Y(n708) );
  OAI2BB2X1 U2028 ( .B0(n1707), .B1(n1810), .A0N(\cost0[5][1] ), .A1N(n1818), 
        .Y(n707) );
  OAI2BB2X1 U2029 ( .B0(n1707), .B1(n1811), .A0N(\cost0[5][2] ), .A1N(n1818), 
        .Y(n706) );
  OAI2BB2X1 U2030 ( .B0(n1707), .B1(n1812), .A0N(\cost0[5][3] ), .A1N(n1818), 
        .Y(n705) );
  OAI2BB2X1 U2031 ( .B0(n1707), .B1(n1813), .A0N(\cost0[5][4] ), .A1N(n1818), 
        .Y(n704) );
  OAI2BB2X1 U2032 ( .B0(n1707), .B1(n1814), .A0N(\cost0[5][5] ), .A1N(n1818), 
        .Y(n703) );
  OAI2BB2X1 U2033 ( .B0(n1707), .B1(n1815), .A0N(\cost0[5][6] ), .A1N(n1818), 
        .Y(n702) );
  NAND2X1 U2034 ( .A(n1709), .B(n1816), .Y(n1818) );
  OAI2BB2X1 U2035 ( .B0(n1710), .B1(n1808), .A0N(\cost0[4][0] ), .A1N(n1819), 
        .Y(n701) );
  OAI2BB2X1 U2036 ( .B0(n1710), .B1(n1810), .A0N(\cost0[4][1] ), .A1N(n1819), 
        .Y(n700) );
  OAI2BB2X1 U2037 ( .B0(n1710), .B1(n1811), .A0N(\cost0[4][2] ), .A1N(n1819), 
        .Y(n699) );
  OAI2BB2X1 U2038 ( .B0(n1710), .B1(n1812), .A0N(\cost0[4][3] ), .A1N(n1819), 
        .Y(n698) );
  OAI2BB2X1 U2039 ( .B0(n1710), .B1(n1813), .A0N(\cost0[4][4] ), .A1N(n1819), 
        .Y(n697) );
  OAI2BB2X1 U2040 ( .B0(n1710), .B1(n1814), .A0N(\cost0[4][5] ), .A1N(n1819), 
        .Y(n696) );
  OAI2BB2X1 U2041 ( .B0(n1710), .B1(n1815), .A0N(\cost0[4][6] ), .A1N(n1819), 
        .Y(n695) );
  NAND2X1 U2042 ( .A(n1712), .B(n1816), .Y(n1819) );
  OAI2BB2X1 U2043 ( .B0(n1713), .B1(n1808), .A0N(\cost0[3][0] ), .A1N(n1820), 
        .Y(n694) );
  OAI2BB2X1 U2044 ( .B0(n1713), .B1(n1810), .A0N(\cost0[3][1] ), .A1N(n1820), 
        .Y(n693) );
  OAI2BB2X1 U2045 ( .B0(n1713), .B1(n1811), .A0N(\cost0[3][2] ), .A1N(n1820), 
        .Y(n692) );
  OAI2BB2X1 U2046 ( .B0(n1713), .B1(n1812), .A0N(\cost0[3][3] ), .A1N(n1820), 
        .Y(n691) );
  OAI2BB2X1 U2047 ( .B0(n1713), .B1(n1813), .A0N(\cost0[3][4] ), .A1N(n1820), 
        .Y(n690) );
  OAI2BB2X1 U2048 ( .B0(n1713), .B1(n1814), .A0N(\cost0[3][5] ), .A1N(n1820), 
        .Y(n689) );
  OAI2BB2X1 U2049 ( .B0(n1713), .B1(n1815), .A0N(\cost0[3][6] ), .A1N(n1820), 
        .Y(n688) );
  NAND2X1 U2050 ( .A(n1715), .B(n1816), .Y(n1820) );
  OAI2BB2X1 U2051 ( .B0(n1716), .B1(n1808), .A0N(\cost0[2][0] ), .A1N(n1821), 
        .Y(n687) );
  OAI2BB2X1 U2052 ( .B0(n1716), .B1(n1810), .A0N(\cost0[2][1] ), .A1N(n1821), 
        .Y(n686) );
  OAI2BB2X1 U2053 ( .B0(n1716), .B1(n1811), .A0N(\cost0[2][2] ), .A1N(n1821), 
        .Y(n685) );
  OAI2BB2X1 U2054 ( .B0(n1716), .B1(n1812), .A0N(\cost0[2][3] ), .A1N(n1821), 
        .Y(n684) );
  OAI2BB2X1 U2055 ( .B0(n1716), .B1(n1813), .A0N(\cost0[2][4] ), .A1N(n1821), 
        .Y(n683) );
  OAI2BB2X1 U2056 ( .B0(n1716), .B1(n1814), .A0N(\cost0[2][5] ), .A1N(n1821), 
        .Y(n682) );
  OAI2BB2X1 U2057 ( .B0(n1716), .B1(n1815), .A0N(\cost0[2][6] ), .A1N(n1821), 
        .Y(n681) );
  NAND2X1 U2058 ( .A(n1718), .B(n1816), .Y(n1821) );
  OAI2BB2X1 U2059 ( .B0(n1719), .B1(n1808), .A0N(\cost0[1][0] ), .A1N(n1822), 
        .Y(n680) );
  OAI2BB2X1 U2060 ( .B0(n1719), .B1(n1810), .A0N(\cost0[1][1] ), .A1N(n1822), 
        .Y(n679) );
  OAI2BB2X1 U2061 ( .B0(n1719), .B1(n1811), .A0N(\cost0[1][2] ), .A1N(n1822), 
        .Y(n678) );
  OAI2BB2X1 U2062 ( .B0(n1719), .B1(n1812), .A0N(\cost0[1][3] ), .A1N(n1822), 
        .Y(n677) );
  OAI2BB2X1 U2063 ( .B0(n1719), .B1(n1813), .A0N(\cost0[1][4] ), .A1N(n1822), 
        .Y(n676) );
  OAI2BB2X1 U2064 ( .B0(n1719), .B1(n1814), .A0N(\cost0[1][5] ), .A1N(n1822), 
        .Y(n675) );
  OAI2BB2X1 U2065 ( .B0(n1719), .B1(n1815), .A0N(\cost0[1][6] ), .A1N(n1822), 
        .Y(n674) );
  NAND2X1 U2066 ( .A(n1721), .B(n1816), .Y(n1822) );
  OAI2BB2X1 U2067 ( .B0(n1722), .B1(n1808), .A0N(\cost0[0][0] ), .A1N(n1823), 
        .Y(n673) );
  NAND2X1 U2068 ( .A(n1824), .B(n1748), .Y(n1808) );
  OAI2BB2X1 U2069 ( .B0(n1722), .B1(n1810), .A0N(\cost0[0][1] ), .A1N(n1823), 
        .Y(n672) );
  NAND2X1 U2070 ( .A(n1824), .B(n1749), .Y(n1810) );
  OAI2BB2X1 U2071 ( .B0(n1722), .B1(n1811), .A0N(\cost0[0][2] ), .A1N(n1823), 
        .Y(n671) );
  NAND2X1 U2072 ( .A(n1824), .B(n1724), .Y(n1811) );
  OAI2BB2X1 U2073 ( .B0(n1722), .B1(n1812), .A0N(\cost0[0][3] ), .A1N(n1823), 
        .Y(n670) );
  NAND2X1 U2074 ( .A(n1824), .B(n1726), .Y(n1812) );
  OAI2BB2X1 U2075 ( .B0(n1722), .B1(n1813), .A0N(\cost0[0][4] ), .A1N(n1823), 
        .Y(n669) );
  NAND2X1 U2076 ( .A(n1824), .B(n1727), .Y(n1813) );
  OAI2BB2X1 U2077 ( .B0(n1722), .B1(n1814), .A0N(\cost0[0][5] ), .A1N(n1823), 
        .Y(n668) );
  NAND2X1 U2078 ( .A(n1824), .B(n1728), .Y(n1814) );
  OAI2BB2X1 U2079 ( .B0(n1722), .B1(n1815), .A0N(\cost0[0][6] ), .A1N(n1823), 
        .Y(n667) );
  NAND2X1 U2080 ( .A(n1750), .B(n1816), .Y(n1823) );
  OAI2BB1X1 U2081 ( .A0N(n1751), .A1N(n1824), .B0(n1752), .Y(n1816) );
  NAND2X1 U2082 ( .A(n1824), .B(n1747), .Y(n1815) );
  NOR3X1 U2083 ( .A(W[1]), .B(W[2]), .C(W[0]), .Y(n1824) );
  NAND2X1 U2084 ( .A(n1825), .B(n2275), .Y(n666) );
  MXI2X1 U2085 ( .A(n1183), .B(n1176), .S0(n1826), .Y(n1825) );
  NAND2X1 U2086 ( .A(n1827), .B(n2275), .Y(n665) );
  MX2X1 U2087 ( .A(n203), .B(n193), .S0(n1828), .Y(n1827) );
  NAND2X1 U2088 ( .A(n1829), .B(n2275), .Y(n664) );
  MXI2X1 U2089 ( .A(n1178), .B(n1186), .S0(n1826), .Y(n1829) );
  NAND2X1 U2090 ( .A(n1830), .B(n2275), .Y(n663) );
  MX2X1 U2091 ( .A(n201), .B(n191), .S0(n1828), .Y(n1830) );
  NAND2X1 U2092 ( .A(n1831), .B(n2275), .Y(n662) );
  MXI2X1 U2093 ( .A(n1179), .B(n1187), .S0(n1826), .Y(n1831) );
  NAND2X1 U2094 ( .A(n1832), .B(n2275), .Y(n661) );
  MX2X1 U2095 ( .A(n199), .B(n189), .S0(n1828), .Y(n1832) );
  NAND2X1 U2096 ( .A(n1833), .B(n2275), .Y(n660) );
  MX2X1 U2097 ( .A(n198), .B(n188), .S0(n1828), .Y(n1833) );
  NAND2X1 U2098 ( .A(n1834), .B(n2275), .Y(n659) );
  MXI2X1 U2099 ( .A(n1181), .B(n1188), .S0(n1826), .Y(n1834) );
  NAND2X1 U2100 ( .A(n1835), .B(n2275), .Y(n658) );
  MXI2X1 U2101 ( .A(n1174), .B(n1182), .S0(n1826), .Y(n1835) );
  NAND2X1 U2102 ( .A(n1836), .B(n2275), .Y(n657) );
  MX2X1 U2103 ( .A(n194), .B(n180), .S0(n1828), .Y(n1836) );
  OAI2BB1X1 U2104 ( .A0N(n2275), .A1N(n1828), .B0(n1837), .Y(n656) );
  MXI2X1 U2105 ( .A(n1838), .B(n1839), .S0(n1840), .Y(n1837) );
  NOR2X1 U2106 ( .A(n1841), .B(n1842), .Y(n1839) );
  OAI2BB1X1 U2107 ( .A0N(n2275), .A1N(n1843), .B0(n1844), .Y(n1838) );
  CLKINVX1 U2108 ( .A(n1826), .Y(n1828) );
  NAND2X1 U2109 ( .A(n1844), .B(n1845), .Y(n1826) );
  CLKINVX1 U2110 ( .A(n1841), .Y(n1844) );
  MX2X1 U2111 ( .A(n1693), .B(n1846), .S0(match_count[1]), .Y(n655) );
  MXI2X1 U2112 ( .A(n1847), .B(n1848), .S0(n2271), .Y(n654) );
  NAND3X1 U2113 ( .A(match_count[1]), .B(n1693), .C(match_count[2]), .Y(n1848)
         );
  NOR3X1 U2114 ( .A(n1842), .B(n1841), .C(n1840), .Y(n1693) );
  AOI2BB1X1 U2115 ( .A0N(match_count[2]), .A1N(n1842), .B0(n1849), .Y(n1847)
         );
  CLKINVX1 U2116 ( .A(n1692), .Y(n1849) );
  AOI2BB1X1 U2117 ( .A0N(n1842), .A1N(match_count[1]), .B0(n1846), .Y(n1692)
         );
  OAI21X1 U2118 ( .A0(match_count[0]), .A1(n1842), .B0(n1850), .Y(n1846) );
  AOI31X1 U2119 ( .A0(n1843), .A1(n2275), .A2(n1851), .B0(n1841), .Y(n1850) );
  AOI21X1 U2120 ( .A0(n1658), .A1(n1689), .B0(RST), .Y(n1841) );
  OR2X1 U2121 ( .A(n1843), .B(RST), .Y(n1842) );
  NAND4X1 U2122 ( .A(n1851), .B(n1852), .C(n1853), .D(n1854), .Y(n1843) );
  NOR4BX1 U2123 ( .AN(n1855), .B(n1856), .C(n1857), .D(n1858), .Y(n1854) );
  OAI21X1 U2124 ( .A0(n1176), .A1(n185), .B0(n1859), .Y(n1856) );
  AOI222XL U2125 ( .A0(n194), .A1(n1177), .B0(n196), .B1(n1174), .C0(n203), 
        .C1(n1184), .Y(n1853) );
  CLKINVX1 U2126 ( .A(n1845), .Y(n1851) );
  OAI22X1 U2127 ( .A0(n1860), .A1(n1177), .B0(n194), .B1(n1861), .Y(n1845) );
  AND2X1 U2128 ( .A(n1860), .B(n1177), .Y(n1861) );
  OAI22X1 U2129 ( .A0(n185), .A1(n1176), .B0(n1862), .B1(n1863), .Y(n1860) );
  AOI22X1 U2130 ( .A0(n196), .A1(n1174), .B0(n1864), .B1(n1865), .Y(n1863) );
  NAND2X1 U2131 ( .A(n187), .B(n1188), .Y(n1865) );
  AOI32X1 U2132 ( .A0(n1866), .A1(n1855), .A2(n1859), .B0(n186), .B1(n1182), 
        .Y(n1864) );
  NAND2X1 U2133 ( .A(n197), .B(n1181), .Y(n1859) );
  NAND2X1 U2134 ( .A(n198), .B(n1185), .Y(n1855) );
  OAI222X1 U2135 ( .A0(n198), .A1(n1185), .B0(n1867), .B1(n1868), .C0(n199), 
        .C1(n1175), .Y(n1866) );
  CLKINVX1 U2136 ( .A(n1852), .Y(n1868) );
  AOI22X1 U2137 ( .A0(n1179), .A1(n200), .B0(n1175), .B1(n199), .Y(n1852) );
  AOI222XL U2138 ( .A0(n191), .A1(n1180), .B0(n1869), .B1(n1870), .C0(n190), 
        .C1(n1187), .Y(n1867) );
  CLKINVX1 U2139 ( .A(n1858), .Y(n1870) );
  NOR2X1 U2140 ( .A(n1180), .B(n191), .Y(n1858) );
  OAI32X1 U2141 ( .A0(n1184), .A1(n203), .A2(n1857), .B0(n202), .B1(n1178), 
        .Y(n1869) );
  NOR2X1 U2142 ( .A(n1186), .B(n192), .Y(n1857) );
  NOR2X1 U2143 ( .A(n195), .B(n1183), .Y(n1862) );
  OAI22X1 U2144 ( .A0(n1871), .A1(n1872), .B0(n1873), .B1(n1874), .Y(n1173) );
  CLKINVX1 U2145 ( .A(n1875), .Y(n1873) );
  OAI222X1 U2146 ( .A0(n1876), .A1(n1877), .B0(n146), .B1(n1878), .C0(n1879), 
        .C1(n1880), .Y(n1172) );
  CLKINVX1 U2147 ( .A(mini_num[1]), .Y(n1880) );
  OAI22X1 U2148 ( .A0(n1871), .A1(n1881), .B0(n1882), .B1(n1874), .Y(n1171) );
  OAI22X1 U2149 ( .A0(n1871), .A1(n1245), .B0(n1883), .B1(n1874), .Y(n1170) );
  NAND2X1 U2150 ( .A(n1871), .B(n2275), .Y(n1874) );
  AOI2BB1X1 U2151 ( .A0N(n1884), .A1N(n1885), .B0(n2272), .Y(n1169) );
  AND2X1 U2152 ( .A(n103), .B(n1886), .Y(n1885) );
  OAI22X1 U2153 ( .A0(n1887), .A1(n1888), .B0(n2272), .B1(n1889), .Y(n1168) );
  CLKINVX1 U2154 ( .A(\mini_idx[3] ), .Y(n1888) );
  OAI22X1 U2155 ( .A0(n1890), .A1(n1672), .B0(n1891), .B1(n1892), .Y(n1167) );
  NOR4X1 U2156 ( .A(n1893), .B(n1894), .C(n1895), .D(n1896), .Y(n1892) );
  MXI2X1 U2157 ( .A(n1897), .B(n1898), .S0(n1899), .Y(n1896) );
  NOR2X1 U2158 ( .A(n1900), .B(n1901), .Y(n1895) );
  OAI22X1 U2159 ( .A0(n1417), .A1(n1902), .B0(n1903), .B1(n1904), .Y(n1894) );
  OAI211X1 U2160 ( .A0(n1905), .A1(n1906), .B0(n2275), .C0(n1907), .Y(n1893)
         );
  AOI22X1 U2161 ( .A0(n1908), .A1(N207), .B0(n1909), .B1(N204), .Y(n1907) );
  OAI22X1 U2162 ( .A0(n1890), .A1(n1673), .B0(n1891), .B1(n1910), .Y(n1166) );
  NOR4X1 U2163 ( .A(n1911), .B(n1912), .C(n1913), .D(n1914), .Y(n1910) );
  MXI2X1 U2164 ( .A(n1915), .B(n1916), .S0(n1899), .Y(n1914) );
  AND2X1 U2165 ( .A(N196), .B(n1917), .Y(n1913) );
  OAI22X1 U2166 ( .A0(n1918), .A1(n1902), .B0(n1464), .B1(n1904), .Y(n1912) );
  OAI211X1 U2167 ( .A0(n1670), .A1(n1906), .B0(n2275), .C0(n1919), .Y(n1911)
         );
  AOI22X1 U2168 ( .A0(n1908), .A1(N208), .B0(n1909), .B1(N205), .Y(n1919) );
  OAI22X1 U2169 ( .A0(n1890), .A1(n1652), .B0(n1891), .B1(n1920), .Y(n1165) );
  NOR4X1 U2170 ( .A(n1921), .B(n1922), .C(n1923), .D(n1924), .Y(n1920) );
  MXI2X1 U2171 ( .A(n1925), .B(n1926), .S0(n1899), .Y(n1924) );
  AND2X1 U2172 ( .A(N197), .B(n1917), .Y(n1923) );
  OAI22X1 U2173 ( .A0(n1416), .A1(n1902), .B0(n1927), .B1(n1904), .Y(n1922) );
  OAI211X1 U2174 ( .A0(n1671), .A1(n1906), .B0(n2275), .C0(n1928), .Y(n1921)
         );
  AOI22X1 U2175 ( .A0(n1908), .A1(N209), .B0(n1909), .B1(N206), .Y(n1928) );
  OAI22X1 U2176 ( .A0(n1890), .A1(n1680), .B0(n1891), .B1(n1929), .Y(n1164) );
  NOR4X1 U2177 ( .A(n1930), .B(n1931), .C(n1932), .D(n1933), .Y(n1929) );
  OAI22X1 U2178 ( .A0(n1674), .A1(n1900), .B0(n1675), .B1(n1902), .Y(n1933) );
  MXI2X1 U2179 ( .A(n1934), .B(n1935), .S0(n1899), .Y(n1932) );
  OAI22X1 U2180 ( .A0(n1676), .A1(n1904), .B0(n1677), .B1(n1936), .Y(n1931) );
  OAI22X1 U2181 ( .A0(n1678), .A1(n1937), .B0(n1679), .B1(n1906), .Y(n1930) );
  CLKINVX1 U2182 ( .A(n1938), .Y(n1906) );
  CLKINVX1 U2183 ( .A(n1939), .Y(n1891) );
  AND2X1 U2184 ( .A(n1940), .B(n1939), .Y(n1890) );
  NAND2X1 U2185 ( .A(n1941), .B(n1942), .Y(n1939) );
  AOI31X1 U2186 ( .A0(N186), .A1(N188), .A2(N187), .B0(n1899), .Y(n1941) );
  NOR4X1 U2187 ( .A(n1943), .B(n1944), .C(n1274), .D(\mini_idx[3] ), .Y(n1899)
         );
  OAI21X1 U2188 ( .A0(n1945), .A1(n1905), .B0(n1946), .Y(n1163) );
  OAI2BB1X1 U2189 ( .A0N(n1947), .A1N(n1948), .B0(n1949), .Y(n1946) );
  AOI222XL U2190 ( .A0(n1950), .A1(N204), .B0(n1938), .B1(N213), .C0(n1909), 
        .C1(N207), .Y(n1948) );
  AOI221XL U2191 ( .A0(n1951), .A1(N201), .B0(n1917), .B1(N198), .C0(n1952), 
        .Y(n1947) );
  MXI2X1 U2192 ( .A(n1897), .B(n1898), .S0(n1953), .Y(n1952) );
  OAI22X1 U2193 ( .A0(n1945), .A1(n1670), .B0(n1954), .B1(n1955), .Y(n1162) );
  NOR4X1 U2194 ( .A(n1956), .B(n1957), .C(n1958), .D(n1959), .Y(n1955) );
  OAI22X1 U2195 ( .A0(n1918), .A1(n1900), .B0(n1464), .B1(n1902), .Y(n1959) );
  MXI2X1 U2196 ( .A(n1915), .B(n1916), .S0(n1953), .Y(n1958) );
  OAI22X1 U2197 ( .A0(n1960), .A1(n1904), .B0(n1559), .B1(n1936), .Y(n1957) );
  OAI2BB1X1 U2198 ( .A0N(n1938), .A1N(N214), .B0(n2275), .Y(n1956) );
  OAI22X1 U2199 ( .A0(n1945), .A1(n1671), .B0(n1954), .B1(n1961), .Y(n1161) );
  NOR4X1 U2200 ( .A(n1962), .B(n1963), .C(n1964), .D(n1965), .Y(n1961) );
  OAI22X1 U2201 ( .A0(n1416), .A1(n1900), .B0(n1927), .B1(n1902), .Y(n1965) );
  MXI2X1 U2202 ( .A(n1925), .B(n1926), .S0(n1953), .Y(n1964) );
  OAI22X1 U2203 ( .A0(n1511), .A1(n1904), .B0(n1966), .B1(n1936), .Y(n1963) );
  OAI2BB1X1 U2204 ( .A0N(n1938), .A1N(N215), .B0(n2275), .Y(n1962) );
  CLKINVX1 U2205 ( .A(n1949), .Y(n1954) );
  OAI21X1 U2206 ( .A0(n1945), .A1(n1679), .B0(n1967), .Y(n1160) );
  OAI2BB1X1 U2207 ( .A0N(n1968), .A1N(n1969), .B0(n1949), .Y(n1967) );
  AOI222XL U2208 ( .A0(n1950), .A1(\sort[4][3] ), .B0(n1938), .B1(\sort[7][3] ), .C0(n1909), .C1(\sort[5][3] ), .Y(n1969) );
  NOR2X1 U2209 ( .A(n1970), .B(n1971), .Y(n1938) );
  AOI221XL U2210 ( .A0(n1951), .A1(\sort[3][3] ), .B0(n1917), .B1(\sort[2][3] ), .C0(n1972), .Y(n1968) );
  MXI2X1 U2211 ( .A(n1934), .B(n1935), .S0(n1953), .Y(n1972) );
  AND3X2 U2212 ( .A(n1940), .B(n1949), .C(n1937), .Y(n1945) );
  NAND2X1 U2213 ( .A(n1973), .B(n1942), .Y(n1949) );
  AOI31X1 U2214 ( .A0(N188), .A1(n1881), .A2(N187), .B0(n1953), .Y(n1973) );
  NOR4X1 U2215 ( .A(n1943), .B(n1944), .C(N189), .D(\mini_idx[3] ), .Y(n1953)
         );
  AOI21X1 U2216 ( .A0(n1971), .A1(n1974), .B0(n1975), .Y(n1940) );
  OAI21X1 U2217 ( .A0(n1976), .A1(n1977), .B0(n1978), .Y(n1159) );
  OAI2BB1X1 U2218 ( .A0N(n1979), .A1N(n1980), .B0(n1981), .Y(n1978) );
  AOI221XL U2219 ( .A0(n1909), .A1(N210), .B0(n1908), .B1(N213), .C0(RST), .Y(
        n1980) );
  AOI221XL U2220 ( .A0(n1951), .A1(N204), .B0(n1917), .B1(N201), .C0(n1982), 
        .Y(n1979) );
  MXI2X1 U2221 ( .A(n1898), .B(n1897), .S0(n1983), .Y(n1982) );
  OAI22X1 U2222 ( .A0(n1976), .A1(n1559), .B0(n1984), .B1(n1985), .Y(n1158) );
  AOI211X1 U2223 ( .A0(n1917), .A1(N202), .B0(n1986), .C0(n1987), .Y(n1985) );
  MXI2X1 U2224 ( .A(n1916), .B(n1915), .S0(n1983), .Y(n1987) );
  OAI222X1 U2225 ( .A0(n1670), .A1(n1936), .B0(n1937), .B1(n1673), .C0(n1960), 
        .C1(n1902), .Y(n1986) );
  OAI21X1 U2226 ( .A0(n1976), .A1(n1966), .B0(n1988), .Y(n1157) );
  OAI2BB1X1 U2227 ( .A0N(n1989), .A1N(n1990), .B0(n1981), .Y(n1988) );
  AOI221XL U2228 ( .A0(n1909), .A1(N212), .B0(N215), .B1(n1908), .C0(RST), .Y(
        n1990) );
  AOI221XL U2229 ( .A0(n1951), .A1(N206), .B0(n1917), .B1(N203), .C0(n1991), 
        .Y(n1989) );
  MXI2X1 U2230 ( .A(n1926), .B(n1925), .S0(n1983), .Y(n1991) );
  OAI22X1 U2231 ( .A0(n1976), .A1(n1678), .B0(n1984), .B1(n1992), .Y(n1156) );
  AOI211X1 U2232 ( .A0(n1917), .A1(\sort[3][3] ), .B0(n1993), .C0(n1994), .Y(
        n1992) );
  MXI2X1 U2233 ( .A(n1935), .B(n1934), .S0(n1983), .Y(n1994) );
  OAI222X1 U2234 ( .A0(n1679), .A1(n1936), .B0(n1680), .B1(n1937), .C0(n1677), 
        .C1(n1902), .Y(n1993) );
  CLKINVX1 U2235 ( .A(n1908), .Y(n1937) );
  NOR2X1 U2236 ( .A(n1995), .B(n1970), .Y(n1908) );
  NOR4X1 U2237 ( .A(n1984), .B(n1974), .C(n1950), .D(n1975), .Y(n1976) );
  AND4X2 U2238 ( .A(n1995), .B(n1996), .C(n1997), .D(n1998), .Y(n1974) );
  NOR3X1 U2239 ( .A(n1999), .B(n2000), .C(n2001), .Y(n1998) );
  CLKINVX1 U2240 ( .A(n1981), .Y(n1984) );
  NAND3X1 U2241 ( .A(n1983), .B(n1971), .C(n1942), .Y(n1981) );
  NAND3X1 U2242 ( .A(N188), .B(n1245), .C(N186), .Y(n1971) );
  NAND2X1 U2243 ( .A(n2002), .B(N189), .Y(n1983) );
  OAI22X1 U2244 ( .A0(n2003), .A1(n1512), .B0(n2004), .B1(n2005), .Y(n1155) );
  AOI211X1 U2245 ( .A0(n1951), .A1(N207), .B0(n2006), .C0(n2007), .Y(n2005) );
  MXI2X1 U2246 ( .A(n1898), .B(n1897), .S0(n2008), .Y(n2007) );
  OAI22X1 U2247 ( .A0(n1905), .A1(n1904), .B0(n1672), .B1(n1936), .Y(n2006) );
  OAI22X1 U2248 ( .A0(n2003), .A1(n1960), .B0(n2004), .B1(n2009), .Y(n1154) );
  AOI211X1 U2249 ( .A0(n1951), .A1(N208), .B0(n2010), .C0(n2011), .Y(n2009) );
  MXI2X1 U2250 ( .A(n1916), .B(n1915), .S0(n2008), .Y(n2011) );
  OAI22X1 U2251 ( .A0(n1670), .A1(n1904), .B0(n1936), .B1(n1673), .Y(n2010) );
  OAI22X1 U2252 ( .A0(n2003), .A1(n1511), .B0(n2004), .B1(n2012), .Y(n1153) );
  AOI211X1 U2253 ( .A0(n1951), .A1(N209), .B0(n2013), .C0(n2014), .Y(n2012) );
  MXI2X1 U2254 ( .A(n1926), .B(n1925), .S0(n2008), .Y(n2014) );
  OAI221X1 U2255 ( .A0(n1936), .A1(n1652), .B0(n1671), .B1(n1904), .C0(n2275), 
        .Y(n2013) );
  OAI22X1 U2256 ( .A0(n2003), .A1(n1677), .B0(n2004), .B1(n2015), .Y(n1152) );
  AOI211X1 U2257 ( .A0(n1951), .A1(\sort[5][3] ), .B0(n2016), .C0(n2017), .Y(
        n2015) );
  MXI2X1 U2258 ( .A(n1935), .B(n1934), .S0(n2008), .Y(n2017) );
  OAI22X1 U2259 ( .A0(n1679), .A1(n1904), .B0(n1680), .B1(n1936), .Y(n2016) );
  CLKINVX1 U2260 ( .A(n1909), .Y(n1936) );
  NOR2X1 U2261 ( .A(n1996), .B(n1970), .Y(n1909) );
  NOR4BX1 U2262 ( .AN(n2018), .B(n1917), .C(n2004), .D(n1975), .Y(n2003) );
  AND3X2 U2263 ( .A(n2008), .B(n1995), .C(n1942), .Y(n2004) );
  NAND3X1 U2264 ( .A(n1881), .B(n1245), .C(N188), .Y(n1995) );
  NAND2X1 U2265 ( .A(n2002), .B(n1274), .Y(n2008) );
  NOR3X1 U2266 ( .A(N190), .B(\mini_idx[3] ), .C(n1943), .Y(n2002) );
  NAND2X1 U2267 ( .A(n2019), .B(n1996), .Y(n2018) );
  OAI22X1 U2268 ( .A0(n2020), .A1(n1903), .B0(n2021), .B1(n2022), .Y(n1151) );
  AOI211X1 U2269 ( .A0(n1917), .A1(N207), .B0(n2023), .C0(n2024), .Y(n2022) );
  MXI2X1 U2270 ( .A(n1898), .B(n1897), .S0(n2025), .Y(n2024) );
  OAI221X1 U2271 ( .A0(n1672), .A1(n1904), .B0(n1905), .B1(n1902), .C0(n2275), 
        .Y(n2023) );
  CLKINVX1 U2272 ( .A(N210), .Y(n1905) );
  OAI22X1 U2273 ( .A0(n2020), .A1(n1464), .B0(n2021), .B1(n2026), .Y(n1150) );
  AOI211X1 U2274 ( .A0(n1917), .A1(N208), .B0(n2027), .C0(n2028), .Y(n2026) );
  MXI2X1 U2275 ( .A(n1916), .B(n1915), .S0(n2025), .Y(n2028) );
  OAI221X1 U2276 ( .A0(n1904), .A1(n1673), .B0(n1670), .B1(n1902), .C0(n2275), 
        .Y(n2027) );
  CLKINVX1 U2277 ( .A(N214), .Y(n1673) );
  OAI22X1 U2278 ( .A0(n2020), .A1(n1927), .B0(n2021), .B1(n2029), .Y(n1149) );
  AOI211X1 U2279 ( .A0(n1917), .A1(N209), .B0(n2030), .C0(n2031), .Y(n2029) );
  MXI2X1 U2280 ( .A(n1926), .B(n1925), .S0(n2025), .Y(n2031) );
  OAI22X1 U2281 ( .A0(n1671), .A1(n1902), .B0(n1904), .B1(n1652), .Y(n2030) );
  OAI22X1 U2282 ( .A0(n2020), .A1(n1676), .B0(n2021), .B1(n2032), .Y(n1148) );
  AOI211X1 U2283 ( .A0(n1917), .A1(\sort[5][3] ), .B0(n2033), .C0(n2034), .Y(
        n2032) );
  MXI2X1 U2284 ( .A(n1935), .B(n1934), .S0(n2025), .Y(n2034) );
  OAI22X1 U2285 ( .A0(n1679), .A1(n1902), .B0(n1680), .B1(n1904), .Y(n2033) );
  CLKINVX1 U2286 ( .A(n1950), .Y(n1904) );
  NOR2X1 U2287 ( .A(n2035), .B(n1970), .Y(n1950) );
  CLKINVX1 U2288 ( .A(n1951), .Y(n1902) );
  NOR3X1 U2289 ( .A(n2021), .B(n1975), .C(n2019), .Y(n2020) );
  NOR2X1 U2290 ( .A(n2036), .B(n1999), .Y(n2019) );
  AND3X2 U2291 ( .A(n2025), .B(n1996), .C(n1942), .Y(n2021) );
  NAND3X1 U2292 ( .A(N186), .B(n1872), .C(N187), .Y(n1996) );
  CLKINVX1 U2293 ( .A(N188), .Y(n1872) );
  NAND3X1 U2294 ( .A(N189), .B(n2037), .C(N190), .Y(n2025) );
  OAI22X1 U2295 ( .A0(n2038), .A1(n1417), .B0(n2039), .B1(n2040), .Y(n1147) );
  AOI221XL U2296 ( .A0(n1951), .A1(N213), .B0(n1917), .B1(N210), .C0(n2041), 
        .Y(n2040) );
  MXI2X1 U2297 ( .A(n1898), .B(n1897), .S0(n2042), .Y(n2041) );
  OAI22X1 U2298 ( .A0(n2038), .A1(n1918), .B0(n2039), .B1(n2043), .Y(n1146) );
  AOI211X1 U2299 ( .A0(n1917), .A1(N211), .B0(n2044), .C0(n2045), .Y(n2043) );
  MXI2X1 U2300 ( .A(n1916), .B(n1915), .S0(n2042), .Y(n2045) );
  OAI2BB1X1 U2301 ( .A0N(n1951), .A1N(N214), .B0(n2275), .Y(n2044) );
  OAI22X1 U2302 ( .A0(n2038), .A1(n1416), .B0(n2039), .B1(n2046), .Y(n1145) );
  AOI221XL U2303 ( .A0(N215), .A1(n1951), .B0(n1917), .B1(N212), .C0(n2047), 
        .Y(n2046) );
  MXI2X1 U2304 ( .A(n1926), .B(n1925), .S0(n2042), .Y(n2047) );
  OAI22X1 U2305 ( .A0(n2038), .A1(n1675), .B0(n2039), .B1(n2048), .Y(n1144) );
  AOI221XL U2306 ( .A0(n1951), .A1(\sort[7][3] ), .B0(n1917), .B1(\sort[6][3] ), .C0(n2049), .Y(n2048) );
  MXI2X1 U2307 ( .A(n1935), .B(n1934), .S0(n2042), .Y(n2049) );
  NOR2X1 U2308 ( .A(n2050), .B(n1970), .Y(n1951) );
  NOR3BX1 U2309 ( .AN(n2036), .B(n2039), .C(n1975), .Y(n2038) );
  AND3X2 U2310 ( .A(n2042), .B(n2035), .C(n1942), .Y(n2039) );
  NOR2X1 U2311 ( .A(RST), .B(n1997), .Y(n1942) );
  CLKINVX1 U2312 ( .A(n1999), .Y(n2035) );
  NOR3X1 U2313 ( .A(N186), .B(N188), .C(n1245), .Y(n1999) );
  NAND3X1 U2314 ( .A(n2037), .B(n1274), .C(N190), .Y(n2042) );
  NAND2X1 U2315 ( .A(n2051), .B(n2050), .Y(n2036) );
  CLKINVX1 U2316 ( .A(n2001), .Y(n2050) );
  OAI22X1 U2317 ( .A0(n2052), .A1(n1901), .B0(n2053), .B1(n2054), .Y(n1143) );
  AOI211X1 U2318 ( .A0(n1917), .A1(N213), .B0(n2055), .C0(RST), .Y(n2054) );
  MXI2X1 U2319 ( .A(n1898), .B(n1897), .S0(n2056), .Y(n2055) );
  NAND2X1 U2320 ( .A(mini_num[0]), .B(n2057), .Y(n1897) );
  NAND2X1 U2321 ( .A(swap_num[0]), .B(n2057), .Y(n1898) );
  OAI221X1 U2322 ( .A0(n1915), .A1(n2058), .B0(n1916), .B1(n2056), .C0(n2059), 
        .Y(n1142) );
  AOI22X1 U2323 ( .A0(N196), .A1(n2060), .B0(N214), .B1(n1917), .Y(n2059) );
  NAND2X1 U2324 ( .A(swap_num[1]), .B(n2057), .Y(n1916) );
  NAND2X1 U2325 ( .A(mini_num[1]), .B(n2057), .Y(n1915) );
  OAI221X1 U2326 ( .A0(n1925), .A1(n2058), .B0(n1926), .B1(n2056), .C0(n2061), 
        .Y(n1141) );
  AOI22X1 U2327 ( .A0(N197), .A1(n2060), .B0(N215), .B1(n1917), .Y(n2061) );
  CLKINVX1 U2328 ( .A(n2052), .Y(n2060) );
  NAND2X1 U2329 ( .A(swap_num[2]), .B(n2057), .Y(n1926) );
  NAND2X1 U2330 ( .A(mini_num[2]), .B(n2057), .Y(n1925) );
  OAI221X1 U2331 ( .A0(n1934), .A1(n2058), .B0(n2052), .B1(n1674), .C0(n2062), 
        .Y(n1140) );
  AOI2BB2X1 U2332 ( .B0(n1917), .B1(\sort[7][3] ), .A0N(n2056), .A1N(n1935), 
        .Y(n2062) );
  NAND2X1 U2333 ( .A(swap_num[3]), .B(n2057), .Y(n1935) );
  NOR3X1 U2334 ( .A(n2053), .B(n1975), .C(n2051), .Y(n2052) );
  NOR2X1 U2335 ( .A(n1970), .B(n2000), .Y(n2051) );
  CLKINVX1 U2336 ( .A(n1997), .Y(n1970) );
  OR2X1 U2337 ( .A(n2063), .B(n2053), .Y(n2058) );
  NOR4X1 U2338 ( .A(n2063), .B(n1917), .C(n2001), .D(RST), .Y(n2053) );
  NOR3X1 U2339 ( .A(N187), .B(N188), .C(n1881), .Y(n2001) );
  CLKINVX1 U2340 ( .A(N186), .Y(n1881) );
  CLKINVX1 U2341 ( .A(n1900), .Y(n1917) );
  NAND2X1 U2342 ( .A(n2000), .B(n1997), .Y(n1900) );
  CLKINVX1 U2343 ( .A(n2056), .Y(n2063) );
  NAND3X1 U2344 ( .A(n2037), .B(n1944), .C(N189), .Y(n2056) );
  NAND2X1 U2345 ( .A(mini_num[3]), .B(n2057), .Y(n1934) );
  OAI222X1 U2346 ( .A0(n1876), .A1(n2064), .B0(n147), .B1(n1878), .C0(n1879), 
        .C1(n2065), .Y(n1139) );
  OAI222X1 U2347 ( .A0(n1876), .A1(n2066), .B0(n1878), .B1(n1321), .C0(n1879), 
        .C1(n2067), .Y(n1138) );
  CLKINVX1 U2348 ( .A(swap_num[2]), .Y(n2066) );
  OAI222X1 U2349 ( .A0(n1876), .A1(n2068), .B0(n1878), .B1(n2069), .C0(n1879), 
        .C1(n2070), .Y(n1137) );
  NAND3X1 U2350 ( .A(n2071), .B(n2072), .C(n2057), .Y(n1879) );
  CLKINVX1 U2351 ( .A(\sort[0][3] ), .Y(n2069) );
  NOR3BX1 U2352 ( .AN(n2071), .B(n1997), .C(n1975), .Y(n1878) );
  NOR3BX1 U2353 ( .AN(n1661), .B(nx_state[3]), .C(RST), .Y(n1975) );
  NOR2X1 U2354 ( .A(n1661), .B(RST), .Y(n1997) );
  OR4X1 U2355 ( .A(n2073), .B(state[0]), .C(state[1]), .D(state[2]), .Y(n1661)
         );
  NAND3BX1 U2356 ( .AN(n2000), .B(n2275), .C(n2072), .Y(n2071) );
  NOR3X1 U2357 ( .A(N187), .B(N188), .C(N186), .Y(n2000) );
  CLKINVX1 U2358 ( .A(swap_num[3]), .Y(n2068) );
  NAND2BX1 U2359 ( .AN(n2072), .B(n2057), .Y(n1876) );
  AND2X1 U2360 ( .A(nx_state[3]), .B(n2275), .Y(n2057) );
  NOR2X1 U2361 ( .A(n1658), .B(n1690), .Y(nx_state[3]) );
  NAND3X1 U2362 ( .A(n1274), .B(n1944), .C(n2037), .Y(n2072) );
  NOR2X1 U2363 ( .A(\mini_idx[3] ), .B(N191), .Y(n2037) );
  OAI2BB2X1 U2364 ( .B0(n193), .B1(n2074), .A0N(N1760), .A1N(n2075), .Y(n1136)
         );
  OAI2BB2X1 U2365 ( .B0(n192), .B1(n2074), .A0N(N1761), .A1N(n2075), .Y(n1135)
         );
  OAI2BB2X1 U2366 ( .B0(n191), .B1(n2074), .A0N(N1762), .A1N(n2075), .Y(n1134)
         );
  OAI2BB2X1 U2367 ( .B0(n190), .B1(n2074), .A0N(N1763), .A1N(n2075), .Y(n1133)
         );
  OAI2BB2X1 U2368 ( .B0(n189), .B1(n2074), .A0N(N1764), .A1N(n2075), .Y(n1132)
         );
  OAI2BB2X1 U2369 ( .B0(n188), .B1(n2074), .A0N(N1765), .A1N(n2075), .Y(n1131)
         );
  OAI2BB2X1 U2370 ( .B0(n187), .B1(n2074), .A0N(N1766), .A1N(n2075), .Y(n1130)
         );
  OAI2BB2X1 U2371 ( .B0(n186), .B1(n2074), .A0N(N1767), .A1N(n2075), .Y(n1129)
         );
  OAI2BB2X1 U2372 ( .B0(n185), .B1(n2074), .A0N(N1768), .A1N(n2075), .Y(n1128)
         );
  OAI2BB2X1 U2373 ( .B0(n180), .B1(n2074), .A0N(N1769), .A1N(n2075), .Y(n1127)
         );
  CLKINVX1 U2374 ( .A(n2076), .Y(n2075) );
  NAND2X1 U2375 ( .A(n2275), .B(n2076), .Y(n2074) );
  NAND3X1 U2376 ( .A(state[1]), .B(n1658), .C(n2077), .Y(n2076) );
  OAI211X1 U2377 ( .A0(n2078), .A1(n2079), .B0(n2080), .C0(n2081), .Y(n1126)
         );
  MXI2X1 U2378 ( .A(n2082), .B(n1886), .S0(n2083), .Y(n2081) );
  OAI211X1 U2379 ( .A0(n2084), .A1(n2078), .B0(n2080), .C0(n2085), .Y(n1125)
         );
  MXI2X1 U2380 ( .A(n2086), .B(n2087), .S0(n105), .Y(n2085) );
  NOR2X1 U2381 ( .A(n2083), .B(n2088), .Y(n2087) );
  CLKINVX1 U2382 ( .A(n2089), .Y(n2086) );
  OAI211X1 U2383 ( .A0(n2090), .A1(n2078), .B0(n2080), .C0(n2091), .Y(n1124)
         );
  MXI2X1 U2384 ( .A(n1884), .B(n2092), .S0(n103), .Y(n2091) );
  NOR3X1 U2385 ( .A(n2088), .B(n105), .C(n2083), .Y(n2092) );
  OAI2BB1X1 U2386 ( .A0N(n105), .A1N(n1886), .B0(n2089), .Y(n1884) );
  AOI21X1 U2387 ( .A0(n2083), .A1(n1886), .B0(n2082), .Y(n2089) );
  NAND2X1 U2388 ( .A(n1886), .B(n1687), .Y(n2080) );
  NOR4BX1 U2389 ( .AN(n2272), .B(n2083), .C(n103), .D(n105), .Y(n1687) );
  OAI222X1 U2390 ( .A0(n1887), .A1(n1274), .B0(n2083), .B1(n1889), .C0(n2078), 
        .C1(n2079), .Y(n1123) );
  CLKINVX1 U2391 ( .A(N183), .Y(n2083) );
  OAI222X1 U2392 ( .A0(n2084), .A1(n2078), .B0(n105), .B1(n1889), .C0(n1887), 
        .C1(n1944), .Y(n1122) );
  CLKINVX1 U2393 ( .A(N190), .Y(n1944) );
  XOR2X1 U2394 ( .A(n1883), .B(n2079), .Y(n2084) );
  OAI222X1 U2395 ( .A0(n2090), .A1(n2078), .B0(n103), .B1(n1889), .C0(n1887), 
        .C1(n1943), .Y(n1121) );
  CLKINVX1 U2396 ( .A(N191), .Y(n1943) );
  AOI21X1 U2397 ( .A0(n2093), .A1(n1886), .B0(n2082), .Y(n1887) );
  NOR2BX1 U2398 ( .AN(n1690), .B(n1871), .Y(n2082) );
  OR2X1 U2399 ( .A(n2093), .B(n2088), .Y(n1889) );
  CLKINVX1 U2400 ( .A(n1886), .Y(n2088) );
  NOR2X1 U2401 ( .A(n1871), .B(n1690), .Y(n1886) );
  NAND3X1 U2402 ( .A(state[1]), .B(n2073), .C(state[2]), .Y(n1690) );
  CLKINVX1 U2403 ( .A(state[3]), .Y(n2073) );
  OR2X1 U2404 ( .A(RST), .B(n1659), .Y(n1871) );
  OAI22X1 U2405 ( .A0(n2094), .A1(n2095), .B0(n2096), .B1(n2097), .Y(n2093) );
  NOR2X1 U2406 ( .A(swap_num[3]), .B(n2098), .Y(n2097) );
  AOI222XL U2407 ( .A0(swap_num[3]), .A1(n2098), .B0(swap_num[2]), .B1(n2099), 
        .C0(n2100), .C1(n2101), .Y(n2096) );
  OR2X1 U2408 ( .A(n2101), .B(n2100), .Y(n2099) );
  OAI2BB2X1 U2409 ( .B0(n2102), .B1(n1877), .A0N(n2103), .A1N(n2104), .Y(n2100) );
  CLKINVX1 U2410 ( .A(swap_num[1]), .Y(n1877) );
  NOR2X1 U2411 ( .A(n2104), .B(n2103), .Y(n2102) );
  NAND2X1 U2412 ( .A(iter_num[0]), .B(n2064), .Y(n2104) );
  CLKINVX1 U2413 ( .A(swap_num[0]), .Y(n2064) );
  CLKINVX1 U2414 ( .A(iter_num[2]), .Y(n2101) );
  CLKINVX1 U2415 ( .A(iter_num[3]), .Y(n2098) );
  NOR2X1 U2416 ( .A(iter_num[3]), .B(n2070), .Y(n2095) );
  AOI222XL U2417 ( .A0(iter_num[3]), .A1(n2070), .B0(n2105), .B1(n2067), .C0(
        iter_num[2]), .C1(n2106), .Y(n2094) );
  CLKINVX1 U2418 ( .A(mini_num[2]), .Y(n2067) );
  OR2X1 U2419 ( .A(n2106), .B(iter_num[2]), .Y(n2105) );
  OAI22X1 U2420 ( .A0(n2107), .A1(n2103), .B0(mini_num[1]), .B1(n2108), .Y(
        n2106) );
  AND2X1 U2421 ( .A(n2103), .B(n2107), .Y(n2108) );
  CLKINVX1 U2422 ( .A(iter_num[1]), .Y(n2103) );
  NOR2X1 U2423 ( .A(n2065), .B(iter_num[0]), .Y(n2107) );
  CLKINVX1 U2424 ( .A(mini_num[0]), .Y(n2065) );
  CLKINVX1 U2425 ( .A(mini_num[3]), .Y(n2070) );
  NAND2X1 U2426 ( .A(n1659), .B(n2275), .Y(n2078) );
  NOR3X1 U2427 ( .A(n1658), .B(state[2]), .C(n1657), .Y(n1659) );
  CLKINVX1 U2428 ( .A(n1688), .Y(n1657) );
  AOI2BB1X1 U2429 ( .A0N(n1883), .A1N(n1882), .B0(n1875), .Y(n2090) );
  CLKINVX1 U2430 ( .A(n2079), .Y(n1882) );
  OAI22X1 U2431 ( .A0(n2109), .A1(n2110), .B0(n2111), .B1(n1875), .Y(n2079) );
  AOI21X1 U2432 ( .A0(n2112), .A1(n2113), .B0(n2114), .Y(n2111) );
  OAI32X1 U2433 ( .A0(n2115), .A1(\sort[3][3] ), .A2(\sort[1][3] ), .B0(n2116), 
        .B1(n1675), .Y(n2112) );
  NOR2X1 U2434 ( .A(n2117), .B(n1674), .Y(n2116) );
  CLKINVX1 U2435 ( .A(\sort[1][3] ), .Y(n1674) );
  CLKINVX1 U2436 ( .A(n2117), .Y(n2115) );
  OAI22X1 U2437 ( .A0(N197), .A1(n2118), .B0(n2119), .B1(n1416), .Y(n2117) );
  AND2X1 U2438 ( .A(n2118), .B(N197), .Y(n2119) );
  OAI2BB2X1 U2439 ( .B0(N199), .B1(n2120), .A0N(n1683), .A1N(N196), .Y(n2118)
         );
  NOR2X1 U2440 ( .A(N196), .B(n1683), .Y(n2120) );
  NAND2X1 U2441 ( .A(N198), .B(n1901), .Y(n1683) );
  CLKINVX1 U2442 ( .A(N195), .Y(n1901) );
  AOI2BB1X1 U2443 ( .A0N(n2121), .A1N(n1875), .B0(n2109), .Y(n1883) );
  NAND4BX1 U2444 ( .AN(n2109), .B(n2122), .C(n2123), .D(n2110), .Y(n1875) );
  OAI22X1 U2445 ( .A0(n2124), .A1(n1678), .B0(\sort[6][3] ), .B1(n2125), .Y(
        n2110) );
  AND2X1 U2446 ( .A(n2124), .B(n1678), .Y(n2125) );
  CLKINVX1 U2447 ( .A(\sort[5][3] ), .Y(n1678) );
  OAI22X1 U2448 ( .A0(N209), .A1(n2126), .B0(n2127), .B1(n1671), .Y(n2124) );
  AND2X1 U2449 ( .A(n2126), .B(N209), .Y(n2127) );
  OAI2BB2X1 U2450 ( .B0(N211), .B1(n2128), .A0N(n1684), .A1N(N208), .Y(n2126)
         );
  NOR2X1 U2451 ( .A(N208), .B(n1684), .Y(n2128) );
  NAND2X1 U2452 ( .A(N210), .B(n1977), .Y(n1684) );
  OAI21X1 U2453 ( .A0(n2129), .A1(n1677), .B0(\sort[5][3] ), .Y(n2123) );
  NAND2X1 U2454 ( .A(n2129), .B(n1677), .Y(n2122) );
  CLKINVX1 U2455 ( .A(\sort[4][3] ), .Y(n1677) );
  OAI22X1 U2456 ( .A0(N206), .A1(n2130), .B0(n2131), .B1(n1966), .Y(n2129) );
  CLKINVX1 U2457 ( .A(N209), .Y(n1966) );
  AND2X1 U2458 ( .A(n2130), .B(N206), .Y(n2131) );
  OAI21X1 U2459 ( .A0(n1960), .A1(N208), .B0(n2132), .Y(n2130) );
  OAI22X1 U2460 ( .A0(N204), .A1(n1977), .B0(N205), .B1(n1559), .Y(n2132) );
  CLKINVX1 U2461 ( .A(N207), .Y(n1977) );
  OAI21X1 U2462 ( .A0(n1680), .A1(\sort[6][3] ), .B0(n2133), .Y(n2109) );
  OAI222X1 U2463 ( .A0(n2134), .A1(n1671), .B0(N215), .B1(n2135), .C0(
        \sort[7][3] ), .C1(n1679), .Y(n2133) );
  CLKINVX1 U2464 ( .A(\sort[6][3] ), .Y(n1679) );
  NOR2X1 U2465 ( .A(N212), .B(n2136), .Y(n2135) );
  CLKINVX1 U2466 ( .A(N212), .Y(n1671) );
  CLKINVX1 U2467 ( .A(n2136), .Y(n2134) );
  OAI22X1 U2468 ( .A0(n2137), .A1(n1670), .B0(N214), .B1(n2138), .Y(n2136) );
  AND2X1 U2469 ( .A(n1670), .B(n2137), .Y(n2138) );
  CLKINVX1 U2470 ( .A(N211), .Y(n1670) );
  NOR2X1 U2471 ( .A(n1672), .B(N210), .Y(n2137) );
  CLKINVX1 U2472 ( .A(N213), .Y(n1672) );
  CLKINVX1 U2473 ( .A(\sort[7][3] ), .Y(n1680) );
  AOI211X1 U2474 ( .A0(\sort[3][3] ), .A1(n1675), .B0(n2114), .C0(n2139), .Y(
        n2121) );
  CLKINVX1 U2475 ( .A(n2113), .Y(n2139) );
  OAI22X1 U2476 ( .A0(\sort[3][3] ), .A1(n1675), .B0(n2140), .B1(n2141), .Y(
        n2113) );
  NOR2X1 U2477 ( .A(N200), .B(n2142), .Y(n2141) );
  AOI21X1 U2478 ( .A0(N200), .A1(n2142), .B0(n1927), .Y(n2140) );
  OAI22X1 U2479 ( .A0(n2143), .A1(n1918), .B0(N202), .B1(n2144), .Y(n2142) );
  AND2X1 U2480 ( .A(n1918), .B(n2143), .Y(n2144) );
  CLKINVX1 U2481 ( .A(N199), .Y(n1918) );
  NOR2X1 U2482 ( .A(n1903), .B(N198), .Y(n2143) );
  CLKINVX1 U2483 ( .A(N201), .Y(n1903) );
  OAI2BB1X1 U2484 ( .A0N(n1676), .A1N(\sort[4][3] ), .B0(n2145), .Y(n2114) );
  OAI222X1 U2485 ( .A0(n1927), .A1(n2146), .B0(N206), .B1(n2147), .C0(
        \sort[4][3] ), .C1(n1676), .Y(n2145) );
  AND2X1 U2486 ( .A(n2146), .B(n1927), .Y(n2147) );
  OAI32X1 U2487 ( .A0(n1512), .A1(N201), .A2(n2148), .B0(N202), .B1(n1960), 
        .Y(n2146) );
  CLKINVX1 U2488 ( .A(N205), .Y(n1960) );
  NOR2X1 U2489 ( .A(N205), .B(n1464), .Y(n2148) );
  CLKINVX1 U2490 ( .A(N203), .Y(n1927) );
  CLKINVX1 U2491 ( .A(\sort[3][3] ), .Y(n1676) );
  CLKINVX1 U2492 ( .A(\sort[2][3] ), .Y(n1675) );
  OAI22X1 U2493 ( .A0(n2149), .A1(n2150), .B0(n2151), .B1(n2152), .Y(n1120) );
  MXI2X1 U2494 ( .A(n2152), .B(n1751), .S0(J[0]), .Y(n1119) );
  OAI222X1 U2495 ( .A0(n2153), .A1(n1738), .B0(n2154), .B1(n2152), .C0(n2155), 
        .C1(n1751), .Y(n1118) );
  NAND2X1 U2496 ( .A(n1694), .B(n1751), .Y(n2152) );
  MXI2X1 U2497 ( .A(n2156), .B(n2157), .S0(n1789), .Y(n1117) );
  OR2X1 U2498 ( .A(n2158), .B(n1771), .Y(n2157) );
  MXI2X1 U2499 ( .A(n2149), .B(n2158), .S0(n1771), .Y(n1116) );
  OAI222X1 U2500 ( .A0(n2159), .A1(n2158), .B0(RST), .B1(n1753), .C0(n2156), 
        .C1(n1790), .Y(n1115) );
  CLKINVX1 U2501 ( .A(n2160), .Y(n2156) );
  OAI2BB1X1 U2502 ( .A0N(n1771), .A1N(n2275), .B0(n2149), .Y(n2160) );
  NOR2X1 U2503 ( .A(n1694), .B(n2161), .Y(n2149) );
  NAND2X1 U2504 ( .A(W[2]), .B(n1789), .Y(n1753) );
  NAND3X1 U2505 ( .A(n1751), .B(n2275), .C(n2162), .Y(n2158) );
  OAI2BB2X1 U2506 ( .B0(n1722), .B1(n2163), .A0N(\cost1[0][6] ), .A1N(n2164), 
        .Y(n1114) );
  OAI2BB2X1 U2507 ( .B0(n1694), .B1(n2165), .A0N(\cost1[7][0] ), .A1N(n2166), 
        .Y(n1113) );
  OAI2BB2X1 U2508 ( .B0(n1694), .B1(n2167), .A0N(\cost1[7][1] ), .A1N(n2166), 
        .Y(n1112) );
  OAI2BB2X1 U2509 ( .B0(n1694), .B1(n2168), .A0N(\cost1[7][2] ), .A1N(n2166), 
        .Y(n1111) );
  OAI2BB2X1 U2510 ( .B0(n1694), .B1(n2169), .A0N(\cost1[7][3] ), .A1N(n2166), 
        .Y(n1110) );
  OAI2BB2X1 U2511 ( .B0(n1694), .B1(n2170), .A0N(\cost1[7][4] ), .A1N(n2166), 
        .Y(n1109) );
  OAI2BB2X1 U2512 ( .B0(n1694), .B1(n2171), .A0N(\cost1[7][5] ), .A1N(n2166), 
        .Y(n1108) );
  OAI2BB2X1 U2513 ( .B0(n1694), .B1(n2163), .A0N(\cost1[7][6] ), .A1N(n2166), 
        .Y(n1107) );
  NAND2X1 U2514 ( .A(n1738), .B(n2172), .Y(n2166) );
  OAI2BB2X1 U2515 ( .B0(n1701), .B1(n2165), .A0N(\cost1[6][0] ), .A1N(n2173), 
        .Y(n1106) );
  OAI2BB2X1 U2516 ( .B0(n1701), .B1(n2167), .A0N(\cost1[6][1] ), .A1N(n2173), 
        .Y(n1105) );
  OAI2BB2X1 U2517 ( .B0(n1701), .B1(n2168), .A0N(\cost1[6][2] ), .A1N(n2173), 
        .Y(n1104) );
  OAI2BB2X1 U2518 ( .B0(n1701), .B1(n2169), .A0N(\cost1[6][3] ), .A1N(n2173), 
        .Y(n1103) );
  OAI2BB2X1 U2519 ( .B0(n1701), .B1(n2170), .A0N(\cost1[6][4] ), .A1N(n2173), 
        .Y(n1102) );
  OAI2BB2X1 U2520 ( .B0(n1701), .B1(n2171), .A0N(\cost1[6][5] ), .A1N(n2173), 
        .Y(n1101) );
  OAI2BB2X1 U2521 ( .B0(n1701), .B1(n2163), .A0N(\cost1[6][6] ), .A1N(n2173), 
        .Y(n1100) );
  NAND2X1 U2522 ( .A(n1706), .B(n2172), .Y(n2173) );
  OAI2BB2X1 U2523 ( .B0(n1707), .B1(n2165), .A0N(\cost1[5][0] ), .A1N(n2174), 
        .Y(n1099) );
  OAI2BB2X1 U2524 ( .B0(n1707), .B1(n2167), .A0N(\cost1[5][1] ), .A1N(n2174), 
        .Y(n1098) );
  OAI2BB2X1 U2525 ( .B0(n1707), .B1(n2168), .A0N(\cost1[5][2] ), .A1N(n2174), 
        .Y(n1097) );
  OAI2BB2X1 U2526 ( .B0(n1707), .B1(n2169), .A0N(\cost1[5][3] ), .A1N(n2174), 
        .Y(n1096) );
  OAI2BB2X1 U2527 ( .B0(n1707), .B1(n2170), .A0N(\cost1[5][4] ), .A1N(n2174), 
        .Y(n1095) );
  OAI2BB2X1 U2528 ( .B0(n1707), .B1(n2171), .A0N(\cost1[5][5] ), .A1N(n2174), 
        .Y(n1094) );
  OAI2BB2X1 U2529 ( .B0(n1707), .B1(n2163), .A0N(\cost1[5][6] ), .A1N(n2174), 
        .Y(n1093) );
  NAND2X1 U2530 ( .A(n1709), .B(n2172), .Y(n2174) );
  OAI2BB2X1 U2531 ( .B0(n1710), .B1(n2165), .A0N(\cost1[4][0] ), .A1N(n2175), 
        .Y(n1092) );
  OAI2BB2X1 U2532 ( .B0(n1710), .B1(n2167), .A0N(\cost1[4][1] ), .A1N(n2175), 
        .Y(n1091) );
  OAI2BB2X1 U2533 ( .B0(n1710), .B1(n2168), .A0N(\cost1[4][2] ), .A1N(n2175), 
        .Y(n1090) );
  OAI2BB2X1 U2534 ( .B0(n1710), .B1(n2169), .A0N(\cost1[4][3] ), .A1N(n2175), 
        .Y(n1089) );
  OAI2BB2X1 U2535 ( .B0(n1710), .B1(n2170), .A0N(\cost1[4][4] ), .A1N(n2175), 
        .Y(n1088) );
  OAI2BB2X1 U2536 ( .B0(n1710), .B1(n2171), .A0N(\cost1[4][5] ), .A1N(n2175), 
        .Y(n1087) );
  OAI2BB2X1 U2537 ( .B0(n1710), .B1(n2163), .A0N(\cost1[4][6] ), .A1N(n2175), 
        .Y(n1086) );
  NAND2X1 U2538 ( .A(n1712), .B(n2172), .Y(n2175) );
  OAI2BB2X1 U2539 ( .B0(n1713), .B1(n2165), .A0N(\cost1[3][0] ), .A1N(n2176), 
        .Y(n1085) );
  OAI2BB2X1 U2540 ( .B0(n1713), .B1(n2167), .A0N(\cost1[3][1] ), .A1N(n2176), 
        .Y(n1084) );
  OAI2BB2X1 U2541 ( .B0(n1713), .B1(n2168), .A0N(\cost1[3][2] ), .A1N(n2176), 
        .Y(n1083) );
  OAI2BB2X1 U2542 ( .B0(n1713), .B1(n2169), .A0N(\cost1[3][3] ), .A1N(n2176), 
        .Y(n1082) );
  OAI2BB2X1 U2543 ( .B0(n1713), .B1(n2170), .A0N(\cost1[3][4] ), .A1N(n2176), 
        .Y(n1081) );
  OAI2BB2X1 U2544 ( .B0(n1713), .B1(n2171), .A0N(\cost1[3][5] ), .A1N(n2176), 
        .Y(n1080) );
  OAI2BB2X1 U2545 ( .B0(n1713), .B1(n2163), .A0N(\cost1[3][6] ), .A1N(n2176), 
        .Y(n1079) );
  NAND2X1 U2546 ( .A(n1715), .B(n2172), .Y(n2176) );
  OAI2BB2X1 U2547 ( .B0(n1716), .B1(n2165), .A0N(\cost1[2][0] ), .A1N(n2177), 
        .Y(n1078) );
  OAI2BB2X1 U2548 ( .B0(n1716), .B1(n2167), .A0N(\cost1[2][1] ), .A1N(n2177), 
        .Y(n1077) );
  OAI2BB2X1 U2549 ( .B0(n1716), .B1(n2168), .A0N(\cost1[2][2] ), .A1N(n2177), 
        .Y(n1076) );
  OAI2BB2X1 U2550 ( .B0(n1716), .B1(n2169), .A0N(\cost1[2][3] ), .A1N(n2177), 
        .Y(n1075) );
  OAI2BB2X1 U2551 ( .B0(n1716), .B1(n2170), .A0N(\cost1[2][4] ), .A1N(n2177), 
        .Y(n1074) );
  OAI2BB2X1 U2552 ( .B0(n1716), .B1(n2171), .A0N(\cost1[2][5] ), .A1N(n2177), 
        .Y(n1073) );
  OAI2BB2X1 U2553 ( .B0(n1716), .B1(n2163), .A0N(\cost1[2][6] ), .A1N(n2177), 
        .Y(n1072) );
  NAND2X1 U2554 ( .A(n1718), .B(n2172), .Y(n2177) );
  OAI2BB2X1 U2555 ( .B0(n1719), .B1(n2165), .A0N(\cost1[1][0] ), .A1N(n2178), 
        .Y(n1071) );
  OAI2BB2X1 U2556 ( .B0(n1719), .B1(n2167), .A0N(\cost1[1][1] ), .A1N(n2178), 
        .Y(n1070) );
  OAI2BB2X1 U2557 ( .B0(n1719), .B1(n2168), .A0N(\cost1[1][2] ), .A1N(n2178), 
        .Y(n1069) );
  OAI2BB2X1 U2558 ( .B0(n1719), .B1(n2169), .A0N(\cost1[1][3] ), .A1N(n2178), 
        .Y(n1068) );
  OAI2BB2X1 U2559 ( .B0(n1719), .B1(n2170), .A0N(\cost1[1][4] ), .A1N(n2178), 
        .Y(n1067) );
  OAI2BB2X1 U2560 ( .B0(n1719), .B1(n2171), .A0N(\cost1[1][5] ), .A1N(n2178), 
        .Y(n1066) );
  OAI2BB2X1 U2561 ( .B0(n1719), .B1(n2163), .A0N(\cost1[1][6] ), .A1N(n2178), 
        .Y(n1065) );
  NAND2X1 U2562 ( .A(n1721), .B(n2172), .Y(n2178) );
  NAND2X1 U2563 ( .A(n2179), .B(n1747), .Y(n2163) );
  OAI2BB2X1 U2564 ( .B0(n1722), .B1(n2165), .A0N(\cost1[0][0] ), .A1N(n2164), 
        .Y(n1064) );
  NAND2X1 U2565 ( .A(n2179), .B(n1748), .Y(n2165) );
  OAI2BB2X1 U2566 ( .B0(n1722), .B1(n2167), .A0N(\cost1[0][1] ), .A1N(n2164), 
        .Y(n1063) );
  NAND2X1 U2567 ( .A(n2179), .B(n1749), .Y(n2167) );
  OAI2BB2X1 U2568 ( .B0(n1722), .B1(n2168), .A0N(\cost1[0][2] ), .A1N(n2164), 
        .Y(n1062) );
  NAND2X1 U2569 ( .A(n2179), .B(n1724), .Y(n2168) );
  OAI2BB2X1 U2570 ( .B0(n1722), .B1(n2169), .A0N(\cost1[0][3] ), .A1N(n2164), 
        .Y(n1061) );
  NAND2X1 U2571 ( .A(n2179), .B(n1726), .Y(n2169) );
  OAI2BB2X1 U2572 ( .B0(n1722), .B1(n2170), .A0N(\cost1[0][4] ), .A1N(n2164), 
        .Y(n1060) );
  NAND2X1 U2573 ( .A(n2179), .B(n1727), .Y(n2170) );
  OAI2BB2X1 U2574 ( .B0(n1722), .B1(n2171), .A0N(\cost1[0][5] ), .A1N(n2164), 
        .Y(n1059) );
  NAND2X1 U2575 ( .A(n1750), .B(n2172), .Y(n2164) );
  OAI2BB1X1 U2576 ( .A0N(n1751), .A1N(n2179), .B0(n1752), .Y(n2172) );
  NAND2X1 U2577 ( .A(n2179), .B(n1728), .Y(n2171) );
  NOR3X1 U2578 ( .A(W[1]), .B(W[2]), .C(n1771), .Y(n2179) );
  OAI2BB2X1 U2579 ( .B0(n1722), .B1(n2180), .A0N(\cost2[0][6] ), .A1N(n2181), 
        .Y(n1058) );
  OAI2BB2X1 U2580 ( .B0(n1694), .B1(n2182), .A0N(\cost2[7][0] ), .A1N(n2183), 
        .Y(n1057) );
  OAI2BB2X1 U2581 ( .B0(n1694), .B1(n2184), .A0N(\cost2[7][1] ), .A1N(n2183), 
        .Y(n1056) );
  OAI2BB2X1 U2582 ( .B0(n1694), .B1(n2185), .A0N(\cost2[7][2] ), .A1N(n2183), 
        .Y(n1055) );
  OAI2BB2X1 U2583 ( .B0(n1694), .B1(n2186), .A0N(\cost2[7][3] ), .A1N(n2183), 
        .Y(n1054) );
  OAI2BB2X1 U2584 ( .B0(n1694), .B1(n2187), .A0N(\cost2[7][4] ), .A1N(n2183), 
        .Y(n1053) );
  OAI2BB2X1 U2585 ( .B0(n1694), .B1(n2188), .A0N(\cost2[7][5] ), .A1N(n2183), 
        .Y(n1052) );
  OAI2BB2X1 U2586 ( .B0(n1694), .B1(n2180), .A0N(\cost2[7][6] ), .A1N(n2183), 
        .Y(n1051) );
  NAND2X1 U2587 ( .A(n1738), .B(n2189), .Y(n2183) );
  OAI2BB2X1 U2588 ( .B0(n1701), .B1(n2182), .A0N(\cost2[6][0] ), .A1N(n2190), 
        .Y(n1050) );
  OAI2BB2X1 U2589 ( .B0(n1701), .B1(n2184), .A0N(\cost2[6][1] ), .A1N(n2190), 
        .Y(n1049) );
  OAI2BB2X1 U2590 ( .B0(n1701), .B1(n2185), .A0N(\cost2[6][2] ), .A1N(n2190), 
        .Y(n1048) );
  OAI2BB2X1 U2591 ( .B0(n1701), .B1(n2186), .A0N(\cost2[6][3] ), .A1N(n2190), 
        .Y(n1047) );
  OAI2BB2X1 U2592 ( .B0(n1701), .B1(n2187), .A0N(\cost2[6][4] ), .A1N(n2190), 
        .Y(n1046) );
  OAI2BB2X1 U2593 ( .B0(n1701), .B1(n2188), .A0N(\cost2[6][5] ), .A1N(n2190), 
        .Y(n1045) );
  OAI2BB2X1 U2594 ( .B0(n1701), .B1(n2180), .A0N(\cost2[6][6] ), .A1N(n2190), 
        .Y(n1044) );
  NAND2X1 U2595 ( .A(n2189), .B(n1706), .Y(n2190) );
  CLKINVX1 U2596 ( .A(n1701), .Y(n1706) );
  OAI2BB2X1 U2597 ( .B0(n1707), .B1(n2182), .A0N(\cost2[5][0] ), .A1N(n2191), 
        .Y(n1043) );
  OAI2BB2X1 U2598 ( .B0(n1707), .B1(n2184), .A0N(\cost2[5][1] ), .A1N(n2191), 
        .Y(n1042) );
  OAI2BB2X1 U2599 ( .B0(n1707), .B1(n2185), .A0N(\cost2[5][2] ), .A1N(n2191), 
        .Y(n1041) );
  OAI2BB2X1 U2600 ( .B0(n1707), .B1(n2186), .A0N(\cost2[5][3] ), .A1N(n2191), 
        .Y(n1040) );
  OAI2BB2X1 U2601 ( .B0(n1707), .B1(n2187), .A0N(\cost2[5][4] ), .A1N(n2191), 
        .Y(n1039) );
  OAI2BB2X1 U2602 ( .B0(n1707), .B1(n2188), .A0N(\cost2[5][5] ), .A1N(n2191), 
        .Y(n1038) );
  OAI2BB2X1 U2603 ( .B0(n1707), .B1(n2180), .A0N(\cost2[5][6] ), .A1N(n2191), 
        .Y(n1037) );
  NAND2X1 U2604 ( .A(n2189), .B(n1709), .Y(n2191) );
  CLKINVX1 U2605 ( .A(n1707), .Y(n1709) );
  OAI2BB2X1 U2606 ( .B0(n1710), .B1(n2182), .A0N(\cost2[4][0] ), .A1N(n2192), 
        .Y(n1036) );
  OAI2BB2X1 U2607 ( .B0(n1710), .B1(n2184), .A0N(\cost2[4][1] ), .A1N(n2192), 
        .Y(n1035) );
  OAI2BB2X1 U2608 ( .B0(n1710), .B1(n2185), .A0N(\cost2[4][2] ), .A1N(n2192), 
        .Y(n1034) );
  OAI2BB2X1 U2609 ( .B0(n1710), .B1(n2186), .A0N(\cost2[4][3] ), .A1N(n2192), 
        .Y(n1033) );
  OAI2BB2X1 U2610 ( .B0(n1710), .B1(n2187), .A0N(\cost2[4][4] ), .A1N(n2192), 
        .Y(n1032) );
  OAI2BB2X1 U2611 ( .B0(n1710), .B1(n2188), .A0N(\cost2[4][5] ), .A1N(n2192), 
        .Y(n1031) );
  OAI2BB2X1 U2612 ( .B0(n1710), .B1(n2180), .A0N(\cost2[4][6] ), .A1N(n2192), 
        .Y(n1030) );
  NAND2X1 U2613 ( .A(n2189), .B(n1712), .Y(n2192) );
  OAI31X1 U2614 ( .A0(n2150), .A1(J[1]), .A2(J[0]), .B0(n2275), .Y(n1712) );
  OAI2BB2X1 U2615 ( .B0(n1713), .B1(n2182), .A0N(\cost2[3][0] ), .A1N(n2193), 
        .Y(n1029) );
  OAI2BB2X1 U2616 ( .B0(n1713), .B1(n2184), .A0N(\cost2[3][1] ), .A1N(n2193), 
        .Y(n1028) );
  OAI2BB2X1 U2617 ( .B0(n1713), .B1(n2185), .A0N(\cost2[3][2] ), .A1N(n2193), 
        .Y(n1027) );
  OAI2BB2X1 U2618 ( .B0(n1713), .B1(n2186), .A0N(\cost2[3][3] ), .A1N(n2193), 
        .Y(n1026) );
  OAI2BB2X1 U2619 ( .B0(n1713), .B1(n2187), .A0N(\cost2[3][4] ), .A1N(n2193), 
        .Y(n1025) );
  OAI2BB2X1 U2620 ( .B0(n1713), .B1(n2188), .A0N(\cost2[3][5] ), .A1N(n2193), 
        .Y(n1024) );
  OAI2BB2X1 U2621 ( .B0(n1713), .B1(n2180), .A0N(\cost2[3][6] ), .A1N(n2193), 
        .Y(n1023) );
  NAND2X1 U2622 ( .A(n2189), .B(n1715), .Y(n2193) );
  OAI21X1 U2623 ( .A0(J[2]), .A1(n2151), .B0(n2275), .Y(n1715) );
  OAI2BB2X1 U2624 ( .B0(n1716), .B1(n2182), .A0N(\cost2[2][0] ), .A1N(n2194), 
        .Y(n1022) );
  OAI2BB2X1 U2625 ( .B0(n1716), .B1(n2184), .A0N(\cost2[2][1] ), .A1N(n2194), 
        .Y(n1021) );
  OAI2BB2X1 U2626 ( .B0(n1716), .B1(n2185), .A0N(\cost2[2][2] ), .A1N(n2194), 
        .Y(n1020) );
  OAI2BB2X1 U2627 ( .B0(n1716), .B1(n2186), .A0N(\cost2[2][3] ), .A1N(n2194), 
        .Y(n1019) );
  OAI2BB2X1 U2628 ( .B0(n1716), .B1(n2187), .A0N(\cost2[2][4] ), .A1N(n2194), 
        .Y(n1018) );
  OAI2BB2X1 U2629 ( .B0(n1716), .B1(n2188), .A0N(\cost2[2][5] ), .A1N(n2194), 
        .Y(n1017) );
  OAI2BB2X1 U2630 ( .B0(n1716), .B1(n2180), .A0N(\cost2[2][6] ), .A1N(n2194), 
        .Y(n1016) );
  NAND2X1 U2631 ( .A(n2189), .B(n1718), .Y(n2194) );
  CLKINVX1 U2632 ( .A(n1716), .Y(n1718) );
  OR2X1 U2633 ( .A(n2155), .B(J[0]), .Y(n2153) );
  OAI2BB2X1 U2634 ( .B0(n1719), .B1(n2182), .A0N(\cost2[1][0] ), .A1N(n2195), 
        .Y(n1015) );
  OAI2BB2X1 U2635 ( .B0(n1719), .B1(n2184), .A0N(\cost2[1][1] ), .A1N(n2195), 
        .Y(n1014) );
  OAI2BB2X1 U2636 ( .B0(n1719), .B1(n2185), .A0N(\cost2[1][2] ), .A1N(n2195), 
        .Y(n1013) );
  OAI2BB2X1 U2637 ( .B0(n1719), .B1(n2186), .A0N(\cost2[1][3] ), .A1N(n2195), 
        .Y(n1012) );
  OAI2BB2X1 U2638 ( .B0(n1719), .B1(n2187), .A0N(\cost2[1][4] ), .A1N(n2195), 
        .Y(n1011) );
  OAI2BB2X1 U2639 ( .B0(n1719), .B1(n2188), .A0N(\cost2[1][5] ), .A1N(n2195), 
        .Y(n1010) );
  OAI2BB2X1 U2640 ( .B0(n1719), .B1(n2180), .A0N(\cost2[1][6] ), .A1N(n2195), 
        .Y(n1009) );
  NAND2X1 U2641 ( .A(n2189), .B(n1721), .Y(n2195) );
  CLKINVX1 U2642 ( .A(n1719), .Y(n1721) );
  NAND2X1 U2643 ( .A(n2196), .B(n1747), .Y(n2180) );
  NAND2X1 U2644 ( .A(J[0]), .B(n2155), .Y(n2154) );
  CLKINVX1 U2645 ( .A(J[1]), .Y(n2155) );
  OAI2BB2X1 U2646 ( .B0(n1722), .B1(n2182), .A0N(\cost2[0][0] ), .A1N(n2181), 
        .Y(n1008) );
  NAND2X1 U2647 ( .A(n2196), .B(n1748), .Y(n2182) );
  OAI2BB2X1 U2648 ( .B0(n1722), .B1(n2184), .A0N(\cost2[0][1] ), .A1N(n2181), 
        .Y(n1007) );
  NAND2X1 U2649 ( .A(n2196), .B(n1749), .Y(n2184) );
  OAI2BB2X1 U2650 ( .B0(n1722), .B1(n2185), .A0N(\cost2[0][2] ), .A1N(n2181), 
        .Y(n1006) );
  NAND2X1 U2651 ( .A(n2196), .B(n1724), .Y(n2185) );
  AND2X1 U2652 ( .A(Cost[2]), .B(n2197), .Y(n1724) );
  OAI2BB2X1 U2653 ( .B0(n1722), .B1(n2186), .A0N(\cost2[0][3] ), .A1N(n2181), 
        .Y(n1005) );
  NAND2X1 U2654 ( .A(n2196), .B(n1726), .Y(n2186) );
  AND2X1 U2655 ( .A(Cost[3]), .B(n2197), .Y(n1726) );
  OAI2BB2X1 U2656 ( .B0(n1722), .B1(n2187), .A0N(\cost2[0][4] ), .A1N(n2181), 
        .Y(n1004) );
  NAND2X1 U2657 ( .A(n2196), .B(n1727), .Y(n2187) );
  AND2X1 U2658 ( .A(Cost[4]), .B(n2197), .Y(n1727) );
  OAI2BB2X1 U2659 ( .B0(n1722), .B1(n2188), .A0N(\cost2[0][5] ), .A1N(n2181), 
        .Y(n1003) );
  NAND2X1 U2660 ( .A(n1750), .B(n2189), .Y(n2181) );
  OAI2BB1X1 U2661 ( .A0N(n1751), .A1N(n2196), .B0(n1752), .Y(n2189) );
  CLKINVX1 U2662 ( .A(n2161), .Y(n1751) );
  NAND2X1 U2663 ( .A(n2196), .B(n1728), .Y(n2188) );
  AND2X1 U2664 ( .A(Cost[5]), .B(n2197), .Y(n1728) );
  NOR3X1 U2665 ( .A(W[0]), .B(W[2]), .C(n1789), .Y(n2196) );
  OAI2BB2X1 U2666 ( .B0(n1722), .B1(n1700), .A0N(\cost3[0][6] ), .A1N(n1723), 
        .Y(n1002) );
  NAND2X1 U2667 ( .A(n1705), .B(n1750), .Y(n1723) );
  NAND2X1 U2668 ( .A(n1747), .B(n1725), .Y(n1700) );
  AND2X1 U2669 ( .A(Cost[6]), .B(n2197), .Y(n1747) );
  OAI31X1 U2670 ( .A0(J[0]), .A1(J[2]), .A2(J[1]), .B0(n2275), .Y(n1750) );
  OAI2BB2X1 U2671 ( .B0(n1694), .B1(n1702), .A0N(\cost3[7][0] ), .A1N(n1696), 
        .Y(n1001) );
  NAND2X1 U2672 ( .A(n1748), .B(n1725), .Y(n1702) );
  AND2X1 U2673 ( .A(Cost[0]), .B(n2197), .Y(n1748) );
  OAI2BB2X1 U2674 ( .B0(n1694), .B1(n1704), .A0N(\cost3[7][1] ), .A1N(n1696), 
        .Y(n1000) );
  NAND2X1 U2675 ( .A(n1738), .B(n1705), .Y(n1696) );
  OAI21X1 U2676 ( .A0(n2161), .A1(n2159), .B0(n1752), .Y(n1705) );
  OR2X1 U2677 ( .A(n2197), .B(n2161), .Y(n1752) );
  AOI21X1 U2678 ( .A0(state[0]), .A1(n1689), .B0(RST), .Y(n2161) );
  CLKINVX1 U2679 ( .A(n1685), .Y(n1689) );
  CLKINVX1 U2680 ( .A(n1694), .Y(n1738) );
  NAND2X1 U2681 ( .A(n1749), .B(n1725), .Y(n1704) );
  CLKINVX1 U2682 ( .A(n2159), .Y(n1725) );
  NAND3X1 U2683 ( .A(W[0]), .B(n1790), .C(W[1]), .Y(n2159) );
  AND2X1 U2684 ( .A(Cost[1]), .B(n2197), .Y(n1749) );
  NOR3X1 U2685 ( .A(n1658), .B(RST), .C(n1685), .Y(n2197) );
  NAND2X1 U2686 ( .A(n1688), .B(state[2]), .Y(n1685) );
  NOR2X1 U2687 ( .A(state[1]), .B(state[3]), .Y(n1688) );
  CLKINVX1 U2688 ( .A(state[0]), .Y(n1658) );
  AND3X2 U2689 ( .A(n1807), .B(n2162), .C(n2275), .Y(N219) );
  CLKINVX1 U2690 ( .A(RST), .Y(n2275) );
  NOR2X1 U2691 ( .A(n2150), .B(n2151), .Y(n2162) );
  NAND2X1 U2692 ( .A(J[1]), .B(J[0]), .Y(n2151) );
  CLKINVX1 U2693 ( .A(J[2]), .Y(n2150) );
  NOR3X1 U2694 ( .A(n1789), .B(n1771), .C(n1790), .Y(n1807) );
  CLKINVX1 U2695 ( .A(W[2]), .Y(n1790) );
  CLKINVX1 U2696 ( .A(W[0]), .Y(n1771) );
  CLKINVX1 U2697 ( .A(W[1]), .Y(n1789) );
  NOR2X1 U2698 ( .A(n194), .B(n2198), .Y(N1848) );
  NOR2X1 U2699 ( .A(n195), .B(n2198), .Y(N1847) );
  NOR2X1 U2700 ( .A(n196), .B(n2198), .Y(N1846) );
  NOR2X1 U2701 ( .A(n197), .B(n2198), .Y(N1845) );
  NOR2X1 U2702 ( .A(n198), .B(n2198), .Y(N1844) );
  NOR2X1 U2703 ( .A(n199), .B(n2198), .Y(N1843) );
  NOR2X1 U2704 ( .A(n200), .B(n2198), .Y(N1842) );
  NOR2X1 U2705 ( .A(n201), .B(n2198), .Y(N1841) );
  NOR2X1 U2706 ( .A(n202), .B(n2198), .Y(N1840) );
  NOR2X1 U2707 ( .A(n203), .B(n2198), .Y(N1839) );
  NOR2X1 U2708 ( .A(n2271), .B(n2198), .Y(N1838) );
  AND2X1 U2709 ( .A(match_count[2]), .B(n2274), .Y(N1837) );
  AND2X1 U2710 ( .A(match_count[1]), .B(n2274), .Y(N1836) );
  CLKINVX1 U2711 ( .A(n2198), .Y(n2274) );
  NOR2X1 U2712 ( .A(n1840), .B(n2198), .Y(N1835) );
  NAND2X1 U2713 ( .A(n1653), .B(n2077), .Y(n2198) );
  NOR3X1 U2714 ( .A(state[2]), .B(state[3]), .C(RST), .Y(n2077) );
  AND2X1 U2715 ( .A(state[0]), .B(state[1]), .Y(n1653) );
  CLKINVX1 U2716 ( .A(match_count[0]), .Y(n1840) );
  OAI22X1 U2717 ( .A0(n2199), .A1(n2200), .B0(n2201), .B1(n2202), .Y(N1737) );
  AND2X1 U2718 ( .A(n2200), .B(n2199), .Y(n2201) );
  CLKINVX1 U2719 ( .A(N1689), .Y(n2200) );
  XOR2X1 U2720 ( .A(n2203), .B(n2199), .Y(N1736) );
  AOI22X1 U2721 ( .A0(n2204), .A1(N1690), .B0(n2205), .B1(N1697), .Y(n2199) );
  OR2X1 U2722 ( .A(N1690), .B(n2204), .Y(n2205) );
  XOR2X1 U2723 ( .A(N1689), .B(n2202), .Y(n2203) );
  CLKINVX1 U2724 ( .A(N1696), .Y(n2202) );
  XNOR2X1 U2725 ( .A(n2206), .B(n2204), .Y(N1735) );
  OAI22X1 U2726 ( .A0(n2207), .A1(n2208), .B0(n2209), .B1(n2210), .Y(n2204) );
  AND2X1 U2727 ( .A(n2208), .B(n2207), .Y(n2209) );
  CLKINVX1 U2728 ( .A(N1691), .Y(n2208) );
  XNOR2X1 U2729 ( .A(N1690), .B(N1697), .Y(n2206) );
  XOR2X1 U2730 ( .A(n2211), .B(n2207), .Y(N1734) );
  AOI22X1 U2731 ( .A0(n2212), .A1(N1692), .B0(n2213), .B1(N1699), .Y(n2207) );
  OR2X1 U2732 ( .A(N1692), .B(n2212), .Y(n2213) );
  XOR2X1 U2733 ( .A(N1691), .B(n2210), .Y(n2211) );
  CLKINVX1 U2734 ( .A(N1698), .Y(n2210) );
  XNOR2X1 U2735 ( .A(n2214), .B(n2212), .Y(N1733) );
  OAI22X1 U2736 ( .A0(n2215), .A1(n2216), .B0(n2217), .B1(n2218), .Y(n2212) );
  AND2X1 U2737 ( .A(n2216), .B(n2215), .Y(n2217) );
  CLKINVX1 U2738 ( .A(N1693), .Y(n2216) );
  XNOR2X1 U2739 ( .A(N1692), .B(N1699), .Y(n2214) );
  XOR2X1 U2740 ( .A(n2219), .B(n2215), .Y(N1732) );
  AOI22X1 U2741 ( .A0(n2220), .A1(N1694), .B0(n2221), .B1(N1701), .Y(n2215) );
  OR2X1 U2742 ( .A(n2220), .B(N1694), .Y(n2221) );
  XOR2X1 U2743 ( .A(N1693), .B(n2218), .Y(n2219) );
  CLKINVX1 U2744 ( .A(N1700), .Y(n2218) );
  XOR2X1 U2745 ( .A(n2220), .B(n2222), .Y(N1731) );
  XOR2X1 U2746 ( .A(N1701), .B(N1694), .Y(n2222) );
  AND2X1 U2747 ( .A(N1702), .B(N1695), .Y(n2220) );
  XOR2X1 U2748 ( .A(N1702), .B(N1695), .Y(N1730) );
  OAI22X1 U2749 ( .A0(n2223), .A1(n2224), .B0(n2225), .B1(n2226), .Y(N1727) );
  AND2X1 U2750 ( .A(n2224), .B(n2223), .Y(n2225) );
  CLKINVX1 U2751 ( .A(N1675), .Y(n2224) );
  XOR2X1 U2752 ( .A(n2227), .B(n2223), .Y(N1726) );
  AOI22X1 U2753 ( .A0(n2228), .A1(N1676), .B0(n2229), .B1(N1683), .Y(n2223) );
  OR2X1 U2754 ( .A(N1676), .B(n2228), .Y(n2229) );
  XOR2X1 U2755 ( .A(N1675), .B(n2226), .Y(n2227) );
  CLKINVX1 U2756 ( .A(N1682), .Y(n2226) );
  XNOR2X1 U2757 ( .A(n2230), .B(n2228), .Y(N1725) );
  OAI22X1 U2758 ( .A0(n2231), .A1(n2232), .B0(n2233), .B1(n2234), .Y(n2228) );
  AND2X1 U2759 ( .A(n2232), .B(n2231), .Y(n2233) );
  CLKINVX1 U2760 ( .A(N1677), .Y(n2232) );
  XNOR2X1 U2761 ( .A(N1676), .B(N1683), .Y(n2230) );
  XOR2X1 U2762 ( .A(n2235), .B(n2231), .Y(N1724) );
  AOI22X1 U2763 ( .A0(n2236), .A1(N1678), .B0(n2237), .B1(N1685), .Y(n2231) );
  OR2X1 U2764 ( .A(N1678), .B(n2236), .Y(n2237) );
  XOR2X1 U2765 ( .A(N1677), .B(n2234), .Y(n2235) );
  CLKINVX1 U2766 ( .A(N1684), .Y(n2234) );
  XNOR2X1 U2767 ( .A(n2238), .B(n2236), .Y(N1723) );
  OAI22X1 U2768 ( .A0(n2239), .A1(n2240), .B0(n2241), .B1(n2242), .Y(n2236) );
  AND2X1 U2769 ( .A(n2240), .B(n2239), .Y(n2241) );
  CLKINVX1 U2770 ( .A(N1679), .Y(n2240) );
  XNOR2X1 U2771 ( .A(N1678), .B(N1685), .Y(n2238) );
  XOR2X1 U2772 ( .A(n2243), .B(n2239), .Y(N1722) );
  AOI22X1 U2773 ( .A0(n2244), .A1(N1680), .B0(n2245), .B1(N1687), .Y(n2239) );
  OR2X1 U2774 ( .A(n2244), .B(N1680), .Y(n2245) );
  XOR2X1 U2775 ( .A(N1679), .B(n2242), .Y(n2243) );
  CLKINVX1 U2776 ( .A(N1686), .Y(n2242) );
  XOR2X1 U2777 ( .A(n2244), .B(n2246), .Y(N1721) );
  XOR2X1 U2778 ( .A(N1687), .B(N1680), .Y(n2246) );
  AND2X1 U2779 ( .A(N1688), .B(N1681), .Y(n2244) );
  XOR2X1 U2780 ( .A(N1688), .B(N1681), .Y(N1720) );
  OAI22X1 U2781 ( .A0(n2247), .A1(n2248), .B0(n2249), .B1(n2250), .Y(N1718) );
  AND2X1 U2782 ( .A(n2248), .B(n2247), .Y(n2249) );
  CLKINVX1 U2783 ( .A(N1661), .Y(n2248) );
  XOR2X1 U2784 ( .A(n2251), .B(n2247), .Y(N1717) );
  AOI22X1 U2785 ( .A0(n2252), .A1(N1662), .B0(n2253), .B1(N1669), .Y(n2247) );
  OR2X1 U2786 ( .A(N1662), .B(n2252), .Y(n2253) );
  XOR2X1 U2787 ( .A(N1661), .B(n2250), .Y(n2251) );
  CLKINVX1 U2788 ( .A(N1668), .Y(n2250) );
  XNOR2X1 U2789 ( .A(n2254), .B(n2252), .Y(N1716) );
  OAI22X1 U2790 ( .A0(n2255), .A1(n2256), .B0(n2257), .B1(n2258), .Y(n2252) );
  AND2X1 U2791 ( .A(n2256), .B(n2255), .Y(n2257) );
  CLKINVX1 U2792 ( .A(N1663), .Y(n2256) );
  XNOR2X1 U2793 ( .A(N1662), .B(N1669), .Y(n2254) );
  XOR2X1 U2794 ( .A(n2259), .B(n2255), .Y(N1715) );
  AOI22X1 U2795 ( .A0(n2260), .A1(N1664), .B0(n2261), .B1(N1671), .Y(n2255) );
  OR2X1 U2796 ( .A(N1664), .B(n2260), .Y(n2261) );
  XOR2X1 U2797 ( .A(N1663), .B(n2258), .Y(n2259) );
  CLKINVX1 U2798 ( .A(N1670), .Y(n2258) );
  XNOR2X1 U2799 ( .A(n2262), .B(n2260), .Y(N1714) );
  OAI22X1 U2800 ( .A0(n2263), .A1(n2264), .B0(n2265), .B1(n2266), .Y(n2260) );
  AND2X1 U2801 ( .A(n2264), .B(n2263), .Y(n2265) );
  CLKINVX1 U2802 ( .A(N1665), .Y(n2264) );
  XNOR2X1 U2803 ( .A(N1664), .B(N1671), .Y(n2262) );
  XOR2X1 U2804 ( .A(n2267), .B(n2263), .Y(N1713) );
  AOI22X1 U2805 ( .A0(n2268), .A1(N1666), .B0(n2269), .B1(N1673), .Y(n2263) );
  OR2X1 U2806 ( .A(n2268), .B(N1666), .Y(n2269) );
  XOR2X1 U2807 ( .A(N1665), .B(n2266), .Y(n2267) );
  CLKINVX1 U2808 ( .A(N1672), .Y(n2266) );
  XOR2X1 U2809 ( .A(n2268), .B(n2270), .Y(N1712) );
  XOR2X1 U2810 ( .A(N1673), .B(N1666), .Y(n2270) );
  AND2X1 U2811 ( .A(N1674), .B(N1667), .Y(n2268) );
  XOR2X1 U2812 ( .A(N1674), .B(N1667), .Y(N1711) );
endmodule

