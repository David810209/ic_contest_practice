/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 25 01:42:23 2025
/////////////////////////////////////////////////////////////


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVXL U1 ( .A(B[0]), .Y(n12) );
  INVXL U2 ( .A(B[2]), .Y(n10) );
  INVX1 U3 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n11) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n2) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n12) );
  XNOR2XL U2 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U3 ( .A(B[3]), .Y(n9) );
  INVX1 U4 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n11) );
  NAND2X1 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFHX4 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  INVXL U1 ( .A(B[0]), .Y(n12) );
  CLKINVX1 U2 ( .A(B[5]), .Y(n7) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n11) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n9), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[4]), .Y(n8) );
  NAND2X1 U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  XNOR2XL U3 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U4 ( .A(B[1]), .Y(n11) );
  INVXL U5 ( .A(A[0]), .Y(n1) );
  INVXL U6 ( .A(B[0]), .Y(n12) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX4 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVXL U1 ( .A(B[0]), .Y(n12) );
  INVXL U2 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n11) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  INVXL U1 ( .A(B[0]), .Y(n12) );
  INVX1 U2 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n11) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CMPR32X2 U2_8 ( .A(A[8]), .B(n4), .C(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  CMPR32X2 U2_7 ( .A(A[7]), .B(n5), .C(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_9 ( .A(A[9]), .B(n3), .C(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  CMPR32X2 U2_10 ( .A(A[10]), .B(n2), .C(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CMPR32X2 U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n10), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n8), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n9), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n7), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  INVXL U1 ( .A(B[5]), .Y(n7) );
  INVXL U2 ( .A(B[0]), .Y(n12) );
  INVXL U3 ( .A(B[3]), .Y(n9) );
  INVXL U4 ( .A(B[4]), .Y(n8) );
  INVXL U5 ( .A(B[2]), .Y(n10) );
  INVXL U6 ( .A(B[6]), .Y(n6) );
  INVXL U7 ( .A(B[10]), .Y(n2) );
  INVXL U8 ( .A(B[9]), .Y(n3) );
  INVXL U9 ( .A(B[7]), .Y(n5) );
  INVXL U10 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n11) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CMPR32X2 U2_7 ( .A(A[7]), .B(n5), .C(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_9 ( .A(A[9]), .B(n3), .C(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  CMPR32X2 U2_10 ( .A(A[10]), .B(n2), .C(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CMPR32X2 U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n8), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n10), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n9), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n7), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX4 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  NAND2BX1 U1 ( .AN(n12), .B(n1), .Y(carry[1]) );
  INVXL U2 ( .A(B[1]), .Y(n11) );
  INVXL U3 ( .A(B[5]), .Y(n7) );
  INVXL U4 ( .A(B[0]), .Y(n12) );
  INVXL U5 ( .A(B[3]), .Y(n9) );
  INVXL U6 ( .A(B[2]), .Y(n10) );
  INVXL U7 ( .A(B[4]), .Y(n8) );
  INVXL U8 ( .A(B[6]), .Y(n6) );
  INVXL U9 ( .A(B[10]), .Y(n2) );
  INVXL U10 ( .A(B[9]), .Y(n3) );
  INVXL U11 ( .A(B[7]), .Y(n5) );
  INVXL U12 ( .A(B[8]), .Y(n4) );
  INVXL U13 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX4 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  INVXL U1 ( .A(B[2]), .Y(n10) );
  INVX1 U2 ( .A(B[3]), .Y(n9) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n11) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVX1 U7 ( .A(B[0]), .Y(n12) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFHX4 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXL U1 ( .A(B[0]), .Y(n12) );
  INVXL U2 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n11) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX4 U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n13) );
  NOR2X1 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U3 ( .A(B[1]), .Y(n12) );
  INVXL U4 ( .A(A[0]), .Y(n3) );
  INVX1 U5 ( .A(B[5]), .Y(n8) );
  NAND2X1 U6 ( .A(n2), .B(n3), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(n13), .Y(n2) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n5) );
  XNOR2X1 U15 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U16 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  INVX3 U1 ( .A(A[0]), .Y(n2) );
  NOR2X1 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U3 ( .A(B[1]), .Y(n11) );
  INVXL U4 ( .A(B[0]), .Y(n12) );
  INVXL U5 ( .A(B[5]), .Y(n7) );
  NAND2X1 U6 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n6) );
  XNOR2X1 U12 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n4) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_12 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_1 ( .A(A[1]), .B(n16), .C(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX2 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XOR2X1 U1 ( .A(carry[5]), .B(n2), .Y(DIFF[5]) );
  NOR2X1 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  XNOR2X4 U3 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  INVX1 U4 ( .A(B[1]), .Y(n16) );
  XOR2XL U5 ( .A(n12), .B(A[5]), .Y(n2) );
  INVXL U6 ( .A(B[5]), .Y(n12) );
  NAND2XL U7 ( .A(n12), .B(carry[5]), .Y(n3) );
  NAND2XL U8 ( .A(A[5]), .B(carry[5]), .Y(n4) );
  NAND2XL U9 ( .A(A[5]), .B(n12), .Y(n5) );
  NAND3X1 U10 ( .A(n3), .B(n4), .C(n5), .Y(carry[6]) );
  INVXL U11 ( .A(B[2]), .Y(n15) );
  INVXL U12 ( .A(B[0]), .Y(n17) );
  NAND2X2 U13 ( .A(n6), .B(n7), .Y(carry[1]) );
  INVXL U14 ( .A(A[0]), .Y(n7) );
  INVXL U15 ( .A(B[4]), .Y(n13) );
  INVXL U16 ( .A(B[3]), .Y(n14) );
  INVXL U17 ( .A(B[6]), .Y(n11) );
  CLKINVX1 U18 ( .A(n17), .Y(n6) );
  CLKINVX1 U19 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U20 ( .A(B[9]), .Y(n8) );
  CLKINVX1 U21 ( .A(B[8]), .Y(n9) );
  XNOR2X1 U22 ( .A(n17), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_13 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n1), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  BUFX4 U1 ( .A(n11), .Y(n1) );
  XNOR2X4 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  NOR2X1 U3 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U4 ( .A(B[1]), .Y(n12) );
  INVXL U5 ( .A(B[2]), .Y(n11) );
  INVXL U6 ( .A(B[0]), .Y(n13) );
  INVXL U7 ( .A(B[4]), .Y(n9) );
  INVXL U8 ( .A(B[3]), .Y(n10) );
  INVXL U9 ( .A(A[0]), .Y(n3) );
  NAND2X1 U10 ( .A(B[0]), .B(n3), .Y(carry[1]) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U15 ( .A(B[8]), .Y(n5) );
  XNOR2X1 U16 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_14 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  INVXL U1 ( .A(B[1]), .Y(n11) );
  CLKINVX4 U2 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n12) );
  NOR2X1 U4 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U5 ( .A(B[7]), .Y(n5) );
  INVX1 U6 ( .A(B[5]), .Y(n7) );
  NAND2X1 U7 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U8 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n4) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_15 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX4 U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n12) );
  NOR2X1 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U3 ( .A(B[1]), .Y(n11) );
  INVXL U4 ( .A(B[3]), .Y(n9) );
  CLKINVX8 U5 ( .A(A[0]), .Y(n2) );
  INVXL U6 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[9]), .Y(n3) );
  NAND2X1 U8 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n4) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_16 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  NOR2X1 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U2 ( .A(B[1]), .Y(n12) );
  INVXL U3 ( .A(B[8]), .Y(n5) );
  INVXL U4 ( .A(B[2]), .Y(n11) );
  INVXL U5 ( .A(B[4]), .Y(n9) );
  INVXL U6 ( .A(B[6]), .Y(n7) );
  INVXL U7 ( .A(B[0]), .Y(n13) );
  INVXL U8 ( .A(B[7]), .Y(n6) );
  INVXL U9 ( .A(B[5]), .Y(n8) );
  INVXL U10 ( .A(B[3]), .Y(n10) );
  INVXL U11 ( .A(A[0]), .Y(n3) );
  INVXL U12 ( .A(B[9]), .Y(n4) );
  NAND2X1 U13 ( .A(n2), .B(n3), .Y(carry[1]) );
  CLKINVX1 U14 ( .A(n13), .Y(n2) );
  XNOR2X1 U15 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U16 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_17 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX1 U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  NOR2X1 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U2 ( .A(B[1]), .Y(n12) );
  XNOR2X1 U3 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  INVXL U4 ( .A(B[8]), .Y(n5) );
  INVXL U5 ( .A(B[6]), .Y(n7) );
  INVXL U6 ( .A(B[4]), .Y(n9) );
  INVXL U7 ( .A(B[2]), .Y(n11) );
  INVXL U8 ( .A(B[0]), .Y(n13) );
  INVXL U9 ( .A(B[5]), .Y(n8) );
  INVXL U10 ( .A(B[7]), .Y(n6) );
  INVXL U11 ( .A(B[3]), .Y(n10) );
  INVXL U12 ( .A(A[0]), .Y(n3) );
  NAND2X1 U13 ( .A(n2), .B(n3), .Y(carry[1]) );
  CLKINVX1 U14 ( .A(n13), .Y(n2) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n4) );
  XNOR2X1 U16 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_18 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X4 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  CLKINVX1 U2 ( .A(B[4]), .Y(n8) );
  NOR2X1 U3 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n12) );
  INVXL U5 ( .A(B[1]), .Y(n11) );
  NAND2X2 U6 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  INVXL U7 ( .A(B[2]), .Y(n10) );
  INVXL U8 ( .A(A[0]), .Y(n2) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n5) );
  XNOR2X1 U15 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_19 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  NOR2X1 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U2 ( .A(B[1]), .Y(n11) );
  INVX4 U3 ( .A(A[0]), .Y(n2) );
  INVX1 U4 ( .A(B[2]), .Y(n10) );
  INVX3 U5 ( .A(B[4]), .Y(n8) );
  XNOR2X1 U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[8]), .Y(n4) );
  INVXL U8 ( .A(B[0]), .Y(n12) );
  INVX1 U9 ( .A(B[9]), .Y(n3) );
  NAND2X1 U10 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U13 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n5) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_20 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  NOR2X1 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[11]) );
  INVXL U2 ( .A(B[1]), .Y(n11) );
  INVXL U3 ( .A(B[0]), .Y(n12) );
  INVXL U4 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n7) );
  NAND2X1 U6 ( .A(B[0]), .B(n2), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n8) );
  XNOR2X1 U10 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n4) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_21 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [12:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX1 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[1]), .Y(n10) );
  INVXL U2 ( .A(A[0]), .Y(n1) );
  INVXL U3 ( .A(B[0]), .Y(n11) );
  OR2XL U4 ( .A(A[10]), .B(carry[10]), .Y(carry[11]) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
  XNOR2X1 U14 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  XNOR2X1 U15 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  CLKINVX1 U16 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_22 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[1]), .Y(n11) );
  INVXL U2 ( .A(A[0]), .Y(n1) );
  INVXL U3 ( .A(B[3]), .Y(n9) );
  INVXL U4 ( .A(B[2]), .Y(n10) );
  INVXL U5 ( .A(B[5]), .Y(n7) );
  INVXL U6 ( .A(B[4]), .Y(n8) );
  INVXL U7 ( .A(B[0]), .Y(n12) );
  XNOR2XL U8 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U9 ( .A(B[7]), .Y(n5) );
  INVXL U10 ( .A(B[6]), .Y(n6) );
  INVXL U11 ( .A(B[8]), .Y(n4) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_23 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  INVXL U2 ( .A(B[2]), .Y(n10) );
  INVXL U3 ( .A(B[5]), .Y(n7) );
  INVXL U4 ( .A(B[4]), .Y(n8) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[6]), .Y(n6) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_24 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[3]), .Y(n9) );
  INVXL U2 ( .A(B[2]), .Y(n10) );
  INVXL U3 ( .A(B[5]), .Y(n7) );
  INVXL U4 ( .A(B[4]), .Y(n8) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[6]), .Y(n6) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_25 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n3), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[3]), .Y(n10) );
  INVXL U2 ( .A(B[2]), .Y(n11) );
  INVXL U3 ( .A(B[5]), .Y(n8) );
  INVXL U4 ( .A(B[4]), .Y(n9) );
  INVXL U5 ( .A(B[0]), .Y(n13) );
  XNOR2XL U6 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[7]), .Y(n6) );
  INVXL U8 ( .A(B[6]), .Y(n7) );
  INVXL U9 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U10 ( .A(n13), .Y(n1) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n12) );
  NAND2X1 U12 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U16 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_26 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[3]), .Y(n9) );
  INVXL U2 ( .A(B[2]), .Y(n10) );
  INVXL U3 ( .A(B[5]), .Y(n7) );
  INVXL U4 ( .A(B[4]), .Y(n8) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[6]), .Y(n6) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_27 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[3]), .Y(n9) );
  INVXL U2 ( .A(B[2]), .Y(n10) );
  INVXL U3 ( .A(B[5]), .Y(n7) );
  INVXL U4 ( .A(B[4]), .Y(n8) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[6]), .Y(n6) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_28 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[2]), .Y(n10) );
  INVXL U2 ( .A(B[3]), .Y(n9) );
  INVXL U3 ( .A(B[4]), .Y(n8) );
  INVXL U4 ( .A(B[5]), .Y(n7) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  XNOR2XL U6 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  INVXL U7 ( .A(B[6]), .Y(n6) );
  INVXL U8 ( .A(B[7]), .Y(n5) );
  INVXL U9 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_29 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(B[2]), .Y(n10) );
  INVXL U2 ( .A(B[3]), .Y(n9) );
  INVXL U3 ( .A(B[4]), .Y(n8) );
  INVXL U4 ( .A(B[5]), .Y(n7) );
  INVXL U5 ( .A(B[0]), .Y(n12) );
  INVXL U6 ( .A(B[6]), .Y(n6) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n11) );
  NAND2X1 U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U11 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U12 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_30 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [12:0] carry;

  ADDFX2 U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CMPR32X2 U2_8 ( .A(A[8]), .B(n5), .C(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  CMPR32X2 U2_7 ( .A(A[7]), .B(n6), .C(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_9 ( .A(A[9]), .B(n4), .C(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  CMPR32X2 U2_10 ( .A(A[10]), .B(n3), .C(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CMPR32X2 U2_6 ( .A(A[6]), .B(n7), .C(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n9), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n8), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX4 U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  INVXL U1 ( .A(B[5]), .Y(n8) );
  INVXL U2 ( .A(B[0]), .Y(n13) );
  INVXL U3 ( .A(B[3]), .Y(n10) );
  INVXL U4 ( .A(B[4]), .Y(n9) );
  INVXL U5 ( .A(B[2]), .Y(n11) );
  INVXL U6 ( .A(B[6]), .Y(n7) );
  INVXL U7 ( .A(B[7]), .Y(n6) );
  INVXL U8 ( .A(B[8]), .Y(n5) );
  XNOR2XL U9 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(n13), .Y(n1) );
  INVX1 U11 ( .A(B[1]), .Y(n12) );
  NAND2X1 U12 ( .A(n1), .B(n2), .Y(carry[1]) );
  INVX1 U13 ( .A(A[0]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U15 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U16 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_31 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CMPR32X2 U2_8 ( .A(A[8]), .B(n4), .C(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  CMPR32X2 U2_7 ( .A(A[7]), .B(n5), .C(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_10 ( .A(A[10]), .B(n2), .C(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CMPR32X2 U2_6 ( .A(A[6]), .B(n6), .C(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n8), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n10), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  CMPR32X2 U2_3 ( .A(A[3]), .B(n9), .C(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CMPR32X2 U2_5 ( .A(A[5]), .B(n7), .C(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  INVXL U1 ( .A(B[5]), .Y(n7) );
  INVXL U2 ( .A(B[0]), .Y(n12) );
  INVXL U3 ( .A(B[3]), .Y(n9) );
  INVXL U4 ( .A(B[2]), .Y(n10) );
  INVXL U5 ( .A(B[4]), .Y(n8) );
  INVXL U6 ( .A(B[6]), .Y(n6) );
  INVXL U7 ( .A(B[7]), .Y(n5) );
  INVXL U8 ( .A(B[8]), .Y(n4) );
  XNOR2XL U9 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n11) );
  NAND2X1 U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW_mult_tc_13 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494;

  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U7 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U8 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U17 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n396), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n395), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n394), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n398), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  ADDHXL U54 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDHXL U63 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  ADDFXL U281 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U282 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  NAND2X2 U283 ( .A(n384), .B(n490), .Y(n378) );
  ADDFXL U284 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  BUFX2 U285 ( .A(n421), .Y(n385) );
  ADDHXL U286 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  OAI22XL U287 ( .A0(n452), .A1(n385), .B0(n386), .B1(n453), .Y(n168) );
  NAND2X1 U288 ( .A(n386), .B(n491), .Y(n421) );
  CLKBUFX3 U289 ( .A(n404), .Y(n382) );
  XOR2X1 U290 ( .A(b[1]), .B(n405), .Y(n432) );
  CLKBUFX3 U291 ( .A(n403), .Y(n381) );
  CLKBUFX3 U292 ( .A(n412), .Y(n383) );
  CLKBUFX3 U293 ( .A(b[0]), .Y(n393) );
  ADDFXL U294 ( .A(n27), .B(n397), .CI(n5), .CO(n4), .S(product[21]) );
  NOR2XL U295 ( .A(n406), .B(n399), .Y(product[0]) );
  NOR2XL U296 ( .A(n388), .B(n399), .Y(n157) );
  NOR2XL U297 ( .A(n390), .B(n399), .Y(n146) );
  NOR2XL U298 ( .A(n392), .B(n399), .Y(n134) );
  OA22XL U299 ( .A0(n409), .A1(n378), .B0(n384), .B1(n411), .Y(n408) );
  AO21XL U300 ( .A0(n378), .A1(n384), .B0(n451), .Y(n170) );
  OAI2BB1XL U301 ( .A0N(n406), .A1N(n383), .B0(n413), .Y(n407) );
  AO21XL U302 ( .A0(n385), .A1(n386), .B0(n419), .Y(n158) );
  NAND2XL U303 ( .A(a[1]), .B(n406), .Y(n412) );
  OAI32XL U304 ( .A0(n382), .A1(n393), .A2(n384), .B0(n382), .B1(n378), .Y(
        n121) );
  INVX2 U305 ( .A(a[1]), .Y(n405) );
  INVXL U306 ( .A(a[3]), .Y(n404) );
  INVX1 U307 ( .A(a[5]), .Y(n403) );
  OAI32XL U308 ( .A0(n381), .A1(n393), .A2(n386), .B0(n381), .B1(n385), .Y(
        n120) );
  XOR2XL U309 ( .A(n381), .B(n393), .Y(n452) );
  XNOR2XL U310 ( .A(a[4]), .B(a[3]), .Y(n418) );
  XOR2XL U311 ( .A(b[2]), .B(n405), .Y(n433) );
  XOR2XL U312 ( .A(b[3]), .B(n405), .Y(n434) );
  XOR2XL U313 ( .A(b[2]), .B(n382), .Y(n444) );
  XOR2XL U314 ( .A(b[4]), .B(n405), .Y(n435) );
  OAI32XL U315 ( .A0(n380), .A1(n393), .A2(n388), .B0(n380), .B1(n387), .Y(
        n119) );
  XOR2XL U316 ( .A(n380), .B(n393), .Y(n462) );
  XOR2XL U317 ( .A(b[1]), .B(n380), .Y(n463) );
  XOR2XL U318 ( .A(b[5]), .B(n405), .Y(n436) );
  XNOR2XL U319 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XOR2XL U320 ( .A(b[1]), .B(n379), .Y(n471) );
  XOR2XL U321 ( .A(b[3]), .B(n382), .Y(n445) );
  XOR2XL U322 ( .A(b[6]), .B(n405), .Y(n437) );
  XOR2XL U323 ( .A(b[2]), .B(n381), .Y(n454) );
  XOR2XL U324 ( .A(b[7]), .B(n405), .Y(n438) );
  XOR2XL U325 ( .A(b[3]), .B(n381), .Y(n455) );
  XOR2XL U326 ( .A(b[8]), .B(n405), .Y(n439) );
  XOR2XL U327 ( .A(b[2]), .B(n380), .Y(n464) );
  XOR2XL U328 ( .A(b[4]), .B(n382), .Y(n446) );
  XOR2XL U329 ( .A(b[10]), .B(n405), .Y(n441) );
  XOR2XL U330 ( .A(b[9]), .B(n405), .Y(n440) );
  XOR2XL U331 ( .A(b[3]), .B(n380), .Y(n465) );
  XOR2XL U332 ( .A(b[2]), .B(n379), .Y(n472) );
  XOR2XL U333 ( .A(b[1]), .B(n400), .Y(n481) );
  XOR2XL U334 ( .A(b[4]), .B(n381), .Y(n456) );
  XOR2XL U335 ( .A(b[3]), .B(n379), .Y(n473) );
  XOR2XL U336 ( .A(b[5]), .B(n382), .Y(n447) );
  XOR2XL U337 ( .A(b[11]), .B(a[1]), .Y(n413) );
  XOR2XL U338 ( .A(b[7]), .B(n382), .Y(n449) );
  XOR2XL U339 ( .A(b[6]), .B(n382), .Y(n448) );
  XOR2XL U340 ( .A(b[5]), .B(n381), .Y(n457) );
  XOR2XL U341 ( .A(b[8]), .B(n382), .Y(n450) );
  XOR2XL U342 ( .A(b[2]), .B(n400), .Y(n482) );
  XOR2XL U343 ( .A(b[9]), .B(n382), .Y(n409) );
  XOR2XL U344 ( .A(b[10]), .B(n382), .Y(n411) );
  XOR2XL U345 ( .A(b[3]), .B(n400), .Y(n483) );
  XOR2XL U346 ( .A(b[6]), .B(n381), .Y(n458) );
  XOR2XL U347 ( .A(b[8]), .B(n381), .Y(n460) );
  XOR2XL U348 ( .A(b[7]), .B(n381), .Y(n459) );
  XOR2XL U349 ( .A(b[9]), .B(n381), .Y(n461) );
  XOR2XL U350 ( .A(b[10]), .B(n381), .Y(n420) );
  CLKINVX1 U351 ( .A(n65), .Y(n398) );
  CLKINVX1 U352 ( .A(n25), .Y(n397) );
  CLKINVX1 U353 ( .A(n51), .Y(n394) );
  INVX3 U354 ( .A(a[11]), .Y(n400) );
  CLKINVX1 U355 ( .A(n39), .Y(n395) );
  CLKINVX1 U356 ( .A(n31), .Y(n396) );
  INVX3 U357 ( .A(a[0]), .Y(n406) );
  CLKBUFX3 U358 ( .A(n410), .Y(n384) );
  XNOR2X1 U359 ( .A(a[2]), .B(a[1]), .Y(n410) );
  CLKINVX1 U360 ( .A(n393), .Y(n399) );
  CLKBUFX3 U361 ( .A(n418), .Y(n386) );
  CLKBUFX3 U362 ( .A(n415), .Y(n387) );
  NAND2X1 U363 ( .A(n388), .B(n492), .Y(n415) );
  CLKBUFX3 U364 ( .A(n402), .Y(n380) );
  CLKINVX1 U365 ( .A(a[7]), .Y(n402) );
  CLKBUFX3 U366 ( .A(n416), .Y(n388) );
  CLKBUFX3 U367 ( .A(n427), .Y(n389) );
  NAND2X1 U368 ( .A(n390), .B(n493), .Y(n427) );
  CLKBUFX3 U369 ( .A(n401), .Y(n379) );
  CLKINVX1 U370 ( .A(a[9]), .Y(n401) );
  CLKBUFX3 U371 ( .A(n424), .Y(n390) );
  XNOR2X1 U372 ( .A(a[8]), .B(a[7]), .Y(n424) );
  CLKBUFX3 U373 ( .A(n431), .Y(n391) );
  NAND2X1 U374 ( .A(n392), .B(n494), .Y(n431) );
  CLKBUFX3 U375 ( .A(n428), .Y(n392) );
  XNOR2X1 U376 ( .A(a[10]), .B(a[9]), .Y(n428) );
  CLKINVX1 U377 ( .A(n3), .Y(product[23]) );
  XOR2X1 U378 ( .A(n407), .B(n408), .Y(n74) );
  NAND2BX1 U379 ( .AN(n407), .B(n408), .Y(n73) );
  OAI22XL U380 ( .A0(n414), .A1(n387), .B0(n388), .B1(n417), .Y(n65) );
  OAI22XL U381 ( .A0(n386), .A1(n419), .B0(n420), .B1(n385), .Y(n51) );
  OAI22XL U382 ( .A0(n388), .A1(n422), .B0(n423), .B1(n387), .Y(n39) );
  OAI22XL U383 ( .A0(n390), .A1(n425), .B0(n426), .B1(n389), .Y(n31) );
  OAI22XL U384 ( .A0(n392), .A1(n429), .B0(n430), .B1(n391), .Y(n25) );
  OAI22XL U385 ( .A0(n393), .A1(n383), .B0(n432), .B1(n406), .Y(n194) );
  OAI22XL U386 ( .A0(n432), .A1(n383), .B0(n433), .B1(n406), .Y(n193) );
  OAI22XL U387 ( .A0(n433), .A1(n383), .B0(n434), .B1(n406), .Y(n192) );
  OAI22XL U388 ( .A0(n434), .A1(n383), .B0(n435), .B1(n406), .Y(n191) );
  OAI22XL U389 ( .A0(n435), .A1(n383), .B0(n436), .B1(n406), .Y(n190) );
  OAI22XL U390 ( .A0(n436), .A1(n383), .B0(n437), .B1(n406), .Y(n189) );
  OAI22XL U391 ( .A0(n437), .A1(n383), .B0(n438), .B1(n406), .Y(n188) );
  OAI22XL U392 ( .A0(n438), .A1(n383), .B0(n439), .B1(n406), .Y(n187) );
  OAI22XL U393 ( .A0(n439), .A1(n383), .B0(n440), .B1(n406), .Y(n186) );
  OAI22XL U394 ( .A0(n440), .A1(n383), .B0(n441), .B1(n406), .Y(n185) );
  OAI2BB2XL U395 ( .B0(n441), .B1(n383), .A0N(n413), .A1N(a[0]), .Y(n184) );
  NOR2X1 U396 ( .A(n384), .B(n399), .Y(n182) );
  OAI22XL U397 ( .A0(n442), .A1(n378), .B0(n384), .B1(n443), .Y(n181) );
  XOR2X1 U398 ( .A(n382), .B(n393), .Y(n442) );
  OAI22XL U399 ( .A0(n443), .A1(n378), .B0(n384), .B1(n444), .Y(n180) );
  XOR2X1 U400 ( .A(b[1]), .B(n382), .Y(n443) );
  OAI22XL U401 ( .A0(n444), .A1(n378), .B0(n384), .B1(n445), .Y(n179) );
  OAI22XL U402 ( .A0(n445), .A1(n378), .B0(n384), .B1(n446), .Y(n178) );
  OAI22XL U403 ( .A0(n446), .A1(n378), .B0(n384), .B1(n447), .Y(n177) );
  OAI22XL U404 ( .A0(n447), .A1(n378), .B0(n384), .B1(n448), .Y(n176) );
  OAI22XL U405 ( .A0(n448), .A1(n378), .B0(n384), .B1(n449), .Y(n175) );
  OAI22XL U406 ( .A0(n449), .A1(n378), .B0(n384), .B1(n450), .Y(n174) );
  OAI22XL U407 ( .A0(n450), .A1(n378), .B0(n384), .B1(n409), .Y(n173) );
  OAI22XL U408 ( .A0(n411), .A1(n378), .B0(n384), .B1(n451), .Y(n171) );
  XOR2X1 U409 ( .A(b[11]), .B(n382), .Y(n451) );
  NOR2X1 U410 ( .A(n386), .B(n399), .Y(n169) );
  OAI22XL U411 ( .A0(n453), .A1(n385), .B0(n386), .B1(n454), .Y(n167) );
  XOR2X1 U412 ( .A(b[1]), .B(n381), .Y(n453) );
  OAI22XL U413 ( .A0(n454), .A1(n385), .B0(n386), .B1(n455), .Y(n166) );
  OAI22XL U414 ( .A0(n455), .A1(n385), .B0(n386), .B1(n456), .Y(n165) );
  OAI22XL U415 ( .A0(n456), .A1(n385), .B0(n386), .B1(n457), .Y(n164) );
  OAI22XL U416 ( .A0(n457), .A1(n385), .B0(n386), .B1(n458), .Y(n163) );
  OAI22XL U417 ( .A0(n458), .A1(n385), .B0(n386), .B1(n459), .Y(n162) );
  OAI22XL U418 ( .A0(n459), .A1(n385), .B0(n386), .B1(n460), .Y(n161) );
  OAI22XL U419 ( .A0(n460), .A1(n385), .B0(n386), .B1(n461), .Y(n160) );
  OAI22XL U420 ( .A0(n461), .A1(n385), .B0(n386), .B1(n420), .Y(n159) );
  XOR2X1 U421 ( .A(b[11]), .B(n381), .Y(n419) );
  OAI22XL U422 ( .A0(n462), .A1(n387), .B0(n388), .B1(n463), .Y(n156) );
  OAI22XL U423 ( .A0(n463), .A1(n387), .B0(n388), .B1(n464), .Y(n155) );
  OAI22XL U424 ( .A0(n464), .A1(n387), .B0(n388), .B1(n465), .Y(n154) );
  OAI22XL U425 ( .A0(n465), .A1(n387), .B0(n388), .B1(n466), .Y(n153) );
  OAI22XL U426 ( .A0(n466), .A1(n387), .B0(n388), .B1(n467), .Y(n152) );
  XOR2X1 U427 ( .A(b[4]), .B(n380), .Y(n466) );
  OAI22XL U428 ( .A0(n467), .A1(n387), .B0(n388), .B1(n414), .Y(n151) );
  XOR2X1 U429 ( .A(b[6]), .B(n380), .Y(n414) );
  XOR2X1 U430 ( .A(b[5]), .B(n380), .Y(n467) );
  OAI22XL U431 ( .A0(n417), .A1(n387), .B0(n388), .B1(n468), .Y(n150) );
  XOR2X1 U432 ( .A(b[7]), .B(n380), .Y(n417) );
  OAI22XL U433 ( .A0(n468), .A1(n387), .B0(n388), .B1(n469), .Y(n149) );
  XOR2X1 U434 ( .A(b[8]), .B(n380), .Y(n468) );
  OAI22XL U435 ( .A0(n469), .A1(n387), .B0(n388), .B1(n423), .Y(n148) );
  XOR2X1 U436 ( .A(b[10]), .B(n380), .Y(n423) );
  XOR2X1 U437 ( .A(b[9]), .B(n380), .Y(n469) );
  AO21X1 U438 ( .A0(n387), .A1(n388), .B0(n422), .Y(n147) );
  XOR2X1 U439 ( .A(b[11]), .B(n380), .Y(n422) );
  OAI22XL U440 ( .A0(n470), .A1(n389), .B0(n390), .B1(n471), .Y(n145) );
  XOR2X1 U441 ( .A(n379), .B(n393), .Y(n470) );
  OAI22XL U442 ( .A0(n471), .A1(n389), .B0(n390), .B1(n472), .Y(n144) );
  OAI22XL U443 ( .A0(n472), .A1(n389), .B0(n390), .B1(n473), .Y(n143) );
  OAI22XL U444 ( .A0(n473), .A1(n389), .B0(n390), .B1(n474), .Y(n142) );
  OAI22XL U445 ( .A0(n474), .A1(n389), .B0(n390), .B1(n475), .Y(n141) );
  XOR2X1 U446 ( .A(b[4]), .B(n379), .Y(n474) );
  OAI22XL U447 ( .A0(n475), .A1(n389), .B0(n390), .B1(n476), .Y(n140) );
  XOR2X1 U448 ( .A(b[5]), .B(n379), .Y(n475) );
  OAI22XL U449 ( .A0(n476), .A1(n389), .B0(n390), .B1(n477), .Y(n139) );
  XOR2X1 U450 ( .A(b[6]), .B(n379), .Y(n476) );
  OAI22XL U451 ( .A0(n477), .A1(n389), .B0(n390), .B1(n478), .Y(n138) );
  XOR2X1 U452 ( .A(b[7]), .B(n379), .Y(n477) );
  OAI22XL U453 ( .A0(n478), .A1(n389), .B0(n390), .B1(n479), .Y(n137) );
  XOR2X1 U454 ( .A(b[8]), .B(n379), .Y(n478) );
  OAI22XL U455 ( .A0(n479), .A1(n389), .B0(n390), .B1(n426), .Y(n136) );
  XOR2X1 U456 ( .A(b[10]), .B(n379), .Y(n426) );
  XOR2X1 U457 ( .A(b[9]), .B(n379), .Y(n479) );
  AO21X1 U458 ( .A0(n389), .A1(n390), .B0(n425), .Y(n135) );
  XOR2X1 U459 ( .A(b[11]), .B(n379), .Y(n425) );
  OAI22XL U460 ( .A0(n480), .A1(n391), .B0(n392), .B1(n481), .Y(n133) );
  XOR2X1 U461 ( .A(n400), .B(n393), .Y(n480) );
  OAI22XL U462 ( .A0(n481), .A1(n391), .B0(n392), .B1(n482), .Y(n132) );
  OAI22XL U463 ( .A0(n482), .A1(n391), .B0(n392), .B1(n483), .Y(n131) );
  OAI22XL U464 ( .A0(n483), .A1(n391), .B0(n392), .B1(n484), .Y(n130) );
  OAI22XL U465 ( .A0(n484), .A1(n391), .B0(n392), .B1(n485), .Y(n129) );
  XOR2X1 U466 ( .A(b[4]), .B(n400), .Y(n484) );
  OAI22XL U467 ( .A0(n485), .A1(n391), .B0(n392), .B1(n486), .Y(n128) );
  XOR2X1 U468 ( .A(b[5]), .B(n400), .Y(n485) );
  OAI22XL U469 ( .A0(n486), .A1(n391), .B0(n392), .B1(n487), .Y(n127) );
  XOR2X1 U470 ( .A(b[6]), .B(n400), .Y(n486) );
  OAI22XL U471 ( .A0(n487), .A1(n391), .B0(n392), .B1(n488), .Y(n126) );
  XOR2X1 U472 ( .A(b[7]), .B(n400), .Y(n487) );
  OAI22XL U473 ( .A0(n488), .A1(n391), .B0(n392), .B1(n489), .Y(n125) );
  XOR2X1 U474 ( .A(b[8]), .B(n400), .Y(n488) );
  OAI22XL U475 ( .A0(n489), .A1(n391), .B0(n392), .B1(n430), .Y(n124) );
  XOR2X1 U476 ( .A(b[10]), .B(n400), .Y(n430) );
  XOR2X1 U477 ( .A(b[9]), .B(n400), .Y(n489) );
  AO21X1 U478 ( .A0(n391), .A1(n392), .B0(n429), .Y(n123) );
  XOR2X1 U479 ( .A(b[11]), .B(n400), .Y(n429) );
  OAI21XL U480 ( .A0(n393), .A1(n405), .B0(n383), .Y(n122) );
  XOR2X1 U481 ( .A(a[3]), .B(a[2]), .Y(n490) );
  XOR2X1 U482 ( .A(a[5]), .B(a[4]), .Y(n491) );
  XOR2X1 U483 ( .A(a[7]), .B(a[6]), .Y(n492) );
  OAI32X1 U484 ( .A0(n379), .A1(n393), .A2(n390), .B0(n379), .B1(n389), .Y(
        n118) );
  XOR2X1 U485 ( .A(a[9]), .B(a[8]), .Y(n493) );
  OAI32X1 U486 ( .A0(n400), .A1(n393), .A2(n392), .B0(n400), .B1(n391), .Y(
        n117) );
  XOR2X1 U487 ( .A(a[11]), .B(a[10]), .Y(n494) );
endmodule


module geofence_DW_mult_tc_12 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494;

  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  ADDFXL U5 ( .A(n27), .B(n395), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U7 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U8 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n397), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n399), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n402), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n400), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  ADDHXL U54 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHXL U61 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDHXL U63 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  CLKBUFX3 U281 ( .A(a[0]), .Y(n378) );
  NAND2X2 U282 ( .A(n386), .B(n490), .Y(n379) );
  NAND2X2 U283 ( .A(n387), .B(n491), .Y(n380) );
  ADDFXL U284 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  CLKBUFX3 U285 ( .A(n416), .Y(n388) );
  CLKBUFX3 U286 ( .A(n403), .Y(n383) );
  CLKBUFX3 U287 ( .A(n404), .Y(n384) );
  ADDFXL U288 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  CLKBUFX3 U289 ( .A(n411), .Y(n386) );
  XOR2X1 U290 ( .A(b[1]), .B(n384), .Y(n443) );
  CLKBUFX3 U291 ( .A(n413), .Y(n385) );
  NOR2XL U292 ( .A(n406), .B(n407), .Y(product[0]) );
  NOR2XL U293 ( .A(n391), .B(n407), .Y(n146) );
  OAI2BB1XL U294 ( .A0N(n406), .A1N(n385), .B0(n414), .Y(n408) );
  AO21XL U295 ( .A0(n380), .A1(n387), .B0(n420), .Y(n158) );
  XOR2XL U296 ( .A(b[11]), .B(n382), .Y(n422) );
  AO21XL U297 ( .A0(n388), .A1(n389), .B0(n422), .Y(n147) );
  AO21XL U298 ( .A0(n390), .A1(n391), .B0(n425), .Y(n135) );
  XNOR2XL U299 ( .A(a[2]), .B(a[1]), .Y(n411) );
  OAI32XL U300 ( .A0(n384), .A1(n394), .A2(n386), .B0(n384), .B1(n379), .Y(
        n121) );
  INVXL U301 ( .A(a[3]), .Y(n404) );
  INVX1 U302 ( .A(a[5]), .Y(n403) );
  XOR2XL U303 ( .A(b[2]), .B(n405), .Y(n433) );
  XOR2XL U304 ( .A(b[3]), .B(n405), .Y(n434) );
  INVX1 U305 ( .A(n394), .Y(n407) );
  XOR2XL U306 ( .A(b[2]), .B(n384), .Y(n444) );
  XOR2XL U307 ( .A(b[1]), .B(n382), .Y(n463) );
  XOR2XL U308 ( .A(b[4]), .B(n405), .Y(n435) );
  XOR2XL U309 ( .A(b[3]), .B(n384), .Y(n445) );
  XOR2XL U310 ( .A(b[5]), .B(n405), .Y(n436) );
  XNOR2XL U311 ( .A(a[6]), .B(a[5]), .Y(n417) );
  INVX1 U312 ( .A(a[9]), .Y(n398) );
  XOR2XL U313 ( .A(b[1]), .B(n381), .Y(n471) );
  XNOR2XL U314 ( .A(a[8]), .B(a[7]), .Y(n424) );
  XOR2XL U315 ( .A(b[6]), .B(n405), .Y(n437) );
  XOR2XL U316 ( .A(b[2]), .B(n383), .Y(n454) );
  XOR2XL U317 ( .A(b[7]), .B(n405), .Y(n438) );
  XOR2XL U318 ( .A(b[3]), .B(n383), .Y(n455) );
  OAI32XL U319 ( .A0(n396), .A1(n394), .A2(n393), .B0(n396), .B1(n392), .Y(
        n117) );
  XOR2XL U320 ( .A(n396), .B(n394), .Y(n480) );
  XNOR2XL U321 ( .A(a[10]), .B(a[9]), .Y(n428) );
  XOR2XL U322 ( .A(b[4]), .B(n384), .Y(n446) );
  XOR2XL U323 ( .A(b[2]), .B(n382), .Y(n464) );
  XOR2XL U324 ( .A(b[8]), .B(n405), .Y(n439) );
  XOR2XL U325 ( .A(b[9]), .B(n405), .Y(n440) );
  XOR2XL U326 ( .A(b[3]), .B(n382), .Y(n465) );
  XOR2XL U327 ( .A(b[10]), .B(n405), .Y(n441) );
  XOR2XL U328 ( .A(b[2]), .B(n381), .Y(n472) );
  XOR2XL U329 ( .A(b[1]), .B(n396), .Y(n481) );
  XOR2XL U330 ( .A(b[5]), .B(n384), .Y(n447) );
  XOR2XL U331 ( .A(b[4]), .B(n383), .Y(n456) );
  XOR2XL U332 ( .A(b[3]), .B(n381), .Y(n473) );
  XOR2XL U333 ( .A(b[4]), .B(n382), .Y(n466) );
  XOR2XL U334 ( .A(b[11]), .B(a[1]), .Y(n414) );
  XOR2XL U335 ( .A(b[7]), .B(n384), .Y(n449) );
  XOR2XL U336 ( .A(b[5]), .B(n383), .Y(n457) );
  XOR2XL U337 ( .A(b[6]), .B(n384), .Y(n448) );
  XOR2XL U338 ( .A(b[8]), .B(n384), .Y(n450) );
  XOR2XL U339 ( .A(b[2]), .B(n396), .Y(n482) );
  XOR2XL U340 ( .A(b[9]), .B(n384), .Y(n410) );
  XOR2XL U341 ( .A(b[5]), .B(n382), .Y(n467) );
  XOR2XL U342 ( .A(b[4]), .B(n381), .Y(n474) );
  XOR2XL U343 ( .A(b[3]), .B(n396), .Y(n483) );
  XOR2XL U344 ( .A(b[10]), .B(n384), .Y(n412) );
  XOR2XL U345 ( .A(b[5]), .B(n381), .Y(n475) );
  XOR2XL U346 ( .A(b[6]), .B(n383), .Y(n458) );
  XOR2XL U347 ( .A(b[6]), .B(n382), .Y(n415) );
  XOR2XL U348 ( .A(b[8]), .B(n383), .Y(n460) );
  XOR2XL U349 ( .A(b[7]), .B(n383), .Y(n459) );
  XOR2XL U350 ( .A(b[4]), .B(n396), .Y(n484) );
  XOR2XL U351 ( .A(b[9]), .B(n383), .Y(n461) );
  XOR2XL U352 ( .A(b[7]), .B(n382), .Y(n418) );
  XOR2XL U353 ( .A(b[10]), .B(n383), .Y(n421) );
  XOR2XL U354 ( .A(b[5]), .B(n396), .Y(n485) );
  XOR2XL U355 ( .A(b[6]), .B(n381), .Y(n476) );
  XOR2XL U356 ( .A(b[7]), .B(n381), .Y(n477) );
  XOR2XL U357 ( .A(b[9]), .B(n382), .Y(n469) );
  XOR2XL U358 ( .A(b[8]), .B(n382), .Y(n468) );
  XOR2XL U359 ( .A(b[8]), .B(n381), .Y(n478) );
  XOR2XL U360 ( .A(b[10]), .B(n382), .Y(n423) );
  XOR2XL U361 ( .A(b[9]), .B(n381), .Y(n479) );
  XOR2XL U362 ( .A(b[10]), .B(n381), .Y(n426) );
  CLKINVX1 U363 ( .A(n65), .Y(n400) );
  CLKINVX1 U364 ( .A(n25), .Y(n395) );
  CLKINVX1 U365 ( .A(n51), .Y(n402) );
  INVX3 U366 ( .A(a[11]), .Y(n396) );
  CLKINVX1 U367 ( .A(n39), .Y(n399) );
  CLKINVX1 U368 ( .A(n31), .Y(n397) );
  INVX3 U369 ( .A(a[1]), .Y(n405) );
  NAND2X1 U370 ( .A(a[1]), .B(n406), .Y(n413) );
  INVX3 U371 ( .A(n378), .Y(n406) );
  CLKBUFX3 U372 ( .A(n419), .Y(n387) );
  XNOR2X1 U373 ( .A(a[4]), .B(a[3]), .Y(n419) );
  NAND2X1 U374 ( .A(n389), .B(n492), .Y(n416) );
  CLKBUFX3 U375 ( .A(n401), .Y(n382) );
  CLKINVX1 U376 ( .A(a[7]), .Y(n401) );
  CLKBUFX3 U377 ( .A(n417), .Y(n389) );
  CLKBUFX3 U378 ( .A(n427), .Y(n390) );
  NAND2X1 U379 ( .A(n391), .B(n493), .Y(n427) );
  CLKBUFX3 U380 ( .A(n398), .Y(n381) );
  CLKBUFX3 U381 ( .A(n424), .Y(n391) );
  CLKBUFX3 U382 ( .A(n431), .Y(n392) );
  NAND2X1 U383 ( .A(n393), .B(n494), .Y(n431) );
  CLKBUFX3 U384 ( .A(n428), .Y(n393) );
  CLKBUFX3 U385 ( .A(b[0]), .Y(n394) );
  CLKINVX1 U386 ( .A(n3), .Y(product[23]) );
  XOR2X1 U387 ( .A(n408), .B(n409), .Y(n74) );
  NAND2BX1 U388 ( .AN(n408), .B(n409), .Y(n73) );
  OA22X1 U389 ( .A0(n410), .A1(n379), .B0(n386), .B1(n412), .Y(n409) );
  OAI22XL U390 ( .A0(n415), .A1(n388), .B0(n389), .B1(n418), .Y(n65) );
  OAI22XL U391 ( .A0(n387), .A1(n420), .B0(n421), .B1(n380), .Y(n51) );
  OAI22XL U392 ( .A0(n389), .A1(n422), .B0(n423), .B1(n388), .Y(n39) );
  OAI22XL U393 ( .A0(n391), .A1(n425), .B0(n426), .B1(n390), .Y(n31) );
  OAI22XL U394 ( .A0(n393), .A1(n429), .B0(n430), .B1(n392), .Y(n25) );
  OAI22XL U395 ( .A0(n394), .A1(n385), .B0(n432), .B1(n406), .Y(n194) );
  OAI22XL U396 ( .A0(n432), .A1(n385), .B0(n433), .B1(n406), .Y(n193) );
  XOR2X1 U397 ( .A(b[1]), .B(n405), .Y(n432) );
  OAI22XL U398 ( .A0(n433), .A1(n385), .B0(n434), .B1(n406), .Y(n192) );
  OAI22XL U399 ( .A0(n434), .A1(n385), .B0(n435), .B1(n406), .Y(n191) );
  OAI22XL U400 ( .A0(n435), .A1(n385), .B0(n436), .B1(n406), .Y(n190) );
  OAI22XL U401 ( .A0(n436), .A1(n385), .B0(n437), .B1(n406), .Y(n189) );
  OAI22XL U402 ( .A0(n437), .A1(n385), .B0(n438), .B1(n406), .Y(n188) );
  OAI22XL U403 ( .A0(n438), .A1(n385), .B0(n439), .B1(n406), .Y(n187) );
  OAI22XL U404 ( .A0(n439), .A1(n385), .B0(n440), .B1(n406), .Y(n186) );
  OAI22XL U405 ( .A0(n440), .A1(n385), .B0(n441), .B1(n406), .Y(n185) );
  OAI2BB2XL U406 ( .B0(n441), .B1(n385), .A0N(n414), .A1N(n378), .Y(n184) );
  NOR2X1 U407 ( .A(n386), .B(n407), .Y(n182) );
  OAI22XL U408 ( .A0(n442), .A1(n379), .B0(n386), .B1(n443), .Y(n181) );
  XOR2X1 U409 ( .A(n384), .B(n394), .Y(n442) );
  OAI22XL U410 ( .A0(n443), .A1(n379), .B0(n386), .B1(n444), .Y(n180) );
  OAI22XL U411 ( .A0(n444), .A1(n379), .B0(n386), .B1(n445), .Y(n179) );
  OAI22XL U412 ( .A0(n445), .A1(n379), .B0(n386), .B1(n446), .Y(n178) );
  OAI22XL U413 ( .A0(n446), .A1(n379), .B0(n386), .B1(n447), .Y(n177) );
  OAI22XL U414 ( .A0(n447), .A1(n379), .B0(n386), .B1(n448), .Y(n176) );
  OAI22XL U415 ( .A0(n448), .A1(n379), .B0(n386), .B1(n449), .Y(n175) );
  OAI22XL U416 ( .A0(n449), .A1(n379), .B0(n386), .B1(n450), .Y(n174) );
  OAI22XL U417 ( .A0(n450), .A1(n379), .B0(n386), .B1(n410), .Y(n173) );
  OAI22XL U418 ( .A0(n412), .A1(n379), .B0(n386), .B1(n451), .Y(n171) );
  AO21X1 U419 ( .A0(n379), .A1(n386), .B0(n451), .Y(n170) );
  XOR2X1 U420 ( .A(b[11]), .B(n384), .Y(n451) );
  NOR2X1 U421 ( .A(n387), .B(n407), .Y(n169) );
  OAI22XL U422 ( .A0(n452), .A1(n380), .B0(n387), .B1(n453), .Y(n168) );
  XOR2X1 U423 ( .A(n383), .B(n394), .Y(n452) );
  OAI22XL U424 ( .A0(n453), .A1(n380), .B0(n387), .B1(n454), .Y(n167) );
  XOR2X1 U425 ( .A(b[1]), .B(n383), .Y(n453) );
  OAI22XL U426 ( .A0(n454), .A1(n380), .B0(n387), .B1(n455), .Y(n166) );
  OAI22XL U427 ( .A0(n455), .A1(n380), .B0(n387), .B1(n456), .Y(n165) );
  OAI22XL U428 ( .A0(n456), .A1(n380), .B0(n387), .B1(n457), .Y(n164) );
  OAI22XL U429 ( .A0(n457), .A1(n380), .B0(n387), .B1(n458), .Y(n163) );
  OAI22XL U430 ( .A0(n458), .A1(n380), .B0(n387), .B1(n459), .Y(n162) );
  OAI22XL U431 ( .A0(n459), .A1(n380), .B0(n387), .B1(n460), .Y(n161) );
  OAI22XL U432 ( .A0(n460), .A1(n380), .B0(n387), .B1(n461), .Y(n160) );
  OAI22XL U433 ( .A0(n461), .A1(n380), .B0(n387), .B1(n421), .Y(n159) );
  XOR2X1 U434 ( .A(b[11]), .B(n383), .Y(n420) );
  NOR2X1 U435 ( .A(n389), .B(n407), .Y(n157) );
  OAI22XL U436 ( .A0(n462), .A1(n388), .B0(n389), .B1(n463), .Y(n156) );
  XOR2X1 U437 ( .A(n382), .B(n394), .Y(n462) );
  OAI22XL U438 ( .A0(n463), .A1(n388), .B0(n389), .B1(n464), .Y(n155) );
  OAI22XL U439 ( .A0(n464), .A1(n388), .B0(n389), .B1(n465), .Y(n154) );
  OAI22XL U440 ( .A0(n465), .A1(n388), .B0(n389), .B1(n466), .Y(n153) );
  OAI22XL U441 ( .A0(n466), .A1(n388), .B0(n389), .B1(n467), .Y(n152) );
  OAI22XL U442 ( .A0(n467), .A1(n388), .B0(n389), .B1(n415), .Y(n151) );
  OAI22XL U443 ( .A0(n418), .A1(n388), .B0(n389), .B1(n468), .Y(n150) );
  OAI22XL U444 ( .A0(n468), .A1(n388), .B0(n389), .B1(n469), .Y(n149) );
  OAI22XL U445 ( .A0(n469), .A1(n388), .B0(n389), .B1(n423), .Y(n148) );
  OAI22XL U446 ( .A0(n470), .A1(n390), .B0(n391), .B1(n471), .Y(n145) );
  XOR2X1 U447 ( .A(n381), .B(n394), .Y(n470) );
  OAI22XL U448 ( .A0(n471), .A1(n390), .B0(n391), .B1(n472), .Y(n144) );
  OAI22XL U449 ( .A0(n472), .A1(n390), .B0(n391), .B1(n473), .Y(n143) );
  OAI22XL U450 ( .A0(n473), .A1(n390), .B0(n391), .B1(n474), .Y(n142) );
  OAI22XL U451 ( .A0(n474), .A1(n390), .B0(n391), .B1(n475), .Y(n141) );
  OAI22XL U452 ( .A0(n475), .A1(n390), .B0(n391), .B1(n476), .Y(n140) );
  OAI22XL U453 ( .A0(n476), .A1(n390), .B0(n391), .B1(n477), .Y(n139) );
  OAI22XL U454 ( .A0(n477), .A1(n390), .B0(n391), .B1(n478), .Y(n138) );
  OAI22XL U455 ( .A0(n478), .A1(n390), .B0(n391), .B1(n479), .Y(n137) );
  OAI22XL U456 ( .A0(n479), .A1(n390), .B0(n391), .B1(n426), .Y(n136) );
  XOR2X1 U457 ( .A(b[11]), .B(n381), .Y(n425) );
  NOR2X1 U458 ( .A(n393), .B(n407), .Y(n134) );
  OAI22XL U459 ( .A0(n480), .A1(n392), .B0(n393), .B1(n481), .Y(n133) );
  OAI22XL U460 ( .A0(n481), .A1(n392), .B0(n393), .B1(n482), .Y(n132) );
  OAI22XL U461 ( .A0(n482), .A1(n392), .B0(n393), .B1(n483), .Y(n131) );
  OAI22XL U462 ( .A0(n483), .A1(n392), .B0(n393), .B1(n484), .Y(n130) );
  OAI22XL U463 ( .A0(n484), .A1(n392), .B0(n393), .B1(n485), .Y(n129) );
  OAI22XL U464 ( .A0(n485), .A1(n392), .B0(n393), .B1(n486), .Y(n128) );
  OAI22XL U465 ( .A0(n486), .A1(n392), .B0(n393), .B1(n487), .Y(n127) );
  XOR2X1 U466 ( .A(b[6]), .B(n396), .Y(n486) );
  OAI22XL U467 ( .A0(n487), .A1(n392), .B0(n393), .B1(n488), .Y(n126) );
  XOR2X1 U468 ( .A(b[7]), .B(n396), .Y(n487) );
  OAI22XL U469 ( .A0(n488), .A1(n392), .B0(n393), .B1(n489), .Y(n125) );
  XOR2X1 U470 ( .A(b[8]), .B(n396), .Y(n488) );
  OAI22XL U471 ( .A0(n489), .A1(n392), .B0(n393), .B1(n430), .Y(n124) );
  XOR2X1 U472 ( .A(b[10]), .B(n396), .Y(n430) );
  XOR2X1 U473 ( .A(b[9]), .B(n396), .Y(n489) );
  AO21X1 U474 ( .A0(n392), .A1(n393), .B0(n429), .Y(n123) );
  XOR2X1 U475 ( .A(b[11]), .B(n396), .Y(n429) );
  OAI21XL U476 ( .A0(n394), .A1(n405), .B0(n385), .Y(n122) );
  XOR2X1 U477 ( .A(a[3]), .B(a[2]), .Y(n490) );
  OAI32X1 U478 ( .A0(n383), .A1(n394), .A2(n387), .B0(n383), .B1(n380), .Y(
        n120) );
  XOR2X1 U479 ( .A(a[5]), .B(a[4]), .Y(n491) );
  OAI32X1 U480 ( .A0(n382), .A1(n394), .A2(n389), .B0(n382), .B1(n388), .Y(
        n119) );
  XOR2X1 U481 ( .A(a[7]), .B(a[6]), .Y(n492) );
  OAI32X1 U482 ( .A0(n381), .A1(n394), .A2(n391), .B0(n381), .B1(n390), .Y(
        n118) );
  XOR2X1 U483 ( .A(a[9]), .B(a[8]), .Y(n493) );
  XOR2X1 U484 ( .A(a[11]), .B(a[10]), .Y(n494) );
endmodule


module geofence_DW01_sub_38 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;

  XOR3X1 U2_24 ( .A(A[24]), .B(n11), .C(\carry[24] ), .Y(DIFF[24]) );
  AND2X2 U1 ( .A(n48), .B(n18), .Y(n49) );
  AND2X2 U2 ( .A(n40), .B(n16), .Y(n41) );
  OR2X1 U3 ( .A(n40), .B(n16), .Y(n3) );
  OAI22X1 U4 ( .A0(n36), .A1(n15), .B0(B[17]), .B1(n37), .Y(n34) );
  CLKAND2X6 U5 ( .A(n36), .B(n15), .Y(n37) );
  OAI22X1 U6 ( .A0(n48), .A1(n18), .B0(B[11]), .B1(n49), .Y(n46) );
  INVX1 U7 ( .A(A[1]), .Y(n23) );
  AND2X2 U8 ( .A(n44), .B(n17), .Y(n45) );
  AND2X2 U9 ( .A(n56), .B(n20), .Y(n57) );
  CLKINVX1 U10 ( .A(A[7]), .Y(n20) );
  NAND2X1 U11 ( .A(n60), .B(n21), .Y(n6) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n5) );
  OAI2BB2XL U13 ( .B0(n60), .B1(n21), .A0N(n5), .A1N(n6), .Y(n58) );
  NOR2X1 U14 ( .A(A[2]), .B(n64), .Y(n65) );
  AOI2BB2X1 U15 ( .B0(n64), .B1(A[2]), .A0N(B[2]), .A1N(n65), .Y(n63) );
  OR2X1 U16 ( .A(B[1]), .B(n67), .Y(n2) );
  NAND2X1 U17 ( .A(n1), .B(n2), .Y(n64) );
  OR2X1 U18 ( .A(n66), .B(n23), .Y(n1) );
  OR2X8 U19 ( .A(B[15]), .B(n41), .Y(n4) );
  NAND2X8 U20 ( .A(n3), .B(n4), .Y(n38) );
  NOR2X4 U21 ( .A(A[16]), .B(n38), .Y(n39) );
  AOI2BB2X4 U22 ( .B0(n38), .B1(A[16]), .A0N(B[16]), .A1N(n39), .Y(n36) );
  OAI22XL U23 ( .A0(n56), .A1(n20), .B0(B[7]), .B1(n57), .Y(n54) );
  OAI22XL U24 ( .A0(n44), .A1(n17), .B0(B[13]), .B1(n45), .Y(n42) );
  OAI22XL U25 ( .A0(n52), .A1(n19), .B0(B[9]), .B1(n53), .Y(n50) );
  NAND2X1 U26 ( .A(n63), .B(n22), .Y(n8) );
  CLKINVX1 U27 ( .A(B[3]), .Y(n7) );
  OAI2BB2XL U28 ( .B0(n63), .B1(n22), .A0N(n7), .A1N(n8), .Y(n61) );
  AND2X2 U29 ( .A(n66), .B(n23), .Y(n67) );
  AOI2BB2XL U30 ( .B0(n50), .B1(A[10]), .A0N(B[10]), .A1N(n51), .Y(n48) );
  NOR2XL U31 ( .A(A[10]), .B(n50), .Y(n51) );
  AOI2BB2XL U32 ( .B0(n42), .B1(A[14]), .A0N(B[14]), .A1N(n43), .Y(n40) );
  NOR2XL U33 ( .A(A[14]), .B(n42), .Y(n43) );
  AOI2BB2XL U34 ( .B0(n34), .B1(A[18]), .A0N(B[18]), .A1N(n35), .Y(n32) );
  NOR2XL U35 ( .A(A[18]), .B(n34), .Y(n35) );
  AOI2BB2XL U36 ( .B0(n54), .B1(A[8]), .A0N(B[8]), .A1N(n55), .Y(n52) );
  NOR2XL U37 ( .A(A[8]), .B(n54), .Y(n55) );
  AND2X2 U38 ( .A(n28), .B(n13), .Y(n29) );
  NOR2X1 U39 ( .A(A[22]), .B(n26), .Y(n27) );
  AOI2BB2X1 U40 ( .B0(n26), .B1(A[22]), .A0N(B[22]), .A1N(n27), .Y(n24) );
  OR2X1 U41 ( .A(n28), .B(n13), .Y(n9) );
  OR2X1 U42 ( .A(B[21]), .B(n29), .Y(n10) );
  NAND2X1 U43 ( .A(n9), .B(n10), .Y(n26) );
  AOI2BB2XL U44 ( .B0(n30), .B1(A[20]), .A0N(B[20]), .A1N(n31), .Y(n28) );
  CLKINVX1 U45 ( .A(A[5]), .Y(n21) );
  CLKINVX1 U46 ( .A(A[9]), .Y(n19) );
  CLKINVX1 U47 ( .A(A[11]), .Y(n18) );
  CLKINVX1 U48 ( .A(A[13]), .Y(n17) );
  CLKINVX1 U49 ( .A(A[15]), .Y(n16) );
  CLKINVX1 U50 ( .A(A[17]), .Y(n15) );
  CLKINVX1 U51 ( .A(A[19]), .Y(n14) );
  CLKINVX1 U52 ( .A(A[21]), .Y(n13) );
  CLKINVX1 U53 ( .A(A[24]), .Y(n12) );
  CLKINVX1 U54 ( .A(A[3]), .Y(n22) );
  CLKINVX1 U55 ( .A(B[24]), .Y(n11) );
  OAI22XL U56 ( .A0(n24), .A1(n12), .B0(B[23]), .B1(n25), .Y(\carry[24] ) );
  AND2X1 U57 ( .A(n24), .B(n12), .Y(n25) );
  NOR2X1 U58 ( .A(A[20]), .B(n30), .Y(n31) );
  OAI22XL U59 ( .A0(n32), .A1(n14), .B0(B[19]), .B1(n33), .Y(n30) );
  AND2X1 U60 ( .A(n32), .B(n14), .Y(n33) );
  AOI2BB2X1 U61 ( .B0(n46), .B1(A[12]), .A0N(B[12]), .A1N(n47), .Y(n44) );
  NOR2X1 U62 ( .A(A[12]), .B(n46), .Y(n47) );
  AND2X1 U63 ( .A(n52), .B(n19), .Y(n53) );
  AOI2BB2X1 U64 ( .B0(n58), .B1(A[6]), .A0N(B[6]), .A1N(n59), .Y(n56) );
  NOR2X1 U65 ( .A(A[6]), .B(n58), .Y(n59) );
  AOI2BB2X1 U66 ( .B0(n61), .B1(A[4]), .A0N(B[4]), .A1N(n62), .Y(n60) );
  NOR2X1 U67 ( .A(A[4]), .B(n61), .Y(n62) );
  NOR2BX1 U68 ( .AN(B[0]), .B(A[0]), .Y(n66) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489;

  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n391), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n390), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n389), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n393), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  INVX4 U281 ( .A(a[9]), .Y(n396) );
  ADDHX1 U282 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  XNOR2X4 U283 ( .A(a[8]), .B(a[7]), .Y(n420) );
  BUFX4 U284 ( .A(n412), .Y(n385) );
  ADDFX1 U285 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  INVX3 U286 ( .A(a[0]), .Y(n401) );
  OAI22XL U287 ( .A0(n475), .A1(n386), .B0(n387), .B1(n476), .Y(n133) );
  BUFX4 U288 ( .A(n406), .Y(n382) );
  INVX3 U289 ( .A(n379), .Y(n417) );
  AND2X2 U290 ( .A(n383), .B(n486), .Y(n379) );
  BUFX4 U291 ( .A(n411), .Y(n384) );
  BUFX4 U292 ( .A(n395), .Y(n380) );
  CLKINVX1 U293 ( .A(a[11]), .Y(n395) );
  ADDFXL U294 ( .A(n27), .B(n392), .CI(n5), .CO(n4), .S(product[21]) );
  CLKINVX1 U295 ( .A(n3), .Y(product[23]) );
  NAND2X4 U296 ( .A(n420), .B(n488), .Y(n378) );
  OAI22XL U297 ( .A0(n476), .A1(n386), .B0(n387), .B1(n477), .Y(n132) );
  XOR2X1 U298 ( .A(b[2]), .B(n380), .Y(n477) );
  NOR2X1 U299 ( .A(n387), .B(n394), .Y(n134) );
  NOR2X1 U300 ( .A(n420), .B(n394), .Y(n146) );
  OAI22X2 U301 ( .A0(n437), .A1(n381), .B0(n382), .B1(n438), .Y(n181) );
  BUFX4 U302 ( .A(n405), .Y(n381) );
  NOR2XL U303 ( .A(n385), .B(n394), .Y(n157) );
  ADDFHX2 U304 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHX1 U305 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDHX1 U306 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  BUFX12 U307 ( .A(n414), .Y(n383) );
  OAI22X1 U308 ( .A0(n465), .A1(n378), .B0(n420), .B1(n466), .Y(n145) );
  OAI32XL U309 ( .A0(n380), .A1(n388), .A2(n387), .B0(n380), .B1(n386), .Y(
        n117) );
  BUFX12 U310 ( .A(n423), .Y(n387) );
  CMPR42X2 U311 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  NAND2X6 U312 ( .A(n382), .B(n485), .Y(n405) );
  NOR2XL U313 ( .A(n382), .B(n394), .Y(n182) );
  OAI32XL U314 ( .A0(n399), .A1(n388), .A2(n382), .B0(n399), .B1(n381), .Y(
        n121) );
  ADDFHX1 U315 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  CMPR32X2 U316 ( .A(n91), .B(n97), .C(n17), .CO(n16), .S(product[9]) );
  ADDFHX1 U317 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  BUFX8 U318 ( .A(n426), .Y(n386) );
  CMPR32X2 U319 ( .A(n114), .B(n115), .C(n22), .CO(n21), .S(product[4]) );
  ADDFX2 U320 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFX1 U321 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFX2 U322 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  CMPR32X2 U323 ( .A(n48), .B(n54), .C(n11), .CO(n10), .S(product[15]) );
  CMPR32X2 U324 ( .A(n103), .B(n107), .C(n19), .CO(n18), .S(product[7]) );
  ADDFX2 U325 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  NOR2X1 U326 ( .A(n401), .B(n394), .Y(product[0]) );
  NAND2X1 U327 ( .A(n387), .B(n489), .Y(n426) );
  NAND2XL U328 ( .A(n385), .B(n487), .Y(n411) );
  CMPR32X2 U329 ( .A(n37), .B(n35), .C(n8), .CO(n7), .S(product[18]) );
  ADDFHX1 U330 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX1 U331 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFX1 U332 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  INVX1 U333 ( .A(n65), .Y(n393) );
  INVXL U334 ( .A(n51), .Y(n389) );
  ADDHX1 U335 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  OAI32XL U336 ( .A0(n396), .A1(n388), .A2(n420), .B0(n396), .B1(n378), .Y(
        n118) );
  XOR2XL U337 ( .A(n396), .B(n388), .Y(n465) );
  XOR2XL U338 ( .A(n398), .B(n388), .Y(n447) );
  OAI32XL U339 ( .A0(n397), .A1(n388), .A2(n385), .B0(n397), .B1(n384), .Y(
        n119) );
  XOR2XL U340 ( .A(n397), .B(n388), .Y(n457) );
  CMPR42X2 U341 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  AO21XL U342 ( .A0(n381), .A1(n382), .B0(n446), .Y(n170) );
  XOR2XL U343 ( .A(b[11]), .B(n399), .Y(n446) );
  OAI2BB1XL U344 ( .A0N(n401), .A1N(n408), .B0(n409), .Y(n402) );
  OA22XL U345 ( .A0(n404), .A1(n381), .B0(n382), .B1(n407), .Y(n403) );
  AO21XL U346 ( .A0(n384), .A1(n385), .B0(n418), .Y(n147) );
  XOR2XL U347 ( .A(b[11]), .B(n398), .Y(n415) );
  AO21XL U348 ( .A0(n378), .A1(n420), .B0(n421), .Y(n135) );
  XOR2XL U349 ( .A(b[11]), .B(n397), .Y(n418) );
  XOR2XL U350 ( .A(b[11]), .B(n396), .Y(n421) );
  XOR2XL U351 ( .A(b[11]), .B(n380), .Y(n424) );
  XOR2X1 U352 ( .A(b[1]), .B(n399), .Y(n438) );
  XOR2XL U353 ( .A(b[2]), .B(n396), .Y(n467) );
  XOR2XL U354 ( .A(b[3]), .B(n396), .Y(n468) );
  XOR2XL U355 ( .A(b[2]), .B(n398), .Y(n449) );
  XOR2XL U356 ( .A(b[2]), .B(n397), .Y(n459) );
  XOR2XL U357 ( .A(b[2]), .B(n399), .Y(n439) );
  XOR2XL U358 ( .A(b[3]), .B(n397), .Y(n460) );
  XOR2XL U359 ( .A(b[4]), .B(n397), .Y(n461) );
  XOR2XL U360 ( .A(b[3]), .B(n399), .Y(n440) );
  XOR2XL U361 ( .A(b[3]), .B(n398), .Y(n450) );
  XOR2XL U362 ( .A(b[3]), .B(n380), .Y(n478) );
  XOR2XL U363 ( .A(b[3]), .B(n400), .Y(n429) );
  XOR2XL U364 ( .A(b[4]), .B(n398), .Y(n451) );
  XOR2XL U365 ( .A(b[4]), .B(n380), .Y(n479) );
  XOR2XL U366 ( .A(b[4]), .B(n396), .Y(n469) );
  XOR2XL U367 ( .A(b[4]), .B(n400), .Y(n430) );
  XOR2XL U368 ( .A(b[4]), .B(n399), .Y(n441) );
  XOR2XL U369 ( .A(b[5]), .B(n398), .Y(n452) );
  XOR2XL U370 ( .A(b[5]), .B(n396), .Y(n470) );
  XOR2XL U371 ( .A(b[5]), .B(n397), .Y(n462) );
  XOR2XL U372 ( .A(b[5]), .B(n380), .Y(n480) );
  XOR2XL U373 ( .A(b[5]), .B(n399), .Y(n442) );
  XOR2XL U374 ( .A(b[6]), .B(n397), .Y(n410) );
  XOR2XL U375 ( .A(b[8]), .B(n399), .Y(n445) );
  XOR2XL U376 ( .A(b[6]), .B(n399), .Y(n443) );
  XOR2XL U377 ( .A(b[7]), .B(n399), .Y(n444) );
  XOR2XL U378 ( .A(b[9]), .B(n399), .Y(n404) );
  XOR2XL U379 ( .A(b[6]), .B(n398), .Y(n453) );
  XOR2XL U380 ( .A(b[6]), .B(n380), .Y(n481) );
  XOR2XL U381 ( .A(b[7]), .B(n397), .Y(n413) );
  XOR2XL U382 ( .A(b[7]), .B(n396), .Y(n472) );
  XOR2XL U383 ( .A(b[6]), .B(n396), .Y(n471) );
  XOR2XL U384 ( .A(b[8]), .B(n398), .Y(n455) );
  XOR2XL U385 ( .A(b[10]), .B(n399), .Y(n407) );
  XOR2XL U386 ( .A(b[7]), .B(n398), .Y(n454) );
  XOR2XL U387 ( .A(b[9]), .B(n398), .Y(n456) );
  XOR2XL U388 ( .A(b[7]), .B(n380), .Y(n482) );
  XOR2XL U389 ( .A(b[10]), .B(n398), .Y(n416) );
  XOR2XL U390 ( .A(b[8]), .B(n397), .Y(n463) );
  XOR2XL U391 ( .A(b[9]), .B(n397), .Y(n464) );
  XOR2XL U392 ( .A(b[8]), .B(n396), .Y(n473) );
  XOR2XL U393 ( .A(b[8]), .B(n380), .Y(n483) );
  XOR2XL U394 ( .A(b[9]), .B(n396), .Y(n474) );
  XOR2XL U395 ( .A(b[9]), .B(n380), .Y(n484) );
  XOR2XL U396 ( .A(b[10]), .B(n396), .Y(n422) );
  XOR2XL U397 ( .A(b[10]), .B(n397), .Y(n419) );
  XOR2XL U398 ( .A(b[10]), .B(n380), .Y(n425) );
  CLKINVX1 U399 ( .A(n25), .Y(n392) );
  ADDFXL U400 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  OAI22XL U401 ( .A0(n429), .A1(n408), .B0(n430), .B1(n401), .Y(n191) );
  ADDHXL U402 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  CLKINVX1 U403 ( .A(n388), .Y(n394) );
  CLKINVX1 U404 ( .A(n39), .Y(n390) );
  CLKINVX1 U405 ( .A(n31), .Y(n391) );
  INVX3 U406 ( .A(a[1]), .Y(n400) );
  INVX3 U407 ( .A(a[3]), .Y(n399) );
  NAND2X2 U408 ( .A(a[1]), .B(n401), .Y(n408) );
  INVX3 U409 ( .A(a[5]), .Y(n398) );
  XOR2X1 U410 ( .A(a[3]), .B(a[2]), .Y(n485) );
  CLKBUFX3 U411 ( .A(b[0]), .Y(n388) );
  XNOR2X1 U412 ( .A(a[2]), .B(a[1]), .Y(n406) );
  XNOR2X1 U413 ( .A(a[4]), .B(a[3]), .Y(n414) );
  INVX3 U414 ( .A(a[7]), .Y(n397) );
  XNOR2X1 U415 ( .A(a[10]), .B(a[9]), .Y(n423) );
  XNOR2X1 U416 ( .A(a[6]), .B(a[5]), .Y(n412) );
  OAI32XL U417 ( .A0(n398), .A1(n388), .A2(n383), .B0(n398), .B1(n417), .Y(
        n120) );
  CMPR32X2 U418 ( .A(n25), .B(n123), .C(n4), .CO(n3), .S(product[22]) );
  XOR2X1 U419 ( .A(n402), .B(n403), .Y(n74) );
  NAND2BX1 U420 ( .AN(n402), .B(n403), .Y(n73) );
  OAI22XL U421 ( .A0(n410), .A1(n384), .B0(n385), .B1(n413), .Y(n65) );
  OAI22XL U422 ( .A0(n383), .A1(n415), .B0(n416), .B1(n417), .Y(n51) );
  OAI22XL U423 ( .A0(n385), .A1(n418), .B0(n419), .B1(n384), .Y(n39) );
  OAI22XL U424 ( .A0(n420), .A1(n421), .B0(n422), .B1(n378), .Y(n31) );
  OAI22XL U425 ( .A0(n387), .A1(n424), .B0(n425), .B1(n386), .Y(n25) );
  OAI22XL U426 ( .A0(n388), .A1(n408), .B0(n427), .B1(n401), .Y(n194) );
  OAI22XL U427 ( .A0(n427), .A1(n408), .B0(n428), .B1(n401), .Y(n193) );
  XOR2X1 U428 ( .A(b[1]), .B(n400), .Y(n427) );
  OAI22XL U429 ( .A0(n428), .A1(n408), .B0(n429), .B1(n401), .Y(n192) );
  XOR2X1 U430 ( .A(b[2]), .B(n400), .Y(n428) );
  OAI22XL U431 ( .A0(n430), .A1(n408), .B0(n431), .B1(n401), .Y(n190) );
  OAI22XL U432 ( .A0(n431), .A1(n408), .B0(n432), .B1(n401), .Y(n189) );
  XOR2X1 U433 ( .A(b[5]), .B(n400), .Y(n431) );
  OAI22XL U434 ( .A0(n432), .A1(n408), .B0(n433), .B1(n401), .Y(n188) );
  XOR2X1 U435 ( .A(b[6]), .B(n400), .Y(n432) );
  OAI22XL U436 ( .A0(n433), .A1(n408), .B0(n434), .B1(n401), .Y(n187) );
  XOR2X1 U437 ( .A(b[7]), .B(n400), .Y(n433) );
  OAI22XL U438 ( .A0(n434), .A1(n408), .B0(n435), .B1(n401), .Y(n186) );
  XOR2X1 U439 ( .A(b[8]), .B(n400), .Y(n434) );
  OAI22XL U440 ( .A0(n435), .A1(n408), .B0(n436), .B1(n401), .Y(n185) );
  XOR2X1 U441 ( .A(b[9]), .B(n400), .Y(n435) );
  OAI2BB2XL U442 ( .B0(n436), .B1(n408), .A0N(n409), .A1N(a[0]), .Y(n184) );
  XOR2X1 U443 ( .A(b[11]), .B(a[1]), .Y(n409) );
  XOR2X1 U444 ( .A(b[10]), .B(n400), .Y(n436) );
  XOR2X1 U445 ( .A(n399), .B(n388), .Y(n437) );
  OAI22XL U446 ( .A0(n438), .A1(n381), .B0(n382), .B1(n439), .Y(n180) );
  OAI22XL U447 ( .A0(n439), .A1(n381), .B0(n382), .B1(n440), .Y(n179) );
  OAI22XL U448 ( .A0(n440), .A1(n381), .B0(n382), .B1(n441), .Y(n178) );
  OAI22XL U449 ( .A0(n441), .A1(n381), .B0(n382), .B1(n442), .Y(n177) );
  OAI22XL U450 ( .A0(n442), .A1(n381), .B0(n382), .B1(n443), .Y(n176) );
  OAI22XL U451 ( .A0(n443), .A1(n381), .B0(n382), .B1(n444), .Y(n175) );
  OAI22XL U452 ( .A0(n444), .A1(n381), .B0(n382), .B1(n445), .Y(n174) );
  OAI22XL U453 ( .A0(n445), .A1(n381), .B0(n382), .B1(n404), .Y(n173) );
  OAI22XL U454 ( .A0(n407), .A1(n381), .B0(n382), .B1(n446), .Y(n171) );
  NOR2X1 U455 ( .A(n383), .B(n394), .Y(n169) );
  OAI22XL U456 ( .A0(n447), .A1(n417), .B0(n383), .B1(n448), .Y(n168) );
  OAI22XL U457 ( .A0(n448), .A1(n417), .B0(n383), .B1(n449), .Y(n167) );
  XOR2X1 U458 ( .A(b[1]), .B(n398), .Y(n448) );
  OAI22XL U459 ( .A0(n449), .A1(n417), .B0(n383), .B1(n450), .Y(n166) );
  OAI22XL U460 ( .A0(n450), .A1(n417), .B0(n383), .B1(n451), .Y(n165) );
  OAI22XL U461 ( .A0(n451), .A1(n417), .B0(n383), .B1(n452), .Y(n164) );
  OAI22XL U462 ( .A0(n452), .A1(n417), .B0(n383), .B1(n453), .Y(n163) );
  OAI22XL U463 ( .A0(n453), .A1(n417), .B0(n383), .B1(n454), .Y(n162) );
  OAI22XL U464 ( .A0(n454), .A1(n417), .B0(n383), .B1(n455), .Y(n161) );
  OAI22XL U465 ( .A0(n455), .A1(n417), .B0(n383), .B1(n456), .Y(n160) );
  OAI22XL U466 ( .A0(n456), .A1(n417), .B0(n383), .B1(n416), .Y(n159) );
  AO21X1 U467 ( .A0(n417), .A1(n383), .B0(n415), .Y(n158) );
  OAI22XL U468 ( .A0(n457), .A1(n384), .B0(n385), .B1(n458), .Y(n156) );
  OAI22XL U469 ( .A0(n458), .A1(n384), .B0(n385), .B1(n459), .Y(n155) );
  XOR2X1 U470 ( .A(b[1]), .B(n397), .Y(n458) );
  OAI22XL U471 ( .A0(n459), .A1(n384), .B0(n385), .B1(n460), .Y(n154) );
  OAI22XL U472 ( .A0(n460), .A1(n384), .B0(n385), .B1(n461), .Y(n153) );
  OAI22XL U473 ( .A0(n461), .A1(n384), .B0(n385), .B1(n462), .Y(n152) );
  OAI22XL U474 ( .A0(n462), .A1(n384), .B0(n385), .B1(n410), .Y(n151) );
  OAI22XL U475 ( .A0(n413), .A1(n384), .B0(n385), .B1(n463), .Y(n150) );
  OAI22XL U476 ( .A0(n463), .A1(n384), .B0(n385), .B1(n464), .Y(n149) );
  OAI22XL U477 ( .A0(n464), .A1(n384), .B0(n385), .B1(n419), .Y(n148) );
  OAI22XL U478 ( .A0(n466), .A1(n378), .B0(n420), .B1(n467), .Y(n144) );
  XOR2X1 U479 ( .A(b[1]), .B(n396), .Y(n466) );
  OAI22XL U480 ( .A0(n467), .A1(n378), .B0(n420), .B1(n468), .Y(n143) );
  OAI22XL U481 ( .A0(n468), .A1(n378), .B0(n420), .B1(n469), .Y(n142) );
  OAI22XL U482 ( .A0(n469), .A1(n378), .B0(n420), .B1(n470), .Y(n141) );
  OAI22XL U483 ( .A0(n470), .A1(n378), .B0(n420), .B1(n471), .Y(n140) );
  OAI22XL U484 ( .A0(n471), .A1(n378), .B0(n420), .B1(n472), .Y(n139) );
  OAI22XL U485 ( .A0(n472), .A1(n378), .B0(n420), .B1(n473), .Y(n138) );
  OAI22XL U486 ( .A0(n473), .A1(n378), .B0(n420), .B1(n474), .Y(n137) );
  OAI22XL U487 ( .A0(n474), .A1(n378), .B0(n420), .B1(n422), .Y(n136) );
  XOR2X1 U488 ( .A(n380), .B(n388), .Y(n475) );
  XOR2X1 U489 ( .A(b[1]), .B(n380), .Y(n476) );
  OAI22XL U490 ( .A0(n477), .A1(n386), .B0(n387), .B1(n478), .Y(n131) );
  OAI22XL U491 ( .A0(n478), .A1(n386), .B0(n387), .B1(n479), .Y(n130) );
  OAI22XL U492 ( .A0(n479), .A1(n386), .B0(n387), .B1(n480), .Y(n129) );
  OAI22XL U493 ( .A0(n480), .A1(n386), .B0(n387), .B1(n481), .Y(n128) );
  OAI22XL U494 ( .A0(n481), .A1(n386), .B0(n387), .B1(n482), .Y(n127) );
  OAI22XL U495 ( .A0(n482), .A1(n386), .B0(n387), .B1(n483), .Y(n126) );
  OAI22XL U496 ( .A0(n483), .A1(n386), .B0(n387), .B1(n484), .Y(n125) );
  OAI22XL U497 ( .A0(n484), .A1(n386), .B0(n387), .B1(n425), .Y(n124) );
  AO21X1 U498 ( .A0(n386), .A1(n387), .B0(n424), .Y(n123) );
  OAI21XL U499 ( .A0(n388), .A1(n400), .B0(n408), .Y(n122) );
  XOR2X1 U500 ( .A(a[5]), .B(a[4]), .Y(n486) );
  XOR2X1 U501 ( .A(a[7]), .B(a[6]), .Y(n487) );
  XOR2X1 U502 ( .A(a[9]), .B(a[8]), .Y(n488) );
  XOR2X1 U503 ( .A(a[11]), .B(a[10]), .Y(n489) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487;

  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n390), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n389), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n388), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n392), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDHXL U61 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  BUFX4 U281 ( .A(n405), .Y(n381) );
  NAND2X4 U282 ( .A(n382), .B(n484), .Y(n379) );
  CLKBUFX8 U283 ( .A(n413), .Y(n382) );
  ADDHXL U284 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  OAI22XL U285 ( .A0(n387), .A1(n407), .B0(n425), .B1(n400), .Y(n194) );
  CLKINVX1 U286 ( .A(n387), .Y(n393) );
  INVX3 U287 ( .A(a[0]), .Y(n400) );
  BUFX4 U288 ( .A(n410), .Y(n383) );
  INVX3 U289 ( .A(a[9]), .Y(n395) );
  BUFX4 U290 ( .A(n394), .Y(n380) );
  NAND2X4 U291 ( .A(n384), .B(n486), .Y(n378) );
  XNOR2X4 U292 ( .A(a[6]), .B(a[5]), .Y(n411) );
  NOR2XL U293 ( .A(n384), .B(n393), .Y(n146) );
  BUFX6 U294 ( .A(n418), .Y(n384) );
  BUFX8 U295 ( .A(n421), .Y(n386) );
  XOR2X1 U296 ( .A(b[2]), .B(n380), .Y(n475) );
  NAND2X2 U297 ( .A(n381), .B(n483), .Y(n404) );
  OAI22X4 U298 ( .A0(n435), .A1(n404), .B0(n381), .B1(n436), .Y(n181) );
  NOR2XL U299 ( .A(n381), .B(n393), .Y(n182) );
  OAI32XL U300 ( .A0(n398), .A1(n387), .A2(n381), .B0(n398), .B1(n404), .Y(
        n121) );
  NAND2XL U301 ( .A(n411), .B(n485), .Y(n410) );
  NAND2X1 U302 ( .A(n386), .B(n487), .Y(n424) );
  BUFX8 U303 ( .A(n424), .Y(n385) );
  INVX1 U304 ( .A(a[11]), .Y(n394) );
  ADDFXL U305 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFX1 U306 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFX1 U307 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFX1 U308 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFX2 U309 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  CMPR32X2 U310 ( .A(n179), .B(n190), .C(n112), .CO(n109), .S(n110) );
  ADDFHX1 U311 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX1 U312 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFHX1 U313 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFHX1 U314 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFHX1 U315 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFX1 U316 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFX2 U317 ( .A(n27), .B(n391), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFX1 U318 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  INVX1 U319 ( .A(n65), .Y(n392) );
  ADDHX1 U320 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  OAI32XL U321 ( .A0(n395), .A1(n387), .A2(n384), .B0(n395), .B1(n378), .Y(
        n118) );
  XOR2XL U322 ( .A(n395), .B(n387), .Y(n463) );
  ADDFX1 U323 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  OAI32XL U324 ( .A0(n397), .A1(n387), .A2(n382), .B0(n397), .B1(n379), .Y(
        n120) );
  XOR2XL U325 ( .A(n397), .B(n387), .Y(n445) );
  AO21XL U326 ( .A0(n404), .A1(n381), .B0(n444), .Y(n170) );
  XOR2XL U327 ( .A(b[11]), .B(n398), .Y(n444) );
  OAI2BB1XL U328 ( .A0N(n400), .A1N(n407), .B0(n408), .Y(n401) );
  OA22XL U329 ( .A0(n403), .A1(n404), .B0(n381), .B1(n406), .Y(n402) );
  XOR2XL U330 ( .A(b[11]), .B(n397), .Y(n414) );
  AO21XL U331 ( .A0(n383), .A1(n411), .B0(n416), .Y(n147) );
  XOR2XL U332 ( .A(b[11]), .B(n396), .Y(n416) );
  AO21XL U333 ( .A0(n378), .A1(n384), .B0(n419), .Y(n135) );
  XOR2XL U334 ( .A(b[11]), .B(n395), .Y(n419) );
  XOR2XL U335 ( .A(b[11]), .B(n380), .Y(n422) );
  XOR2XL U336 ( .A(b[2]), .B(n395), .Y(n465) );
  XOR2XL U337 ( .A(b[3]), .B(n395), .Y(n466) );
  XOR2XL U338 ( .A(b[2]), .B(n397), .Y(n447) );
  XOR2XL U339 ( .A(b[2]), .B(n396), .Y(n457) );
  XOR2XL U340 ( .A(b[2]), .B(n398), .Y(n437) );
  XOR2XL U341 ( .A(b[5]), .B(n399), .Y(n429) );
  XOR2XL U342 ( .A(b[4]), .B(n399), .Y(n428) );
  XOR2XL U343 ( .A(b[3]), .B(n396), .Y(n458) );
  XOR2XL U344 ( .A(b[4]), .B(n396), .Y(n459) );
  XOR2XL U345 ( .A(b[6]), .B(n399), .Y(n430) );
  XOR2XL U346 ( .A(b[10]), .B(n399), .Y(n434) );
  XOR2XL U347 ( .A(b[3]), .B(n398), .Y(n438) );
  XOR2XL U348 ( .A(b[3]), .B(n397), .Y(n448) );
  XOR2XL U349 ( .A(b[8]), .B(n399), .Y(n432) );
  XOR2XL U350 ( .A(b[7]), .B(n399), .Y(n431) );
  XOR2XL U351 ( .A(b[3]), .B(n380), .Y(n476) );
  XOR2XL U352 ( .A(b[4]), .B(n397), .Y(n449) );
  XOR2XL U353 ( .A(b[11]), .B(a[1]), .Y(n408) );
  XOR2XL U354 ( .A(b[4]), .B(n380), .Y(n477) );
  XOR2XL U355 ( .A(b[4]), .B(n395), .Y(n467) );
  XOR2XL U356 ( .A(b[9]), .B(n399), .Y(n433) );
  XOR2XL U357 ( .A(b[4]), .B(n398), .Y(n439) );
  XOR2XL U358 ( .A(b[5]), .B(n397), .Y(n450) );
  XOR2XL U359 ( .A(b[5]), .B(n395), .Y(n468) );
  XOR2XL U360 ( .A(b[5]), .B(n396), .Y(n460) );
  XOR2XL U361 ( .A(b[8]), .B(n398), .Y(n443) );
  XOR2XL U362 ( .A(b[5]), .B(n380), .Y(n478) );
  XOR2XL U363 ( .A(b[7]), .B(n398), .Y(n442) );
  XOR2XL U364 ( .A(b[9]), .B(n398), .Y(n403) );
  XOR2XL U365 ( .A(b[5]), .B(n398), .Y(n440) );
  XOR2XL U366 ( .A(b[6]), .B(n398), .Y(n441) );
  XOR2XL U367 ( .A(b[6]), .B(n396), .Y(n409) );
  XOR2XL U368 ( .A(b[10]), .B(n398), .Y(n406) );
  XOR2XL U369 ( .A(b[6]), .B(n397), .Y(n451) );
  XOR2XL U370 ( .A(b[6]), .B(n380), .Y(n479) );
  XOR2XL U371 ( .A(b[7]), .B(n396), .Y(n412) );
  XOR2XL U372 ( .A(b[8]), .B(n397), .Y(n453) );
  XOR2XL U373 ( .A(b[7]), .B(n395), .Y(n470) );
  XOR2XL U374 ( .A(b[6]), .B(n395), .Y(n469) );
  XOR2XL U375 ( .A(b[9]), .B(n397), .Y(n454) );
  XOR2XL U376 ( .A(b[7]), .B(n397), .Y(n452) );
  XOR2XL U377 ( .A(b[10]), .B(n397), .Y(n415) );
  XOR2XL U378 ( .A(b[7]), .B(n380), .Y(n480) );
  XOR2XL U379 ( .A(b[8]), .B(n396), .Y(n461) );
  XOR2XL U380 ( .A(b[9]), .B(n396), .Y(n462) );
  XOR2XL U381 ( .A(b[8]), .B(n395), .Y(n471) );
  XOR2XL U382 ( .A(b[8]), .B(n380), .Y(n481) );
  XOR2XL U383 ( .A(b[9]), .B(n395), .Y(n472) );
  XOR2XL U384 ( .A(b[9]), .B(n380), .Y(n482) );
  XOR2XL U385 ( .A(b[10]), .B(n396), .Y(n417) );
  XOR2XL U386 ( .A(b[10]), .B(n395), .Y(n420) );
  XOR2XL U387 ( .A(b[10]), .B(n380), .Y(n423) );
  ADDFXL U388 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U389 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  CLKINVX1 U390 ( .A(n25), .Y(n391) );
  CLKINVX1 U391 ( .A(n51), .Y(n388) );
  ADDHXL U392 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  OAI22XL U393 ( .A0(n426), .A1(n407), .B0(n427), .B1(n400), .Y(n192) );
  CLKINVX1 U394 ( .A(n39), .Y(n389) );
  CLKINVX1 U395 ( .A(n31), .Y(n390) );
  INVX3 U396 ( .A(a[5]), .Y(n397) );
  INVX3 U397 ( .A(a[1]), .Y(n399) );
  XNOR2X1 U398 ( .A(a[4]), .B(a[3]), .Y(n413) );
  INVX3 U399 ( .A(a[3]), .Y(n398) );
  NAND2X2 U400 ( .A(a[1]), .B(n400), .Y(n407) );
  XOR2X1 U401 ( .A(a[3]), .B(a[2]), .Y(n483) );
  XOR2X1 U402 ( .A(b[1]), .B(n398), .Y(n436) );
  XNOR2X1 U403 ( .A(a[2]), .B(a[1]), .Y(n405) );
  CLKBUFX3 U404 ( .A(b[0]), .Y(n387) );
  INVX3 U405 ( .A(a[7]), .Y(n396) );
  XNOR2X1 U406 ( .A(a[10]), .B(a[9]), .Y(n421) );
  XNOR2X1 U407 ( .A(a[8]), .B(a[7]), .Y(n418) );
  CLKINVX1 U408 ( .A(n3), .Y(product[23]) );
  NOR2X1 U409 ( .A(n400), .B(n393), .Y(product[0]) );
  XOR2X1 U410 ( .A(n401), .B(n402), .Y(n74) );
  NAND2BX1 U411 ( .AN(n401), .B(n402), .Y(n73) );
  OAI22XL U412 ( .A0(n409), .A1(n383), .B0(n411), .B1(n412), .Y(n65) );
  OAI22XL U413 ( .A0(n382), .A1(n414), .B0(n415), .B1(n379), .Y(n51) );
  OAI22XL U414 ( .A0(n411), .A1(n416), .B0(n417), .B1(n383), .Y(n39) );
  OAI22XL U415 ( .A0(n384), .A1(n419), .B0(n420), .B1(n378), .Y(n31) );
  OAI22XL U416 ( .A0(n386), .A1(n422), .B0(n423), .B1(n385), .Y(n25) );
  OAI22XL U417 ( .A0(n425), .A1(n407), .B0(n426), .B1(n400), .Y(n193) );
  XOR2X1 U418 ( .A(b[1]), .B(n399), .Y(n425) );
  XOR2X1 U419 ( .A(b[2]), .B(n399), .Y(n426) );
  OAI22XL U420 ( .A0(n427), .A1(n407), .B0(n428), .B1(n400), .Y(n191) );
  XOR2X1 U421 ( .A(b[3]), .B(n399), .Y(n427) );
  OAI22XL U422 ( .A0(n428), .A1(n407), .B0(n429), .B1(n400), .Y(n190) );
  OAI22XL U423 ( .A0(n429), .A1(n407), .B0(n430), .B1(n400), .Y(n189) );
  OAI22XL U424 ( .A0(n430), .A1(n407), .B0(n431), .B1(n400), .Y(n188) );
  OAI22XL U425 ( .A0(n431), .A1(n407), .B0(n432), .B1(n400), .Y(n187) );
  OAI22XL U426 ( .A0(n432), .A1(n407), .B0(n433), .B1(n400), .Y(n186) );
  OAI22XL U427 ( .A0(n433), .A1(n407), .B0(n434), .B1(n400), .Y(n185) );
  OAI2BB2XL U428 ( .B0(n434), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  XOR2X1 U429 ( .A(n398), .B(n387), .Y(n435) );
  OAI22XL U430 ( .A0(n436), .A1(n404), .B0(n381), .B1(n437), .Y(n180) );
  OAI22XL U431 ( .A0(n437), .A1(n404), .B0(n381), .B1(n438), .Y(n179) );
  OAI22XL U432 ( .A0(n438), .A1(n404), .B0(n381), .B1(n439), .Y(n178) );
  OAI22XL U433 ( .A0(n439), .A1(n404), .B0(n381), .B1(n440), .Y(n177) );
  OAI22XL U434 ( .A0(n440), .A1(n404), .B0(n381), .B1(n441), .Y(n176) );
  OAI22XL U435 ( .A0(n441), .A1(n404), .B0(n381), .B1(n442), .Y(n175) );
  OAI22XL U436 ( .A0(n442), .A1(n404), .B0(n381), .B1(n443), .Y(n174) );
  OAI22XL U437 ( .A0(n443), .A1(n404), .B0(n381), .B1(n403), .Y(n173) );
  OAI22XL U438 ( .A0(n406), .A1(n404), .B0(n381), .B1(n444), .Y(n171) );
  NOR2X1 U439 ( .A(n382), .B(n393), .Y(n169) );
  OAI22XL U440 ( .A0(n445), .A1(n379), .B0(n382), .B1(n446), .Y(n168) );
  OAI22XL U441 ( .A0(n446), .A1(n379), .B0(n382), .B1(n447), .Y(n167) );
  XOR2X1 U442 ( .A(b[1]), .B(n397), .Y(n446) );
  OAI22XL U443 ( .A0(n447), .A1(n379), .B0(n382), .B1(n448), .Y(n166) );
  OAI22XL U444 ( .A0(n448), .A1(n379), .B0(n382), .B1(n449), .Y(n165) );
  OAI22XL U445 ( .A0(n449), .A1(n379), .B0(n382), .B1(n450), .Y(n164) );
  OAI22XL U446 ( .A0(n450), .A1(n379), .B0(n382), .B1(n451), .Y(n163) );
  OAI22XL U447 ( .A0(n451), .A1(n379), .B0(n382), .B1(n452), .Y(n162) );
  OAI22XL U448 ( .A0(n452), .A1(n379), .B0(n382), .B1(n453), .Y(n161) );
  OAI22XL U449 ( .A0(n453), .A1(n379), .B0(n382), .B1(n454), .Y(n160) );
  OAI22XL U450 ( .A0(n454), .A1(n379), .B0(n382), .B1(n415), .Y(n159) );
  AO21X1 U451 ( .A0(n379), .A1(n382), .B0(n414), .Y(n158) );
  NOR2X1 U452 ( .A(n411), .B(n393), .Y(n157) );
  OAI22XL U453 ( .A0(n455), .A1(n383), .B0(n411), .B1(n456), .Y(n156) );
  XOR2X1 U454 ( .A(n396), .B(n387), .Y(n455) );
  OAI22XL U455 ( .A0(n456), .A1(n383), .B0(n411), .B1(n457), .Y(n155) );
  XOR2X1 U456 ( .A(b[1]), .B(n396), .Y(n456) );
  OAI22XL U457 ( .A0(n457), .A1(n383), .B0(n411), .B1(n458), .Y(n154) );
  OAI22XL U458 ( .A0(n458), .A1(n383), .B0(n411), .B1(n459), .Y(n153) );
  OAI22XL U459 ( .A0(n459), .A1(n383), .B0(n411), .B1(n460), .Y(n152) );
  OAI22XL U460 ( .A0(n460), .A1(n383), .B0(n411), .B1(n409), .Y(n151) );
  OAI22XL U461 ( .A0(n412), .A1(n383), .B0(n411), .B1(n461), .Y(n150) );
  OAI22XL U462 ( .A0(n461), .A1(n383), .B0(n411), .B1(n462), .Y(n149) );
  OAI22XL U463 ( .A0(n462), .A1(n383), .B0(n411), .B1(n417), .Y(n148) );
  OAI22XL U464 ( .A0(n463), .A1(n378), .B0(n384), .B1(n464), .Y(n145) );
  OAI22XL U465 ( .A0(n464), .A1(n378), .B0(n384), .B1(n465), .Y(n144) );
  XOR2X1 U466 ( .A(b[1]), .B(n395), .Y(n464) );
  OAI22XL U467 ( .A0(n465), .A1(n378), .B0(n384), .B1(n466), .Y(n143) );
  OAI22XL U468 ( .A0(n466), .A1(n378), .B0(n384), .B1(n467), .Y(n142) );
  OAI22XL U469 ( .A0(n467), .A1(n378), .B0(n384), .B1(n468), .Y(n141) );
  OAI22XL U470 ( .A0(n468), .A1(n378), .B0(n384), .B1(n469), .Y(n140) );
  OAI22XL U471 ( .A0(n469), .A1(n378), .B0(n384), .B1(n470), .Y(n139) );
  OAI22XL U472 ( .A0(n470), .A1(n378), .B0(n384), .B1(n471), .Y(n138) );
  OAI22XL U473 ( .A0(n471), .A1(n378), .B0(n384), .B1(n472), .Y(n137) );
  OAI22XL U474 ( .A0(n472), .A1(n378), .B0(n384), .B1(n420), .Y(n136) );
  NOR2X1 U475 ( .A(n386), .B(n393), .Y(n134) );
  OAI22XL U476 ( .A0(n473), .A1(n385), .B0(n386), .B1(n474), .Y(n133) );
  XOR2X1 U477 ( .A(n380), .B(n387), .Y(n473) );
  OAI22XL U478 ( .A0(n474), .A1(n385), .B0(n386), .B1(n475), .Y(n132) );
  XOR2X1 U479 ( .A(b[1]), .B(n380), .Y(n474) );
  OAI22XL U480 ( .A0(n475), .A1(n385), .B0(n386), .B1(n476), .Y(n131) );
  OAI22XL U481 ( .A0(n476), .A1(n385), .B0(n386), .B1(n477), .Y(n130) );
  OAI22XL U482 ( .A0(n477), .A1(n385), .B0(n386), .B1(n478), .Y(n129) );
  OAI22XL U483 ( .A0(n478), .A1(n385), .B0(n386), .B1(n479), .Y(n128) );
  OAI22XL U484 ( .A0(n479), .A1(n385), .B0(n386), .B1(n480), .Y(n127) );
  OAI22XL U485 ( .A0(n480), .A1(n385), .B0(n386), .B1(n481), .Y(n126) );
  OAI22XL U486 ( .A0(n481), .A1(n385), .B0(n386), .B1(n482), .Y(n125) );
  OAI22XL U487 ( .A0(n482), .A1(n385), .B0(n386), .B1(n423), .Y(n124) );
  AO21X1 U488 ( .A0(n385), .A1(n386), .B0(n422), .Y(n123) );
  OAI21XL U489 ( .A0(n387), .A1(n399), .B0(n407), .Y(n122) );
  XOR2X1 U490 ( .A(a[5]), .B(a[4]), .Y(n484) );
  OAI32X1 U491 ( .A0(n396), .A1(n387), .A2(n411), .B0(n396), .B1(n383), .Y(
        n119) );
  XOR2X1 U492 ( .A(a[7]), .B(a[6]), .Y(n485) );
  XOR2X1 U493 ( .A(a[9]), .B(a[8]), .Y(n486) );
  OAI32X1 U494 ( .A0(n380), .A1(n387), .A2(n386), .B0(n380), .B1(n385), .Y(
        n117) );
  XOR2X1 U495 ( .A(a[11]), .B(a[10]), .Y(n487) );
endmodule


module geofence_DW01_sub_32 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58;

  OAI22X2 U1 ( .A0(n13), .A1(n1), .B0(B[23]), .B1(n14), .Y(\carry[24] ) );
  CLKAND2X6 U2 ( .A(n13), .B(n1), .Y(n14) );
  AOI2BB2X2 U3 ( .B0(n55), .B1(A[2]), .A0N(B[2]), .A1N(n56), .Y(n53) );
  NOR2X2 U4 ( .A(A[2]), .B(n55), .Y(n56) );
  OAI22X1 U5 ( .A0(n49), .A1(n10), .B0(B[5]), .B1(n50), .Y(n47) );
  NOR2X2 U6 ( .A(A[6]), .B(n47), .Y(n48) );
  NOR2X4 U7 ( .A(A[8]), .B(n43), .Y(n44) );
  NOR2X4 U8 ( .A(A[22]), .B(n15), .Y(n16) );
  CLKAND2X3 U9 ( .A(n49), .B(n10), .Y(n50) );
  OAI22X1 U10 ( .A0(n57), .A1(n12), .B0(B[1]), .B1(n58), .Y(n55) );
  CLKAND2X6 U11 ( .A(n57), .B(n12), .Y(n58) );
  AOI2BB2X4 U12 ( .B0(n43), .B1(A[8]), .A0N(B[8]), .A1N(n44), .Y(n41) );
  OAI22X4 U13 ( .A0(n53), .A1(n11), .B0(B[3]), .B1(n54), .Y(n51) );
  INVX1 U14 ( .A(A[13]), .Y(n6) );
  XNOR3X2 U15 ( .A(A[24]), .B(B[24]), .C(\carry[24] ), .Y(DIFF[24]) );
  CLKAND2X8 U16 ( .A(n53), .B(n11), .Y(n54) );
  INVX1 U17 ( .A(A[3]), .Y(n11) );
  INVX3 U18 ( .A(A[1]), .Y(n12) );
  CLKINVX1 U19 ( .A(A[5]), .Y(n10) );
  CLKINVX1 U20 ( .A(A[15]), .Y(n5) );
  CLKINVX1 U21 ( .A(A[17]), .Y(n4) );
  CLKINVX1 U22 ( .A(A[11]), .Y(n7) );
  CLKINVX1 U23 ( .A(A[7]), .Y(n9) );
  CLKINVX1 U24 ( .A(A[19]), .Y(n3) );
  CLKINVX1 U25 ( .A(A[9]), .Y(n8) );
  CLKINVX1 U26 ( .A(A[21]), .Y(n2) );
  CLKINVX1 U27 ( .A(A[24]), .Y(n1) );
  CLKAND2X12 U28 ( .A(n17), .B(n2), .Y(n18) );
  AND2X4 U29 ( .A(n33), .B(n6), .Y(n34) );
  NOR2X1 U30 ( .A(A[16]), .B(n27), .Y(n28) );
  AOI2BB2X2 U31 ( .B0(n39), .B1(A[10]), .A0N(B[10]), .A1N(n40), .Y(n37) );
  NOR2X2 U32 ( .A(A[10]), .B(n39), .Y(n40) );
  AOI2BB2X4 U33 ( .B0(n19), .B1(A[20]), .A0N(B[20]), .A1N(n20), .Y(n17) );
  NOR2X4 U34 ( .A(A[20]), .B(n19), .Y(n20) );
  AOI2BB2X2 U35 ( .B0(n27), .B1(A[16]), .A0N(B[16]), .A1N(n28), .Y(n25) );
  AOI2BB2X4 U36 ( .B0(n15), .B1(A[22]), .A0N(B[22]), .A1N(n16), .Y(n13) );
  AOI2BB2X4 U37 ( .B0(n31), .B1(A[14]), .A0N(B[14]), .A1N(n32), .Y(n29) );
  NOR2X4 U38 ( .A(A[14]), .B(n31), .Y(n32) );
  AOI2BB2X4 U39 ( .B0(n23), .B1(A[18]), .A0N(B[18]), .A1N(n24), .Y(n21) );
  NOR2X4 U40 ( .A(A[18]), .B(n23), .Y(n24) );
  AOI2BB2X4 U41 ( .B0(n35), .B1(A[12]), .A0N(B[12]), .A1N(n36), .Y(n33) );
  NOR2X4 U42 ( .A(A[12]), .B(n35), .Y(n36) );
  AOI2BB2X4 U43 ( .B0(n47), .B1(A[6]), .A0N(B[6]), .A1N(n48), .Y(n45) );
  OAI22X4 U44 ( .A0(n29), .A1(n5), .B0(B[15]), .B1(n30), .Y(n27) );
  CLKAND2X12 U45 ( .A(n29), .B(n5), .Y(n30) );
  OAI22X4 U46 ( .A0(n17), .A1(n2), .B0(B[21]), .B1(n18), .Y(n15) );
  OAI22X4 U47 ( .A0(n25), .A1(n4), .B0(B[17]), .B1(n26), .Y(n23) );
  CLKAND2X8 U48 ( .A(n25), .B(n4), .Y(n26) );
  OAI22X4 U49 ( .A0(n21), .A1(n3), .B0(B[19]), .B1(n22), .Y(n19) );
  CLKAND2X8 U50 ( .A(n21), .B(n3), .Y(n22) );
  OAI22X4 U51 ( .A0(n37), .A1(n7), .B0(B[11]), .B1(n38), .Y(n35) );
  CLKAND2X8 U52 ( .A(n37), .B(n7), .Y(n38) );
  OAI22X4 U53 ( .A0(n33), .A1(n6), .B0(B[13]), .B1(n34), .Y(n31) );
  OAI22X4 U54 ( .A0(n45), .A1(n9), .B0(B[7]), .B1(n46), .Y(n43) );
  CLKAND2X8 U55 ( .A(n45), .B(n9), .Y(n46) );
  OAI22X4 U56 ( .A0(n41), .A1(n8), .B0(B[9]), .B1(n42), .Y(n39) );
  CLKAND2X8 U57 ( .A(n41), .B(n8), .Y(n42) );
  AOI2BB2X1 U58 ( .B0(n51), .B1(A[4]), .A0N(B[4]), .A1N(n52), .Y(n49) );
  NOR2X1 U59 ( .A(A[4]), .B(n51), .Y(n52) );
  NOR2BX1 U60 ( .AN(B[0]), .B(A[0]), .Y(n57) );
endmodule


module geofence_DW_mult_tc_3 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497;

  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U17 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n402), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n405), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n403), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  CMPR42X1 U59 ( .A(n157), .B(n379), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  OAI22X1 U281 ( .A0(n473), .A1(n381), .B0(n396), .B1(n474), .Y(n145) );
  NAND2X4 U282 ( .A(n396), .B(n496), .Y(n381) );
  CLKBUFX2 U283 ( .A(n120), .Y(n378) );
  ADDHX1 U284 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  XOR2X1 U285 ( .A(b[7]), .B(n408), .Y(n441) );
  OAI32X1 U286 ( .A0(n404), .A1(n397), .A2(n395), .B0(n404), .B1(n380), .Y(
        n119) );
  NAND2X8 U287 ( .A(n395), .B(n495), .Y(n380) );
  ADDFHX2 U288 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFHX4 U289 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  BUFX12 U290 ( .A(n428), .Y(n396) );
  BUFX3 U291 ( .A(n189), .Y(n379) );
  AND2X6 U292 ( .A(n393), .B(n493), .Y(n390) );
  NOR2X4 U293 ( .A(n393), .B(n410), .Y(n182) );
  OAI22X4 U294 ( .A0(n445), .A1(n414), .B0(n393), .B1(n446), .Y(n181) );
  OAI22X1 U295 ( .A0(n446), .A1(n414), .B0(n393), .B1(n447), .Y(n180) );
  BUFX12 U296 ( .A(n415), .Y(n393) );
  INVX3 U297 ( .A(n397), .Y(n410) );
  BUFX8 U298 ( .A(b[0]), .Y(n397) );
  XOR2X4 U299 ( .A(b[1]), .B(n407), .Y(n446) );
  XOR2X4 U300 ( .A(b[2]), .B(n407), .Y(n447) );
  OAI32XL U301 ( .A0(n407), .A1(n397), .A2(n393), .B0(n407), .B1(n414), .Y(
        n121) );
  INVX12 U302 ( .A(a[3]), .Y(n407) );
  INVX12 U303 ( .A(n390), .Y(n414) );
  OAI22X1 U304 ( .A0(n465), .A1(n380), .B0(n395), .B1(n466), .Y(n156) );
  NAND3X1 U305 ( .A(n383), .B(n384), .C(n385), .Y(n5) );
  NAND2X1 U306 ( .A(n29), .B(n28), .Y(n385) );
  XOR2X1 U307 ( .A(b[3]), .B(n408), .Y(n437) );
  XOR2X1 U308 ( .A(b[8]), .B(n408), .Y(n442) );
  NAND2X2 U309 ( .A(a[1]), .B(n409), .Y(n417) );
  CMPR42X1 U310 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  OAI22XL U311 ( .A0(n442), .A1(n417), .B0(n443), .B1(n409), .Y(n186) );
  ADDFHX1 U312 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  XOR2X1 U313 ( .A(b[11]), .B(n407), .Y(n454) );
  ADDFHX1 U314 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  INVX3 U315 ( .A(n391), .Y(n425) );
  AND2X2 U316 ( .A(n394), .B(n494), .Y(n391) );
  INVX3 U317 ( .A(a[7]), .Y(n404) );
  ADDFHX1 U318 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  CLKBUFX6 U319 ( .A(n420), .Y(n395) );
  ADDFX2 U320 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFX2 U321 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  NAND2X1 U322 ( .A(n29), .B(n6), .Y(n384) );
  NAND2X1 U323 ( .A(n28), .B(n6), .Y(n383) );
  INVX3 U324 ( .A(n392), .Y(n434) );
  AND2X2 U325 ( .A(n431), .B(n497), .Y(n392) );
  OAI22X1 U326 ( .A0(n437), .A1(n417), .B0(n438), .B1(n409), .Y(n191) );
  XNOR2X4 U327 ( .A(a[10]), .B(a[9]), .Y(n431) );
  ADDHX1 U328 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  XOR2X1 U329 ( .A(b[10]), .B(n408), .Y(n444) );
  OAI22X1 U330 ( .A0(n466), .A1(n380), .B0(n395), .B1(n467), .Y(n155) );
  OAI22X1 U331 ( .A0(n467), .A1(n380), .B0(n395), .B1(n468), .Y(n154) );
  XOR2XL U332 ( .A(n28), .B(n29), .Y(n382) );
  XOR2X4 U333 ( .A(n6), .B(n382), .Y(product[20]) );
  ADDFX2 U334 ( .A(n400), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  ADDFHX2 U335 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX4 U336 ( .A(n27), .B(n398), .CI(n5), .CO(n4), .S(product[21]) );
  INVX3 U337 ( .A(a[1]), .Y(n408) );
  NAND2X1 U338 ( .A(b[4]), .B(n387), .Y(n388) );
  NAND2X2 U339 ( .A(n386), .B(n408), .Y(n389) );
  NAND2X2 U340 ( .A(n388), .B(n389), .Y(n438) );
  INVX1 U341 ( .A(b[4]), .Y(n386) );
  INVXL U342 ( .A(n408), .Y(n387) );
  OAI22X1 U343 ( .A0(n438), .A1(n417), .B0(n439), .B1(n409), .Y(n190) );
  XOR2X1 U344 ( .A(b[6]), .B(n408), .Y(n440) );
  XOR2XL U345 ( .A(b[11]), .B(a[1]), .Y(n418) );
  XOR2X1 U346 ( .A(b[2]), .B(n408), .Y(n436) );
  OAI22X1 U347 ( .A0(n397), .A1(n417), .B0(n435), .B1(n409), .Y(n194) );
  INVX12 U348 ( .A(a[9]), .Y(n401) );
  INVX3 U349 ( .A(a[11]), .Y(n399) );
  INVX1 U350 ( .A(n51), .Y(n405) );
  NOR2X4 U351 ( .A(n409), .B(n410), .Y(product[0]) );
  XOR2XL U352 ( .A(n407), .B(n397), .Y(n445) );
  XOR2X1 U353 ( .A(b[1]), .B(n404), .Y(n466) );
  XOR2X1 U354 ( .A(b[1]), .B(n408), .Y(n435) );
  BUFX8 U355 ( .A(n422), .Y(n394) );
  XOR2X1 U356 ( .A(b[1]), .B(n406), .Y(n456) );
  XOR2X1 U357 ( .A(b[1]), .B(n401), .Y(n474) );
  XOR2X1 U358 ( .A(b[1]), .B(n399), .Y(n484) );
  ADDFX2 U359 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  INVX1 U360 ( .A(n65), .Y(n403) );
  CMPR42X2 U361 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  AO21XL U362 ( .A0(n414), .A1(n393), .B0(n454), .Y(n170) );
  OAI2BB1XL U363 ( .A0N(n409), .A1N(n417), .B0(n418), .Y(n411) );
  OA22XL U364 ( .A0(n413), .A1(n414), .B0(n393), .B1(n416), .Y(n412) );
  INVX1 U365 ( .A(n39), .Y(n402) );
  XOR2XL U366 ( .A(b[11]), .B(n406), .Y(n423) );
  AO21XL U367 ( .A0(n380), .A1(n395), .B0(n426), .Y(n147) );
  XOR2XL U368 ( .A(b[11]), .B(n404), .Y(n426) );
  INVX1 U369 ( .A(n31), .Y(n400) );
  XOR2XL U370 ( .A(b[11]), .B(n401), .Y(n429) );
  AO21XL U371 ( .A0(n381), .A1(n396), .B0(n429), .Y(n135) );
  XOR2XL U372 ( .A(b[11]), .B(n399), .Y(n432) );
  ADDHX1 U373 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  XNOR2XL U374 ( .A(a[4]), .B(a[3]), .Y(n422) );
  OAI22X1 U375 ( .A0(n455), .A1(n425), .B0(n394), .B1(n456), .Y(n168) );
  ADDHX1 U376 ( .A(n168), .B(n378), .CO(n111), .S(n112) );
  OAI32XL U377 ( .A0(n406), .A1(n397), .A2(n394), .B0(n406), .B1(n425), .Y(
        n120) );
  ADDHX1 U378 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  CLKINVX3 U379 ( .A(a[5]), .Y(n406) );
  XOR2XL U380 ( .A(b[3]), .B(n407), .Y(n448) );
  XOR2XL U381 ( .A(b[5]), .B(n408), .Y(n439) );
  XOR2XL U382 ( .A(b[2]), .B(n406), .Y(n457) );
  XOR2XL U383 ( .A(b[3]), .B(n406), .Y(n458) );
  XOR2XL U384 ( .A(b[2]), .B(n404), .Y(n467) );
  XOR2XL U385 ( .A(b[4]), .B(n407), .Y(n449) );
  XOR2XL U386 ( .A(b[3]), .B(n404), .Y(n468) );
  XOR2XL U387 ( .A(b[4]), .B(n406), .Y(n459) );
  XOR2XL U388 ( .A(b[2]), .B(n401), .Y(n475) );
  XOR2XL U389 ( .A(b[3]), .B(n401), .Y(n476) );
  XOR2XL U390 ( .A(b[5]), .B(n407), .Y(n450) );
  XOR2XL U391 ( .A(b[4]), .B(n404), .Y(n469) );
  XOR2XL U392 ( .A(b[5]), .B(n406), .Y(n460) );
  XOR2XL U393 ( .A(b[2]), .B(n399), .Y(n485) );
  XOR2XL U394 ( .A(b[9]), .B(n408), .Y(n443) );
  XOR2XL U395 ( .A(b[6]), .B(n407), .Y(n451) );
  XOR2XL U396 ( .A(b[7]), .B(n407), .Y(n452) );
  XOR2XL U397 ( .A(b[5]), .B(n404), .Y(n470) );
  XOR2XL U398 ( .A(b[3]), .B(n399), .Y(n486) );
  XOR2XL U399 ( .A(b[4]), .B(n401), .Y(n477) );
  XOR2XL U400 ( .A(b[8]), .B(n407), .Y(n453) );
  XOR2XL U401 ( .A(b[9]), .B(n407), .Y(n413) );
  XOR2XL U402 ( .A(b[5]), .B(n401), .Y(n478) );
  XOR2XL U403 ( .A(b[6]), .B(n406), .Y(n461) );
  XOR2XL U404 ( .A(b[4]), .B(n399), .Y(n487) );
  XOR2XL U405 ( .A(b[6]), .B(n404), .Y(n419) );
  XOR2XL U406 ( .A(b[7]), .B(n406), .Y(n462) );
  XOR2XL U407 ( .A(b[10]), .B(n407), .Y(n416) );
  XOR2XL U408 ( .A(b[7]), .B(n404), .Y(n421) );
  XOR2XL U409 ( .A(b[5]), .B(n399), .Y(n488) );
  XOR2XL U410 ( .A(b[8]), .B(n406), .Y(n463) );
  XOR2XL U411 ( .A(b[9]), .B(n406), .Y(n464) );
  XOR2XL U412 ( .A(b[6]), .B(n401), .Y(n479) );
  XOR2XL U413 ( .A(b[7]), .B(n401), .Y(n480) );
  XOR2XL U414 ( .A(b[6]), .B(n399), .Y(n489) );
  XOR2XL U415 ( .A(b[10]), .B(n406), .Y(n424) );
  XOR2XL U416 ( .A(b[8]), .B(n404), .Y(n471) );
  XOR2XL U417 ( .A(b[9]), .B(n404), .Y(n472) );
  XOR2XL U418 ( .A(b[7]), .B(n399), .Y(n490) );
  XOR2XL U419 ( .A(b[8]), .B(n401), .Y(n481) );
  XOR2XL U420 ( .A(b[9]), .B(n401), .Y(n482) );
  XOR2XL U421 ( .A(b[10]), .B(n404), .Y(n427) );
  XOR2XL U422 ( .A(b[8]), .B(n399), .Y(n491) );
  XOR2XL U423 ( .A(b[10]), .B(n401), .Y(n430) );
  XOR2XL U424 ( .A(b[9]), .B(n399), .Y(n492) );
  XOR2XL U425 ( .A(b[10]), .B(n399), .Y(n433) );
  ADDFXL U426 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U427 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  CLKINVX1 U428 ( .A(n25), .Y(n398) );
  ADDFXL U429 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  XOR2X1 U430 ( .A(a[3]), .B(a[2]), .Y(n493) );
  XNOR2X1 U431 ( .A(a[8]), .B(a[7]), .Y(n428) );
  XNOR2X1 U432 ( .A(a[2]), .B(a[1]), .Y(n415) );
  INVX3 U433 ( .A(a[0]), .Y(n409) );
  XNOR2X1 U434 ( .A(a[6]), .B(a[5]), .Y(n420) );
  XOR2X1 U435 ( .A(a[5]), .B(a[4]), .Y(n494) );
  CLKINVX1 U436 ( .A(n3), .Y(product[23]) );
  XOR2X1 U437 ( .A(n411), .B(n412), .Y(n74) );
  NAND2BX1 U438 ( .AN(n411), .B(n412), .Y(n73) );
  OAI22XL U439 ( .A0(n419), .A1(n380), .B0(n395), .B1(n421), .Y(n65) );
  OAI22XL U440 ( .A0(n394), .A1(n423), .B0(n424), .B1(n425), .Y(n51) );
  OAI22XL U441 ( .A0(n395), .A1(n426), .B0(n427), .B1(n380), .Y(n39) );
  OAI22XL U442 ( .A0(n396), .A1(n429), .B0(n430), .B1(n381), .Y(n31) );
  OAI22XL U443 ( .A0(n431), .A1(n432), .B0(n433), .B1(n434), .Y(n25) );
  OAI22XL U444 ( .A0(n435), .A1(n417), .B0(n436), .B1(n409), .Y(n193) );
  OAI22XL U445 ( .A0(n436), .A1(n417), .B0(n437), .B1(n409), .Y(n192) );
  OAI22XL U446 ( .A0(n439), .A1(n417), .B0(n440), .B1(n409), .Y(n189) );
  OAI22XL U447 ( .A0(n440), .A1(n417), .B0(n441), .B1(n409), .Y(n188) );
  OAI22XL U448 ( .A0(n441), .A1(n417), .B0(n442), .B1(n409), .Y(n187) );
  OAI22XL U449 ( .A0(n443), .A1(n417), .B0(n444), .B1(n409), .Y(n185) );
  OAI2BB2XL U450 ( .B0(n444), .B1(n417), .A0N(n418), .A1N(a[0]), .Y(n184) );
  OAI22XL U451 ( .A0(n447), .A1(n414), .B0(n393), .B1(n448), .Y(n179) );
  OAI22XL U452 ( .A0(n448), .A1(n414), .B0(n393), .B1(n449), .Y(n178) );
  OAI22XL U453 ( .A0(n449), .A1(n414), .B0(n393), .B1(n450), .Y(n177) );
  OAI22XL U454 ( .A0(n450), .A1(n414), .B0(n393), .B1(n451), .Y(n176) );
  OAI22XL U455 ( .A0(n451), .A1(n414), .B0(n393), .B1(n452), .Y(n175) );
  OAI22XL U456 ( .A0(n452), .A1(n414), .B0(n393), .B1(n453), .Y(n174) );
  OAI22XL U457 ( .A0(n453), .A1(n414), .B0(n393), .B1(n413), .Y(n173) );
  OAI22XL U458 ( .A0(n416), .A1(n414), .B0(n393), .B1(n454), .Y(n171) );
  NOR2X1 U459 ( .A(n394), .B(n410), .Y(n169) );
  XOR2X1 U460 ( .A(n406), .B(n397), .Y(n455) );
  OAI22XL U461 ( .A0(n456), .A1(n425), .B0(n394), .B1(n457), .Y(n167) );
  OAI22XL U462 ( .A0(n457), .A1(n425), .B0(n394), .B1(n458), .Y(n166) );
  OAI22XL U463 ( .A0(n458), .A1(n425), .B0(n394), .B1(n459), .Y(n165) );
  OAI22XL U464 ( .A0(n459), .A1(n425), .B0(n394), .B1(n460), .Y(n164) );
  OAI22XL U465 ( .A0(n460), .A1(n425), .B0(n394), .B1(n461), .Y(n163) );
  OAI22XL U466 ( .A0(n461), .A1(n425), .B0(n394), .B1(n462), .Y(n162) );
  OAI22XL U467 ( .A0(n462), .A1(n425), .B0(n394), .B1(n463), .Y(n161) );
  OAI22XL U468 ( .A0(n463), .A1(n425), .B0(n394), .B1(n464), .Y(n160) );
  OAI22XL U469 ( .A0(n464), .A1(n425), .B0(n394), .B1(n424), .Y(n159) );
  AO21X1 U470 ( .A0(n425), .A1(n394), .B0(n423), .Y(n158) );
  NOR2X1 U471 ( .A(n395), .B(n410), .Y(n157) );
  XOR2X1 U472 ( .A(n404), .B(n397), .Y(n465) );
  OAI22XL U473 ( .A0(n468), .A1(n380), .B0(n395), .B1(n469), .Y(n153) );
  OAI22XL U474 ( .A0(n469), .A1(n380), .B0(n395), .B1(n470), .Y(n152) );
  OAI22XL U475 ( .A0(n470), .A1(n380), .B0(n395), .B1(n419), .Y(n151) );
  OAI22XL U476 ( .A0(n421), .A1(n380), .B0(n395), .B1(n471), .Y(n150) );
  OAI22XL U477 ( .A0(n471), .A1(n380), .B0(n395), .B1(n472), .Y(n149) );
  OAI22XL U478 ( .A0(n472), .A1(n380), .B0(n395), .B1(n427), .Y(n148) );
  NOR2X1 U479 ( .A(n396), .B(n410), .Y(n146) );
  XOR2X1 U480 ( .A(n401), .B(n397), .Y(n473) );
  OAI22XL U481 ( .A0(n474), .A1(n381), .B0(n396), .B1(n475), .Y(n144) );
  OAI22XL U482 ( .A0(n475), .A1(n381), .B0(n396), .B1(n476), .Y(n143) );
  OAI22XL U483 ( .A0(n476), .A1(n381), .B0(n396), .B1(n477), .Y(n142) );
  OAI22XL U484 ( .A0(n477), .A1(n381), .B0(n396), .B1(n478), .Y(n141) );
  OAI22XL U485 ( .A0(n478), .A1(n381), .B0(n396), .B1(n479), .Y(n140) );
  OAI22XL U486 ( .A0(n479), .A1(n381), .B0(n396), .B1(n480), .Y(n139) );
  OAI22XL U487 ( .A0(n480), .A1(n381), .B0(n396), .B1(n481), .Y(n138) );
  OAI22XL U488 ( .A0(n481), .A1(n381), .B0(n396), .B1(n482), .Y(n137) );
  OAI22XL U489 ( .A0(n482), .A1(n381), .B0(n396), .B1(n430), .Y(n136) );
  NOR2X1 U490 ( .A(n431), .B(n410), .Y(n134) );
  OAI22XL U491 ( .A0(n483), .A1(n434), .B0(n431), .B1(n484), .Y(n133) );
  XOR2X1 U492 ( .A(n399), .B(n397), .Y(n483) );
  OAI22XL U493 ( .A0(n484), .A1(n434), .B0(n431), .B1(n485), .Y(n132) );
  OAI22XL U494 ( .A0(n485), .A1(n434), .B0(n431), .B1(n486), .Y(n131) );
  OAI22XL U495 ( .A0(n486), .A1(n434), .B0(n431), .B1(n487), .Y(n130) );
  OAI22XL U496 ( .A0(n487), .A1(n434), .B0(n431), .B1(n488), .Y(n129) );
  OAI22XL U497 ( .A0(n488), .A1(n434), .B0(n431), .B1(n489), .Y(n128) );
  OAI22XL U498 ( .A0(n489), .A1(n434), .B0(n431), .B1(n490), .Y(n127) );
  OAI22XL U499 ( .A0(n490), .A1(n434), .B0(n431), .B1(n491), .Y(n126) );
  OAI22XL U500 ( .A0(n491), .A1(n434), .B0(n431), .B1(n492), .Y(n125) );
  OAI22XL U501 ( .A0(n492), .A1(n434), .B0(n431), .B1(n433), .Y(n124) );
  AO21X1 U502 ( .A0(n434), .A1(n431), .B0(n432), .Y(n123) );
  OAI21XL U503 ( .A0(n397), .A1(n408), .B0(n417), .Y(n122) );
  XOR2X1 U504 ( .A(a[7]), .B(a[6]), .Y(n495) );
  OAI32X1 U505 ( .A0(n401), .A1(n397), .A2(n396), .B0(n401), .B1(n381), .Y(
        n118) );
  XOR2X1 U506 ( .A(a[9]), .B(a[8]), .Y(n496) );
  OAI32X1 U507 ( .A0(n399), .A1(n397), .A2(n431), .B0(n399), .B1(n434), .Y(
        n117) );
  XOR2X1 U508 ( .A(a[11]), .B(a[10]), .Y(n497) );
endmodule


module geofence_DW_mult_tc_2 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485;

  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n391), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n393), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n396), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n394), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  OAI32X1 U281 ( .A0(n395), .A1(n388), .A2(n386), .B0(n395), .B1(n378), .Y(
        n119) );
  NAND2X6 U282 ( .A(n386), .B(n483), .Y(n378) );
  ADDFHX2 U283 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  OAI32X1 U284 ( .A0(n397), .A1(n388), .A2(n385), .B0(n397), .B1(n382), .Y(
        n120) );
  INVX3 U285 ( .A(a[5]), .Y(n397) );
  NAND2X8 U286 ( .A(n385), .B(n482), .Y(n382) );
  XOR2X2 U287 ( .A(b[2]), .B(n392), .Y(n463) );
  CLKINVX6 U288 ( .A(a[9]), .Y(n392) );
  ADDFHX2 U289 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  NAND2X4 U290 ( .A(n420), .B(n485), .Y(n380) );
  XOR2X2 U291 ( .A(b[1]), .B(n395), .Y(n454) );
  CLKINVX6 U292 ( .A(a[7]), .Y(n395) );
  OAI22X1 U293 ( .A0(n425), .A1(n407), .B0(n426), .B1(n400), .Y(n191) );
  OAI22X1 U294 ( .A0(n426), .A1(n407), .B0(n427), .B1(n400), .Y(n190) );
  CLKXOR2X1 U295 ( .A(b[4]), .B(n399), .Y(n426) );
  BUFX12 U296 ( .A(n412), .Y(n385) );
  XNOR2XL U297 ( .A(a[4]), .B(a[3]), .Y(n412) );
  BUFX12 U298 ( .A(n390), .Y(n383) );
  NAND2X6 U299 ( .A(n387), .B(n484), .Y(n379) );
  BUFX12 U300 ( .A(n417), .Y(n387) );
  ADDHX1 U301 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  NOR2X4 U302 ( .A(n386), .B(n401), .Y(n157) );
  OAI22X1 U303 ( .A0(n453), .A1(n378), .B0(n386), .B1(n454), .Y(n156) );
  BUFX16 U304 ( .A(n410), .Y(n386) );
  XOR2X2 U305 ( .A(b[1]), .B(n392), .Y(n462) );
  OAI22X1 U306 ( .A0(n443), .A1(n382), .B0(n385), .B1(n444), .Y(n168) );
  OAI22X1 U307 ( .A0(n444), .A1(n382), .B0(n385), .B1(n445), .Y(n167) );
  OAI22X1 U308 ( .A0(n445), .A1(n382), .B0(n385), .B1(n446), .Y(n166) );
  XOR2X1 U309 ( .A(b[8]), .B(n399), .Y(n430) );
  XOR2X1 U310 ( .A(b[1]), .B(n399), .Y(n423) );
  XOR2X1 U311 ( .A(b[6]), .B(n399), .Y(n428) );
  ADDFX2 U312 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  CLKINVX1 U313 ( .A(n388), .Y(n401) );
  INVX3 U314 ( .A(a[0]), .Y(n400) );
  XOR2X1 U315 ( .A(b[11]), .B(a[1]), .Y(n408) );
  INVX3 U316 ( .A(a[3]), .Y(n398) );
  ADDFX2 U317 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U318 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFX2 U319 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFX2 U320 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFX2 U321 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  NAND2X2 U322 ( .A(n384), .B(n481), .Y(n381) );
  OAI22XL U323 ( .A0(n431), .A1(n407), .B0(n432), .B1(n400), .Y(n185) );
  XOR2X1 U324 ( .A(b[9]), .B(n399), .Y(n431) );
  XNOR2X4 U325 ( .A(a[10]), .B(a[9]), .Y(n420) );
  XOR2X1 U326 ( .A(b[10]), .B(n399), .Y(n432) );
  ADDFHX2 U327 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  INVX1 U328 ( .A(a[11]), .Y(n390) );
  XOR2XL U329 ( .A(b[7]), .B(n399), .Y(n429) );
  ADDFX1 U330 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  XOR2X1 U331 ( .A(b[1]), .B(n398), .Y(n434) );
  XOR2XL U332 ( .A(b[2]), .B(n399), .Y(n424) );
  ADDHXL U333 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  INVX1 U334 ( .A(n51), .Y(n396) );
  XOR2XL U335 ( .A(b[11]), .B(n398), .Y(n442) );
  OAI22X1 U336 ( .A0(n388), .A1(n407), .B0(n423), .B1(n400), .Y(n194) );
  XOR2X1 U337 ( .A(b[1]), .B(n397), .Y(n444) );
  INVX1 U338 ( .A(n65), .Y(n394) );
  AO21XL U339 ( .A0(n381), .A1(n384), .B0(n442), .Y(n170) );
  OAI2BB1XL U340 ( .A0N(n400), .A1N(n407), .B0(n408), .Y(n402) );
  OA22XL U341 ( .A0(n404), .A1(n381), .B0(n384), .B1(n406), .Y(n403) );
  XOR2XL U342 ( .A(b[11]), .B(n397), .Y(n413) );
  INVX1 U343 ( .A(n39), .Y(n393) );
  AO21XL U344 ( .A0(n378), .A1(n386), .B0(n415), .Y(n147) );
  XOR2XL U345 ( .A(b[11]), .B(n395), .Y(n415) );
  INVX1 U346 ( .A(n31), .Y(n391) );
  XOR2XL U347 ( .A(b[11]), .B(n392), .Y(n418) );
  AO21XL U348 ( .A0(n379), .A1(n387), .B0(n418), .Y(n135) );
  XOR2XL U349 ( .A(b[11]), .B(n383), .Y(n421) );
  ADDHX1 U350 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  XOR2XL U351 ( .A(n398), .B(n388), .Y(n433) );
  ADDFX2 U352 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  XOR2XL U353 ( .A(b[3]), .B(n399), .Y(n425) );
  ADDHX1 U354 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  XOR2XL U355 ( .A(n395), .B(n388), .Y(n453) );
  XOR2XL U356 ( .A(b[2]), .B(n398), .Y(n435) );
  ADDHX1 U357 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  OAI32XL U358 ( .A0(n392), .A1(n388), .A2(n387), .B0(n392), .B1(n379), .Y(
        n118) );
  XOR2XL U359 ( .A(n392), .B(n388), .Y(n461) );
  XOR2XL U360 ( .A(b[5]), .B(n399), .Y(n427) );
  XOR2XL U361 ( .A(b[3]), .B(n398), .Y(n436) );
  XOR2XL U362 ( .A(b[2]), .B(n397), .Y(n445) );
  ADDHX1 U363 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  OAI32XL U364 ( .A0(n383), .A1(n388), .A2(n420), .B0(n383), .B1(n380), .Y(
        n117) );
  XOR2XL U365 ( .A(n383), .B(n388), .Y(n471) );
  XOR2XL U366 ( .A(b[3]), .B(n397), .Y(n446) );
  XOR2XL U367 ( .A(b[2]), .B(n395), .Y(n455) );
  XOR2XL U368 ( .A(b[4]), .B(n398), .Y(n437) );
  XOR2XL U369 ( .A(b[1]), .B(n383), .Y(n472) );
  XOR2XL U370 ( .A(b[3]), .B(n395), .Y(n456) );
  XOR2XL U371 ( .A(b[5]), .B(n398), .Y(n438) );
  XOR2XL U372 ( .A(b[4]), .B(n397), .Y(n447) );
  XOR2XL U373 ( .A(b[3]), .B(n392), .Y(n464) );
  XOR2XL U374 ( .A(b[4]), .B(n395), .Y(n457) );
  XOR2XL U375 ( .A(b[6]), .B(n398), .Y(n439) );
  XOR2XL U376 ( .A(b[5]), .B(n397), .Y(n448) );
  XOR2XL U377 ( .A(b[2]), .B(n383), .Y(n473) );
  XOR2XL U378 ( .A(b[7]), .B(n398), .Y(n440) );
  XOR2XL U379 ( .A(b[8]), .B(n398), .Y(n441) );
  XOR2XL U380 ( .A(b[5]), .B(n395), .Y(n458) );
  XOR2XL U381 ( .A(b[9]), .B(n398), .Y(n404) );
  XOR2XL U382 ( .A(b[3]), .B(n383), .Y(n474) );
  XOR2XL U383 ( .A(b[4]), .B(n392), .Y(n465) );
  XOR2XL U384 ( .A(b[5]), .B(n392), .Y(n466) );
  XOR2XL U385 ( .A(b[6]), .B(n397), .Y(n449) );
  XOR2XL U386 ( .A(b[4]), .B(n383), .Y(n475) );
  XOR2XL U387 ( .A(b[10]), .B(n398), .Y(n406) );
  XOR2XL U388 ( .A(b[6]), .B(n395), .Y(n409) );
  XOR2XL U389 ( .A(b[7]), .B(n397), .Y(n450) );
  XOR2XL U390 ( .A(b[8]), .B(n397), .Y(n451) );
  XOR2XL U391 ( .A(b[7]), .B(n395), .Y(n411) );
  XOR2XL U392 ( .A(b[5]), .B(n383), .Y(n476) );
  XOR2XL U393 ( .A(b[9]), .B(n397), .Y(n452) );
  XOR2XL U394 ( .A(b[6]), .B(n392), .Y(n467) );
  XOR2XL U395 ( .A(b[10]), .B(n397), .Y(n414) );
  XOR2XL U396 ( .A(b[7]), .B(n392), .Y(n468) );
  XOR2XL U397 ( .A(b[6]), .B(n383), .Y(n477) );
  XOR2XL U398 ( .A(b[8]), .B(n395), .Y(n459) );
  XOR2XL U399 ( .A(b[9]), .B(n395), .Y(n460) );
  XOR2XL U400 ( .A(b[8]), .B(n392), .Y(n469) );
  XOR2XL U401 ( .A(b[7]), .B(n383), .Y(n478) );
  XOR2XL U402 ( .A(b[10]), .B(n395), .Y(n416) );
  XOR2XL U403 ( .A(b[9]), .B(n392), .Y(n470) );
  XOR2XL U404 ( .A(b[8]), .B(n383), .Y(n479) );
  XOR2XL U405 ( .A(b[10]), .B(n392), .Y(n419) );
  XOR2XL U406 ( .A(b[9]), .B(n383), .Y(n480) );
  XOR2XL U407 ( .A(b[10]), .B(n383), .Y(n422) );
  ADDFXL U408 ( .A(n27), .B(n389), .CI(n5), .CO(n4), .S(product[21]) );
  CLKINVX1 U409 ( .A(n25), .Y(n389) );
  ADDFXL U410 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U411 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U412 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  INVX3 U413 ( .A(a[1]), .Y(n399) );
  NAND2X2 U414 ( .A(a[1]), .B(n400), .Y(n407) );
  XNOR2X1 U415 ( .A(a[8]), .B(a[7]), .Y(n417) );
  CLKBUFX3 U416 ( .A(n405), .Y(n384) );
  XNOR2X1 U417 ( .A(a[2]), .B(a[1]), .Y(n405) );
  XNOR2X1 U418 ( .A(a[6]), .B(a[5]), .Y(n410) );
  CLKBUFX3 U419 ( .A(b[0]), .Y(n388) );
  CLKINVX1 U420 ( .A(n3), .Y(product[23]) );
  NOR2X1 U421 ( .A(n400), .B(n401), .Y(product[0]) );
  XOR2X1 U422 ( .A(n402), .B(n403), .Y(n74) );
  NAND2BX1 U423 ( .AN(n402), .B(n403), .Y(n73) );
  OAI22XL U424 ( .A0(n409), .A1(n378), .B0(n386), .B1(n411), .Y(n65) );
  OAI22XL U425 ( .A0(n385), .A1(n413), .B0(n414), .B1(n382), .Y(n51) );
  OAI22XL U426 ( .A0(n386), .A1(n415), .B0(n416), .B1(n378), .Y(n39) );
  OAI22XL U427 ( .A0(n387), .A1(n418), .B0(n419), .B1(n379), .Y(n31) );
  OAI22XL U428 ( .A0(n420), .A1(n421), .B0(n422), .B1(n380), .Y(n25) );
  OAI22XL U429 ( .A0(n423), .A1(n407), .B0(n424), .B1(n400), .Y(n193) );
  OAI22XL U430 ( .A0(n424), .A1(n407), .B0(n425), .B1(n400), .Y(n192) );
  OAI22XL U431 ( .A0(n427), .A1(n407), .B0(n428), .B1(n400), .Y(n189) );
  OAI22XL U432 ( .A0(n428), .A1(n407), .B0(n429), .B1(n400), .Y(n188) );
  OAI22XL U433 ( .A0(n429), .A1(n407), .B0(n430), .B1(n400), .Y(n187) );
  OAI22XL U434 ( .A0(n430), .A1(n407), .B0(n431), .B1(n400), .Y(n186) );
  OAI2BB2XL U435 ( .B0(n432), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  NOR2X1 U436 ( .A(n384), .B(n401), .Y(n182) );
  OAI22XL U437 ( .A0(n433), .A1(n381), .B0(n384), .B1(n434), .Y(n181) );
  OAI22XL U438 ( .A0(n434), .A1(n381), .B0(n384), .B1(n435), .Y(n180) );
  OAI22XL U439 ( .A0(n435), .A1(n381), .B0(n384), .B1(n436), .Y(n179) );
  OAI22XL U440 ( .A0(n436), .A1(n381), .B0(n384), .B1(n437), .Y(n178) );
  OAI22XL U441 ( .A0(n437), .A1(n381), .B0(n384), .B1(n438), .Y(n177) );
  OAI22XL U442 ( .A0(n438), .A1(n381), .B0(n384), .B1(n439), .Y(n176) );
  OAI22XL U443 ( .A0(n439), .A1(n381), .B0(n384), .B1(n440), .Y(n175) );
  OAI22XL U444 ( .A0(n440), .A1(n381), .B0(n384), .B1(n441), .Y(n174) );
  OAI22XL U445 ( .A0(n441), .A1(n381), .B0(n384), .B1(n404), .Y(n173) );
  OAI22XL U446 ( .A0(n406), .A1(n381), .B0(n384), .B1(n442), .Y(n171) );
  NOR2X1 U447 ( .A(n385), .B(n401), .Y(n169) );
  XOR2X1 U448 ( .A(n397), .B(n388), .Y(n443) );
  OAI22XL U449 ( .A0(n446), .A1(n382), .B0(n385), .B1(n447), .Y(n165) );
  OAI22XL U450 ( .A0(n447), .A1(n382), .B0(n385), .B1(n448), .Y(n164) );
  OAI22XL U451 ( .A0(n448), .A1(n382), .B0(n385), .B1(n449), .Y(n163) );
  OAI22XL U452 ( .A0(n449), .A1(n382), .B0(n385), .B1(n450), .Y(n162) );
  OAI22XL U453 ( .A0(n450), .A1(n382), .B0(n385), .B1(n451), .Y(n161) );
  OAI22XL U454 ( .A0(n451), .A1(n382), .B0(n385), .B1(n452), .Y(n160) );
  OAI22XL U455 ( .A0(n452), .A1(n382), .B0(n385), .B1(n414), .Y(n159) );
  AO21X1 U456 ( .A0(n382), .A1(n385), .B0(n413), .Y(n158) );
  OAI22XL U457 ( .A0(n454), .A1(n378), .B0(n386), .B1(n455), .Y(n155) );
  OAI22XL U458 ( .A0(n455), .A1(n378), .B0(n386), .B1(n456), .Y(n154) );
  OAI22XL U459 ( .A0(n456), .A1(n378), .B0(n386), .B1(n457), .Y(n153) );
  OAI22XL U460 ( .A0(n457), .A1(n378), .B0(n386), .B1(n458), .Y(n152) );
  OAI22XL U461 ( .A0(n458), .A1(n378), .B0(n386), .B1(n409), .Y(n151) );
  OAI22XL U462 ( .A0(n411), .A1(n378), .B0(n386), .B1(n459), .Y(n150) );
  OAI22XL U463 ( .A0(n459), .A1(n378), .B0(n386), .B1(n460), .Y(n149) );
  OAI22XL U464 ( .A0(n460), .A1(n378), .B0(n386), .B1(n416), .Y(n148) );
  NOR2X1 U465 ( .A(n387), .B(n401), .Y(n146) );
  OAI22XL U466 ( .A0(n461), .A1(n379), .B0(n387), .B1(n462), .Y(n145) );
  OAI22XL U467 ( .A0(n462), .A1(n379), .B0(n387), .B1(n463), .Y(n144) );
  OAI22XL U468 ( .A0(n463), .A1(n379), .B0(n387), .B1(n464), .Y(n143) );
  OAI22XL U469 ( .A0(n464), .A1(n379), .B0(n387), .B1(n465), .Y(n142) );
  OAI22XL U470 ( .A0(n465), .A1(n379), .B0(n387), .B1(n466), .Y(n141) );
  OAI22XL U471 ( .A0(n466), .A1(n379), .B0(n387), .B1(n467), .Y(n140) );
  OAI22XL U472 ( .A0(n467), .A1(n379), .B0(n387), .B1(n468), .Y(n139) );
  OAI22XL U473 ( .A0(n468), .A1(n379), .B0(n387), .B1(n469), .Y(n138) );
  OAI22XL U474 ( .A0(n469), .A1(n379), .B0(n387), .B1(n470), .Y(n137) );
  OAI22XL U475 ( .A0(n470), .A1(n379), .B0(n387), .B1(n419), .Y(n136) );
  NOR2X1 U476 ( .A(n420), .B(n401), .Y(n134) );
  OAI22XL U477 ( .A0(n471), .A1(n380), .B0(n420), .B1(n472), .Y(n133) );
  OAI22XL U478 ( .A0(n472), .A1(n380), .B0(n420), .B1(n473), .Y(n132) );
  OAI22XL U479 ( .A0(n473), .A1(n380), .B0(n420), .B1(n474), .Y(n131) );
  OAI22XL U480 ( .A0(n474), .A1(n380), .B0(n420), .B1(n475), .Y(n130) );
  OAI22XL U481 ( .A0(n475), .A1(n380), .B0(n420), .B1(n476), .Y(n129) );
  OAI22XL U482 ( .A0(n476), .A1(n380), .B0(n420), .B1(n477), .Y(n128) );
  OAI22XL U483 ( .A0(n477), .A1(n380), .B0(n420), .B1(n478), .Y(n127) );
  OAI22XL U484 ( .A0(n478), .A1(n380), .B0(n420), .B1(n479), .Y(n126) );
  OAI22XL U485 ( .A0(n479), .A1(n380), .B0(n420), .B1(n480), .Y(n125) );
  OAI22XL U486 ( .A0(n480), .A1(n380), .B0(n420), .B1(n422), .Y(n124) );
  AO21X1 U487 ( .A0(n380), .A1(n420), .B0(n421), .Y(n123) );
  OAI21XL U488 ( .A0(n388), .A1(n399), .B0(n407), .Y(n122) );
  OAI32X1 U489 ( .A0(n398), .A1(n388), .A2(n384), .B0(n398), .B1(n381), .Y(
        n121) );
  XOR2X1 U490 ( .A(a[3]), .B(a[2]), .Y(n481) );
  XOR2X1 U491 ( .A(a[5]), .B(a[4]), .Y(n482) );
  XOR2X1 U492 ( .A(a[7]), .B(a[6]), .Y(n483) );
  XOR2X1 U493 ( .A(a[9]), .B(a[8]), .Y(n484) );
  XOR2X1 U494 ( .A(a[11]), .B(a[10]), .Y(n485) );
endmodule


module geofence_DW01_sub_33 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73;

  CLKAND2X3 U1 ( .A(n53), .B(n23), .Y(n54) );
  AOI2BB2X4 U2 ( .B0(n39), .B1(A[18]), .A0N(B[18]), .A1N(n40), .Y(n37) );
  NOR2X6 U3 ( .A(A[18]), .B(n39), .Y(n40) );
  OAI22X4 U4 ( .A0(n68), .A1(n27), .B0(B[3]), .B1(n69), .Y(n66) );
  CLKAND2X8 U5 ( .A(n68), .B(n27), .Y(n69) );
  AOI2BB2X2 U6 ( .B0(n66), .B1(A[4]), .A0N(B[4]), .A1N(n67), .Y(n65) );
  NOR2X2 U7 ( .A(A[4]), .B(n66), .Y(n67) );
  NAND2X2 U8 ( .A(n65), .B(n26), .Y(n16) );
  OAI22X4 U9 ( .A0(n33), .A1(n18), .B0(B[21]), .B1(n34), .Y(n31) );
  CLKAND2X8 U10 ( .A(n2), .B(n18), .Y(n34) );
  AOI2BB2X4 U11 ( .B0(n59), .B1(A[8]), .A0N(B[8]), .A1N(n60), .Y(n57) );
  NOR2X2 U12 ( .A(A[8]), .B(n59), .Y(n60) );
  OAI22X4 U13 ( .A0(n57), .A1(n24), .B0(B[9]), .B1(n58), .Y(n55) );
  CLKAND2X8 U14 ( .A(n57), .B(n24), .Y(n58) );
  NOR2X1 U15 ( .A(B[1]), .B(n73), .Y(n14) );
  NAND2X1 U16 ( .A(n7), .B(n8), .Y(n59) );
  AOI2BB2X1 U17 ( .B0(n55), .B1(A[10]), .A0N(B[10]), .A1N(n56), .Y(n53) );
  NOR2X1 U18 ( .A(A[10]), .B(n55), .Y(n56) );
  OR2X1 U19 ( .A(B[11]), .B(n54), .Y(n12) );
  AOI2BB2X2 U20 ( .B0(n51), .B1(A[12]), .A0N(B[12]), .A1N(n52), .Y(n49) );
  NOR2X2 U21 ( .A(A[12]), .B(n51), .Y(n52) );
  NAND2X2 U22 ( .A(n11), .B(n12), .Y(n51) );
  OR2X1 U23 ( .A(n53), .B(n23), .Y(n11) );
  OR2X4 U24 ( .A(B[17]), .B(n42), .Y(n10) );
  AND2X2 U25 ( .A(n41), .B(n20), .Y(n42) );
  NOR2X1 U26 ( .A(A[22]), .B(n31), .Y(n32) );
  CLKINVX1 U27 ( .A(A[24]), .Y(n17) );
  NAND2X1 U28 ( .A(n30), .B(n17), .Y(n1) );
  CLKAND2X6 U29 ( .A(n37), .B(n19), .Y(n38) );
  OAI22X4 U30 ( .A0(n49), .A1(n22), .B0(B[13]), .B1(n50), .Y(n47) );
  CLKAND2X6 U31 ( .A(n49), .B(n22), .Y(n50) );
  AOI2BB2X4 U32 ( .B0(n63), .B1(A[6]), .A0N(B[6]), .A1N(n64), .Y(n61) );
  NOR2X4 U33 ( .A(A[6]), .B(n63), .Y(n64) );
  AOI2BB2X4 U34 ( .B0(n31), .B1(A[22]), .A0N(B[22]), .A1N(n32), .Y(n30) );
  AOI2BB2X1 U35 ( .B0(n35), .B1(A[20]), .A0N(B[20]), .A1N(n36), .Y(n2) );
  OR2X2 U36 ( .A(n37), .B(n19), .Y(n3) );
  OR2X8 U37 ( .A(B[19]), .B(n38), .Y(n4) );
  NAND2X8 U38 ( .A(n3), .B(n4), .Y(n35) );
  AOI2BB2X1 U39 ( .B0(n35), .B1(A[20]), .A0N(B[20]), .A1N(n36), .Y(n33) );
  NOR2X2 U40 ( .A(A[20]), .B(n35), .Y(n36) );
  AOI2BB2X2 U41 ( .B0(n47), .B1(A[14]), .A0N(B[14]), .A1N(n48), .Y(n45) );
  NOR2X2 U42 ( .A(A[14]), .B(n47), .Y(n48) );
  NOR2X2 U43 ( .A(n45), .B(n21), .Y(n5) );
  NOR2X8 U44 ( .A(B[15]), .B(n46), .Y(n6) );
  OR2X8 U45 ( .A(n5), .B(n6), .Y(n43) );
  CLKAND2X6 U46 ( .A(n45), .B(n21), .Y(n46) );
  NOR2X4 U47 ( .A(A[16]), .B(n43), .Y(n44) );
  AOI2BB2X4 U48 ( .B0(n43), .B1(A[16]), .A0N(B[16]), .A1N(n44), .Y(n41) );
  AOI2BB2X2 U49 ( .B0(n70), .B1(A[2]), .A0N(B[2]), .A1N(n71), .Y(n68) );
  NOR2X1 U50 ( .A(A[2]), .B(n70), .Y(n71) );
  OR2X1 U51 ( .A(n61), .B(n25), .Y(n7) );
  OR2X4 U52 ( .A(B[7]), .B(n62), .Y(n8) );
  AND2X2 U53 ( .A(n61), .B(n25), .Y(n62) );
  OR2X2 U54 ( .A(n41), .B(n20), .Y(n9) );
  NAND2X8 U55 ( .A(n9), .B(n10), .Y(n39) );
  NOR2X1 U56 ( .A(n72), .B(n28), .Y(n13) );
  OR2X4 U57 ( .A(n13), .B(n14), .Y(n70) );
  CLKINVX1 U58 ( .A(B[5]), .Y(n15) );
  INVX1 U59 ( .A(A[7]), .Y(n25) );
  INVX1 U60 ( .A(A[9]), .Y(n24) );
  INVX1 U61 ( .A(A[11]), .Y(n23) );
  INVX1 U62 ( .A(A[13]), .Y(n22) );
  INVX1 U63 ( .A(A[15]), .Y(n21) );
  INVX1 U64 ( .A(A[17]), .Y(n20) );
  INVX1 U65 ( .A(A[19]), .Y(n19) );
  INVX1 U66 ( .A(A[21]), .Y(n18) );
  OAI2BB2X2 U67 ( .B0(n65), .B1(n26), .A0N(n15), .A1N(n16), .Y(n63) );
  OAI2BB2X2 U68 ( .B0(n30), .B1(n17), .A0N(n29), .A1N(n1), .Y(\carry[24] ) );
  XNOR3X2 U69 ( .A(A[24]), .B(B[23]), .C(\carry[24] ), .Y(DIFF[24]) );
  INVX3 U70 ( .A(B[24]), .Y(n29) );
  CLKINVX1 U71 ( .A(A[5]), .Y(n26) );
  CLKINVX1 U72 ( .A(A[1]), .Y(n28) );
  CLKINVX1 U73 ( .A(A[3]), .Y(n27) );
  AND2X1 U74 ( .A(n72), .B(n28), .Y(n73) );
  NOR2BX1 U75 ( .AN(B[0]), .B(A[0]), .Y(n72) );
endmodule


module geofence_DW_mult_tc_5 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488;

  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n391), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n393), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n396), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n394), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  NAND2X6 U281 ( .A(n384), .B(n486), .Y(n410) );
  BUFX20 U282 ( .A(n413), .Y(n383) );
  XNOR2X4 U283 ( .A(a[4]), .B(a[3]), .Y(n413) );
  BUFX3 U284 ( .A(n168), .Y(n378) );
  ADDFXL U285 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  OAI22XL U286 ( .A0(n475), .A1(n386), .B0(n387), .B1(n476), .Y(n132) );
  OAI22XL U287 ( .A0(n474), .A1(n386), .B0(n387), .B1(n475), .Y(n133) );
  ADDFXL U288 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U289 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDFXL U290 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  XOR2X1 U291 ( .A(b[1]), .B(n392), .Y(n465) );
  XOR2X1 U292 ( .A(b[10]), .B(n399), .Y(n435) );
  INVX3 U293 ( .A(a[0]), .Y(n400) );
  ADDFX2 U294 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U295 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  CLKBUFX8 U296 ( .A(n419), .Y(n385) );
  ADDFX2 U297 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFX2 U298 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  BUFX4 U299 ( .A(n422), .Y(n387) );
  NAND2X4 U300 ( .A(n385), .B(n487), .Y(n379) );
  XNOR2X4 U301 ( .A(a[2]), .B(a[1]), .Y(n380) );
  OAI22X1 U302 ( .A0(n434), .A1(n407), .B0(n435), .B1(n400), .Y(n185) );
  OAI22X1 U303 ( .A0(n464), .A1(n379), .B0(n385), .B1(n465), .Y(n145) );
  ADDHX1 U304 ( .A(n378), .B(n120), .CO(n111), .S(n112) );
  XNOR2XL U305 ( .A(a[8]), .B(a[7]), .Y(n419) );
  NAND2X6 U306 ( .A(n387), .B(n488), .Y(n425) );
  NOR2X2 U307 ( .A(n387), .B(n401), .Y(n134) );
  OAI32XL U308 ( .A0(n390), .A1(n388), .A2(n387), .B0(n390), .B1(n386), .Y(
        n117) );
  BUFX8 U309 ( .A(n425), .Y(n386) );
  INVX3 U310 ( .A(a[9]), .Y(n392) );
  ADDFX2 U311 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFX2 U312 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFX2 U313 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  CMPR32X2 U314 ( .A(n91), .B(n97), .C(n17), .CO(n16), .S(product[9]) );
  CMPR32X2 U315 ( .A(n69), .B(n76), .C(n14), .CO(n13), .S(product[12]) );
  CMPR32X2 U316 ( .A(n61), .B(n68), .C(n13), .CO(n12), .S(product[13]) );
  CMPR32X2 U317 ( .A(n55), .B(n60), .C(n12), .CO(n11), .S(product[14]) );
  CMPR32X2 U318 ( .A(n48), .B(n54), .C(n11), .CO(n10), .S(product[15]) );
  CMPR32X2 U319 ( .A(n191), .B(n169), .C(n180), .CO(n113), .S(n114) );
  ADDFX2 U320 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  INVX3 U321 ( .A(a[11]), .Y(n390) );
  BUFX8 U322 ( .A(n411), .Y(n384) );
  CMPR32X2 U323 ( .A(n77), .B(n84), .C(n15), .CO(n14), .S(product[11]) );
  INVX1 U324 ( .A(n65), .Y(n394) );
  INVXL U325 ( .A(n51), .Y(n396) );
  CMPR32X2 U326 ( .A(n25), .B(n123), .C(n4), .CO(n3), .S(product[22]) );
  NOR2XL U327 ( .A(n384), .B(n401), .Y(n157) );
  AO21XL U328 ( .A0(n381), .A1(n380), .B0(n445), .Y(n170) );
  XOR2XL U329 ( .A(b[11]), .B(n398), .Y(n445) );
  OAI2BB1XL U330 ( .A0N(n400), .A1N(n407), .B0(n408), .Y(n402) );
  OA22XL U331 ( .A0(n404), .A1(n381), .B0(n380), .B1(n406), .Y(n403) );
  XOR2XL U332 ( .A(b[11]), .B(n397), .Y(n414) );
  XOR2XL U333 ( .A(b[11]), .B(n395), .Y(n417) );
  AO21XL U334 ( .A0(n379), .A1(n385), .B0(n420), .Y(n135) );
  XOR2XL U335 ( .A(b[11]), .B(n392), .Y(n420) );
  XOR2XL U336 ( .A(b[11]), .B(n390), .Y(n423) );
  ADDHX1 U337 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  OAI32XL U338 ( .A0(n392), .A1(n388), .A2(n385), .B0(n392), .B1(n379), .Y(
        n118) );
  XOR2XL U339 ( .A(n392), .B(n388), .Y(n464) );
  XNOR2XL U340 ( .A(a[6]), .B(a[5]), .Y(n411) );
  XOR2XL U341 ( .A(b[2]), .B(n390), .Y(n476) );
  XOR2XL U342 ( .A(b[3]), .B(n392), .Y(n467) );
  XOR2XL U343 ( .A(b[2]), .B(n392), .Y(n466) );
  XOR2XL U344 ( .A(b[2]), .B(n397), .Y(n448) );
  XOR2XL U345 ( .A(b[2]), .B(n395), .Y(n458) );
  XOR2XL U346 ( .A(b[2]), .B(n398), .Y(n438) );
  XOR2XL U347 ( .A(b[3]), .B(n395), .Y(n459) );
  XOR2X2 U348 ( .A(b[1]), .B(n399), .Y(n426) );
  XOR2XL U349 ( .A(b[4]), .B(n395), .Y(n460) );
  XOR2XL U350 ( .A(b[3]), .B(n390), .Y(n477) );
  XOR2XL U351 ( .A(b[3]), .B(n398), .Y(n439) );
  XOR2XL U352 ( .A(b[3]), .B(n397), .Y(n449) );
  XOR2XL U353 ( .A(b[4]), .B(n390), .Y(n478) );
  XOR2XL U354 ( .A(b[4]), .B(n392), .Y(n468) );
  XOR2XL U355 ( .A(b[4]), .B(n397), .Y(n450) );
  XOR2XL U356 ( .A(b[4]), .B(n398), .Y(n440) );
  XOR2XL U357 ( .A(b[5]), .B(n392), .Y(n469) );
  XOR2XL U358 ( .A(b[5]), .B(n395), .Y(n461) );
  XOR2XL U359 ( .A(b[5]), .B(n397), .Y(n451) );
  XOR2XL U360 ( .A(b[5]), .B(n390), .Y(n479) );
  XOR2XL U361 ( .A(b[9]), .B(n398), .Y(n404) );
  XOR2XL U362 ( .A(b[5]), .B(n398), .Y(n441) );
  XOR2XL U363 ( .A(b[6]), .B(n395), .Y(n409) );
  XOR2XL U364 ( .A(b[8]), .B(n398), .Y(n444) );
  XOR2XL U365 ( .A(b[7]), .B(n398), .Y(n443) );
  XOR2XL U366 ( .A(b[6]), .B(n398), .Y(n442) );
  XOR2XL U367 ( .A(b[6]), .B(n390), .Y(n480) );
  XOR2XL U368 ( .A(b[10]), .B(n398), .Y(n406) );
  XOR2XL U369 ( .A(b[7]), .B(n395), .Y(n412) );
  XOR2XL U370 ( .A(b[6]), .B(n397), .Y(n452) );
  XOR2XL U371 ( .A(b[7]), .B(n392), .Y(n471) );
  XOR2XL U372 ( .A(b[6]), .B(n392), .Y(n470) );
  XOR2XL U373 ( .A(b[8]), .B(n397), .Y(n454) );
  XOR2XL U374 ( .A(b[7]), .B(n397), .Y(n453) );
  XOR2XL U375 ( .A(b[9]), .B(n397), .Y(n455) );
  XOR2XL U376 ( .A(b[10]), .B(n397), .Y(n415) );
  XOR2XL U377 ( .A(b[7]), .B(n390), .Y(n481) );
  XOR2XL U378 ( .A(b[8]), .B(n395), .Y(n462) );
  XOR2XL U379 ( .A(b[9]), .B(n395), .Y(n463) );
  XOR2XL U380 ( .A(b[8]), .B(n392), .Y(n472) );
  XOR2XL U381 ( .A(b[9]), .B(n392), .Y(n473) );
  XOR2XL U382 ( .A(b[8]), .B(n390), .Y(n482) );
  XOR2XL U383 ( .A(b[9]), .B(n390), .Y(n483) );
  XOR2XL U384 ( .A(b[10]), .B(n395), .Y(n418) );
  XOR2XL U385 ( .A(b[10]), .B(n392), .Y(n421) );
  XOR2XL U386 ( .A(b[10]), .B(n390), .Y(n424) );
  ADDFXL U387 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U388 ( .A(n27), .B(n389), .CI(n5), .CO(n4), .S(product[21]) );
  CLKINVX1 U389 ( .A(n25), .Y(n389) );
  OAI22XL U390 ( .A0(n429), .A1(n407), .B0(n430), .B1(n400), .Y(n190) );
  CLKINVX1 U391 ( .A(n39), .Y(n393) );
  CLKINVX1 U392 ( .A(n31), .Y(n391) );
  INVX3 U393 ( .A(a[7]), .Y(n395) );
  INVX3 U394 ( .A(a[3]), .Y(n398) );
  OAI22XL U395 ( .A0(n446), .A1(n382), .B0(n383), .B1(n447), .Y(n168) );
  OAI32X1 U396 ( .A0(n397), .A1(n388), .A2(n383), .B0(n397), .B1(n382), .Y(
        n120) );
  CLKBUFX3 U397 ( .A(n416), .Y(n382) );
  NAND2X1 U398 ( .A(n383), .B(n485), .Y(n416) );
  XOR2X1 U399 ( .A(a[5]), .B(a[4]), .Y(n485) );
  INVX3 U400 ( .A(a[5]), .Y(n397) );
  CLKBUFX3 U401 ( .A(n405), .Y(n381) );
  NAND2X1 U402 ( .A(n380), .B(n484), .Y(n405) );
  XOR2X1 U403 ( .A(a[3]), .B(a[2]), .Y(n484) );
  NAND2X2 U404 ( .A(a[1]), .B(n400), .Y(n407) );
  XOR2X1 U405 ( .A(b[1]), .B(n398), .Y(n437) );
  ADDHXL U406 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  OAI22XL U407 ( .A0(n436), .A1(n381), .B0(n380), .B1(n437), .Y(n181) );
  OAI22XL U408 ( .A0(n427), .A1(n407), .B0(n428), .B1(n400), .Y(n192) );
  CLKINVX1 U409 ( .A(n388), .Y(n401) );
  XNOR2X1 U410 ( .A(a[10]), .B(a[9]), .Y(n422) );
  CLKBUFX3 U411 ( .A(b[0]), .Y(n388) );
  ADDFX2 U412 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  INVX3 U413 ( .A(a[1]), .Y(n399) );
  ADDHX1 U414 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  CLKINVX1 U415 ( .A(n3), .Y(product[23]) );
  NOR2X1 U416 ( .A(n400), .B(n401), .Y(product[0]) );
  XOR2X1 U417 ( .A(n402), .B(n403), .Y(n74) );
  NAND2BX1 U418 ( .AN(n402), .B(n403), .Y(n73) );
  OAI22XL U419 ( .A0(n409), .A1(n410), .B0(n384), .B1(n412), .Y(n65) );
  OAI22XL U420 ( .A0(n383), .A1(n414), .B0(n415), .B1(n382), .Y(n51) );
  OAI22XL U421 ( .A0(n384), .A1(n417), .B0(n418), .B1(n410), .Y(n39) );
  OAI22XL U422 ( .A0(n385), .A1(n420), .B0(n421), .B1(n379), .Y(n31) );
  OAI22XL U423 ( .A0(n387), .A1(n423), .B0(n424), .B1(n386), .Y(n25) );
  OAI22XL U424 ( .A0(n388), .A1(n407), .B0(n426), .B1(n400), .Y(n194) );
  OAI22XL U425 ( .A0(n426), .A1(n407), .B0(n427), .B1(n400), .Y(n193) );
  XOR2X1 U426 ( .A(b[2]), .B(n399), .Y(n427) );
  OAI22XL U427 ( .A0(n428), .A1(n407), .B0(n429), .B1(n400), .Y(n191) );
  XOR2X1 U428 ( .A(b[3]), .B(n399), .Y(n428) );
  XOR2X1 U429 ( .A(b[4]), .B(n399), .Y(n429) );
  OAI22XL U430 ( .A0(n430), .A1(n407), .B0(n431), .B1(n400), .Y(n189) );
  XOR2X1 U431 ( .A(b[5]), .B(n399), .Y(n430) );
  OAI22XL U432 ( .A0(n431), .A1(n407), .B0(n432), .B1(n400), .Y(n188) );
  XOR2X1 U433 ( .A(b[6]), .B(n399), .Y(n431) );
  OAI22XL U434 ( .A0(n432), .A1(n407), .B0(n433), .B1(n400), .Y(n187) );
  XOR2X1 U435 ( .A(b[7]), .B(n399), .Y(n432) );
  OAI22XL U436 ( .A0(n433), .A1(n407), .B0(n434), .B1(n400), .Y(n186) );
  XOR2X1 U437 ( .A(b[8]), .B(n399), .Y(n433) );
  XOR2X1 U438 ( .A(b[9]), .B(n399), .Y(n434) );
  OAI2BB2XL U439 ( .B0(n435), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  XOR2X1 U440 ( .A(b[11]), .B(a[1]), .Y(n408) );
  NOR2X1 U441 ( .A(n380), .B(n401), .Y(n182) );
  XOR2X1 U442 ( .A(n398), .B(n388), .Y(n436) );
  OAI22XL U443 ( .A0(n437), .A1(n381), .B0(n380), .B1(n438), .Y(n180) );
  OAI22XL U444 ( .A0(n438), .A1(n381), .B0(n380), .B1(n439), .Y(n179) );
  OAI22XL U445 ( .A0(n439), .A1(n381), .B0(n380), .B1(n440), .Y(n178) );
  OAI22XL U446 ( .A0(n440), .A1(n381), .B0(n380), .B1(n441), .Y(n177) );
  OAI22XL U447 ( .A0(n441), .A1(n381), .B0(n380), .B1(n442), .Y(n176) );
  OAI22XL U448 ( .A0(n442), .A1(n381), .B0(n380), .B1(n443), .Y(n175) );
  OAI22XL U449 ( .A0(n443), .A1(n381), .B0(n380), .B1(n444), .Y(n174) );
  OAI22XL U450 ( .A0(n444), .A1(n381), .B0(n380), .B1(n404), .Y(n173) );
  OAI22XL U451 ( .A0(n406), .A1(n381), .B0(n380), .B1(n445), .Y(n171) );
  NOR2X1 U452 ( .A(n383), .B(n401), .Y(n169) );
  XOR2X1 U453 ( .A(n397), .B(n388), .Y(n446) );
  OAI22XL U454 ( .A0(n447), .A1(n382), .B0(n383), .B1(n448), .Y(n167) );
  XOR2X1 U455 ( .A(b[1]), .B(n397), .Y(n447) );
  OAI22XL U456 ( .A0(n448), .A1(n382), .B0(n383), .B1(n449), .Y(n166) );
  OAI22XL U457 ( .A0(n449), .A1(n382), .B0(n383), .B1(n450), .Y(n165) );
  OAI22XL U458 ( .A0(n450), .A1(n382), .B0(n383), .B1(n451), .Y(n164) );
  OAI22XL U459 ( .A0(n451), .A1(n382), .B0(n383), .B1(n452), .Y(n163) );
  OAI22XL U460 ( .A0(n452), .A1(n382), .B0(n383), .B1(n453), .Y(n162) );
  OAI22XL U461 ( .A0(n453), .A1(n382), .B0(n383), .B1(n454), .Y(n161) );
  OAI22XL U462 ( .A0(n454), .A1(n382), .B0(n383), .B1(n455), .Y(n160) );
  OAI22XL U463 ( .A0(n455), .A1(n382), .B0(n383), .B1(n415), .Y(n159) );
  AO21X1 U464 ( .A0(n382), .A1(n383), .B0(n414), .Y(n158) );
  OAI22XL U465 ( .A0(n456), .A1(n410), .B0(n384), .B1(n457), .Y(n156) );
  XOR2X1 U466 ( .A(n395), .B(n388), .Y(n456) );
  OAI22XL U467 ( .A0(n457), .A1(n410), .B0(n384), .B1(n458), .Y(n155) );
  XOR2X1 U468 ( .A(b[1]), .B(n395), .Y(n457) );
  OAI22XL U469 ( .A0(n458), .A1(n410), .B0(n384), .B1(n459), .Y(n154) );
  OAI22XL U470 ( .A0(n459), .A1(n410), .B0(n384), .B1(n460), .Y(n153) );
  OAI22XL U471 ( .A0(n460), .A1(n410), .B0(n384), .B1(n461), .Y(n152) );
  OAI22XL U472 ( .A0(n461), .A1(n410), .B0(n384), .B1(n409), .Y(n151) );
  OAI22XL U473 ( .A0(n412), .A1(n410), .B0(n384), .B1(n462), .Y(n150) );
  OAI22XL U474 ( .A0(n462), .A1(n410), .B0(n384), .B1(n463), .Y(n149) );
  OAI22XL U475 ( .A0(n463), .A1(n410), .B0(n384), .B1(n418), .Y(n148) );
  AO21X1 U476 ( .A0(n410), .A1(n384), .B0(n417), .Y(n147) );
  NOR2X1 U477 ( .A(n385), .B(n401), .Y(n146) );
  OAI22XL U478 ( .A0(n465), .A1(n379), .B0(n385), .B1(n466), .Y(n144) );
  OAI22XL U479 ( .A0(n466), .A1(n379), .B0(n385), .B1(n467), .Y(n143) );
  OAI22XL U480 ( .A0(n467), .A1(n379), .B0(n385), .B1(n468), .Y(n142) );
  OAI22XL U481 ( .A0(n468), .A1(n379), .B0(n385), .B1(n469), .Y(n141) );
  OAI22XL U482 ( .A0(n469), .A1(n379), .B0(n385), .B1(n470), .Y(n140) );
  OAI22XL U483 ( .A0(n470), .A1(n379), .B0(n385), .B1(n471), .Y(n139) );
  OAI22XL U484 ( .A0(n471), .A1(n379), .B0(n385), .B1(n472), .Y(n138) );
  OAI22XL U485 ( .A0(n472), .A1(n379), .B0(n385), .B1(n473), .Y(n137) );
  OAI22XL U486 ( .A0(n473), .A1(n379), .B0(n385), .B1(n421), .Y(n136) );
  XOR2X1 U487 ( .A(n390), .B(n388), .Y(n474) );
  XOR2X1 U488 ( .A(b[1]), .B(n390), .Y(n475) );
  OAI22XL U489 ( .A0(n476), .A1(n386), .B0(n387), .B1(n477), .Y(n131) );
  OAI22XL U490 ( .A0(n477), .A1(n386), .B0(n387), .B1(n478), .Y(n130) );
  OAI22XL U491 ( .A0(n478), .A1(n386), .B0(n387), .B1(n479), .Y(n129) );
  OAI22XL U492 ( .A0(n479), .A1(n386), .B0(n387), .B1(n480), .Y(n128) );
  OAI22XL U493 ( .A0(n480), .A1(n386), .B0(n387), .B1(n481), .Y(n127) );
  OAI22XL U494 ( .A0(n481), .A1(n386), .B0(n387), .B1(n482), .Y(n126) );
  OAI22XL U495 ( .A0(n482), .A1(n386), .B0(n387), .B1(n483), .Y(n125) );
  OAI22XL U496 ( .A0(n483), .A1(n386), .B0(n387), .B1(n424), .Y(n124) );
  AO21X1 U497 ( .A0(n386), .A1(n387), .B0(n423), .Y(n123) );
  OAI21XL U498 ( .A0(n388), .A1(n399), .B0(n407), .Y(n122) );
  OAI32X1 U499 ( .A0(n398), .A1(n388), .A2(n380), .B0(n398), .B1(n381), .Y(
        n121) );
  OAI32X1 U500 ( .A0(n395), .A1(n388), .A2(n384), .B0(n395), .B1(n410), .Y(
        n119) );
  XOR2X1 U501 ( .A(a[7]), .B(a[6]), .Y(n486) );
  XOR2X1 U502 ( .A(a[9]), .B(a[8]), .Y(n487) );
  XOR2X1 U503 ( .A(a[11]), .B(a[10]), .Y(n488) );
endmodule


module geofence_DW_mult_tc_4 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485;

  ADDFXL U5 ( .A(n27), .B(n387), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U8 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n389), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n391), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n394), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n392), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U52 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDHXL U58 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  XOR2X1 U281 ( .A(b[7]), .B(n397), .Y(n429) );
  OAI2BB2X1 U282 ( .B0(n432), .B1(n405), .A0N(n406), .A1N(a[0]), .Y(n184) );
  NAND2X4 U283 ( .A(n385), .B(n485), .Y(n422) );
  CLKBUFX6 U284 ( .A(n419), .Y(n385) );
  XOR2X2 U285 ( .A(b[6]), .B(n397), .Y(n428) );
  OAI22X1 U286 ( .A0(n424), .A1(n405), .B0(n425), .B1(n398), .Y(n192) );
  NAND2X4 U287 ( .A(n383), .B(n483), .Y(n408) );
  OAI22X1 U288 ( .A0(n426), .A1(n405), .B0(n427), .B1(n398), .Y(n190) );
  XOR2X1 U289 ( .A(b[4]), .B(n397), .Y(n426) );
  ADDFX1 U290 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHX1 U291 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  NAND2X6 U292 ( .A(n384), .B(n484), .Y(n379) );
  OAI22X1 U293 ( .A0(n431), .A1(n405), .B0(n432), .B1(n398), .Y(n185) );
  XOR2X2 U294 ( .A(b[10]), .B(n397), .Y(n432) );
  OAI22XL U295 ( .A0(n386), .A1(n405), .B0(n423), .B1(n398), .Y(n194) );
  NOR2X1 U296 ( .A(n385), .B(n399), .Y(n134) );
  ADDHXL U297 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  ADDFXL U298 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  INVX3 U299 ( .A(a[0]), .Y(n398) );
  OAI22XL U300 ( .A0(n472), .A1(n422), .B0(n385), .B1(n473), .Y(n132) );
  OAI22XL U301 ( .A0(n471), .A1(n422), .B0(n385), .B1(n472), .Y(n133) );
  ADDFXL U302 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U303 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  CLKBUFX6 U304 ( .A(n411), .Y(n382) );
  ADDFXL U305 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFX1 U306 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  BUFX6 U307 ( .A(n409), .Y(n383) );
  CLKBUFX6 U308 ( .A(n416), .Y(n384) );
  NAND2X4 U309 ( .A(n382), .B(n482), .Y(n378) );
  XNOR2X4 U310 ( .A(a[2]), .B(a[1]), .Y(n380) );
  OAI32XL U311 ( .A0(n388), .A1(n386), .A2(n385), .B0(n388), .B1(n422), .Y(
        n117) );
  ADDFX2 U312 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFX1 U313 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFX1 U314 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  CMPR32X2 U315 ( .A(n191), .B(n169), .C(n180), .CO(n113), .S(n114) );
  ADDFXL U316 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  XOR2XL U317 ( .A(b[2]), .B(n396), .Y(n435) );
  CLKINVX3 U318 ( .A(n386), .Y(n399) );
  XOR2XL U319 ( .A(b[8]), .B(n397), .Y(n430) );
  XOR2XL U320 ( .A(b[9]), .B(n397), .Y(n431) );
  ADDFX1 U321 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  OAI22XL U322 ( .A0(n462), .A1(n379), .B0(n384), .B1(n463), .Y(n144) );
  OAI22XL U323 ( .A0(n425), .A1(n405), .B0(n426), .B1(n398), .Y(n191) );
  XOR2X1 U324 ( .A(b[3]), .B(n390), .Y(n464) );
  OAI22X1 U325 ( .A0(n461), .A1(n379), .B0(n384), .B1(n462), .Y(n145) );
  INVX3 U326 ( .A(a[11]), .Y(n388) );
  XNOR2X1 U327 ( .A(a[4]), .B(a[3]), .Y(n411) );
  OAI22X1 U328 ( .A0(n433), .A1(n381), .B0(n380), .B1(n434), .Y(n181) );
  ADDHXL U329 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFHX1 U330 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX1 U331 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFX1 U332 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  INVX1 U333 ( .A(n65), .Y(n392) );
  ADDFX1 U334 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  AO21XL U335 ( .A0(n422), .A1(n385), .B0(n420), .Y(n123) );
  CMPR42X2 U336 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  AO21XL U337 ( .A0(n381), .A1(n380), .B0(n442), .Y(n170) );
  XOR2XL U338 ( .A(b[11]), .B(n396), .Y(n442) );
  OAI2BB1XL U339 ( .A0N(n398), .A1N(n405), .B0(n406), .Y(n400) );
  OA22XL U340 ( .A0(n402), .A1(n381), .B0(n380), .B1(n404), .Y(n401) );
  XOR2XL U341 ( .A(b[11]), .B(n395), .Y(n412) );
  XOR2XL U342 ( .A(b[11]), .B(n393), .Y(n414) );
  XOR2XL U343 ( .A(b[11]), .B(n390), .Y(n417) );
  XOR2XL U344 ( .A(b[11]), .B(n388), .Y(n420) );
  ADDHX1 U345 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  OAI32XL U346 ( .A0(n390), .A1(n386), .A2(n384), .B0(n390), .B1(n379), .Y(
        n118) );
  XNOR2XL U347 ( .A(a[6]), .B(a[5]), .Y(n409) );
  XOR2XL U348 ( .A(b[2]), .B(n388), .Y(n473) );
  XOR2XL U349 ( .A(b[2]), .B(n390), .Y(n463) );
  XOR2XL U350 ( .A(b[5]), .B(n397), .Y(n427) );
  XOR2XL U351 ( .A(b[2]), .B(n395), .Y(n445) );
  XOR2XL U352 ( .A(b[2]), .B(n393), .Y(n455) );
  XOR2XL U353 ( .A(b[3]), .B(n393), .Y(n456) );
  XOR2XL U354 ( .A(b[4]), .B(n393), .Y(n457) );
  XOR2XL U355 ( .A(b[3]), .B(n396), .Y(n436) );
  XOR2XL U356 ( .A(b[3]), .B(n395), .Y(n446) );
  XOR2XL U357 ( .A(b[2]), .B(n397), .Y(n424) );
  XOR2XL U358 ( .A(b[3]), .B(n388), .Y(n474) );
  XOR2XL U359 ( .A(b[4]), .B(n395), .Y(n447) );
  XOR2XL U360 ( .A(b[4]), .B(n388), .Y(n475) );
  XOR2XL U361 ( .A(b[4]), .B(n390), .Y(n465) );
  XOR2XL U362 ( .A(b[8]), .B(n396), .Y(n441) );
  XOR2XL U363 ( .A(b[4]), .B(n396), .Y(n437) );
  XOR2XL U364 ( .A(b[5]), .B(n395), .Y(n448) );
  XOR2XL U365 ( .A(b[7]), .B(n396), .Y(n440) );
  XOR2XL U366 ( .A(b[9]), .B(n396), .Y(n402) );
  XOR2XL U367 ( .A(b[5]), .B(n396), .Y(n438) );
  XOR2XL U368 ( .A(b[6]), .B(n396), .Y(n439) );
  XOR2XL U369 ( .A(b[5]), .B(n390), .Y(n466) );
  XOR2XL U370 ( .A(b[5]), .B(n393), .Y(n458) );
  XOR2XL U371 ( .A(b[5]), .B(n388), .Y(n476) );
  XOR2XL U372 ( .A(b[10]), .B(n396), .Y(n404) );
  XOR2XL U373 ( .A(b[6]), .B(n393), .Y(n407) );
  XOR2XL U374 ( .A(b[8]), .B(n395), .Y(n451) );
  XOR2XL U375 ( .A(b[6]), .B(n395), .Y(n449) );
  XOR2XL U376 ( .A(b[6]), .B(n388), .Y(n477) );
  XOR2XL U377 ( .A(b[7]), .B(n393), .Y(n410) );
  XOR2XL U378 ( .A(b[9]), .B(n395), .Y(n452) );
  XOR2XL U379 ( .A(b[7]), .B(n390), .Y(n468) );
  XOR2XL U380 ( .A(b[10]), .B(n395), .Y(n413) );
  XOR2XL U381 ( .A(b[7]), .B(n395), .Y(n450) );
  XOR2XL U382 ( .A(b[6]), .B(n390), .Y(n467) );
  XOR2XL U383 ( .A(b[7]), .B(n388), .Y(n478) );
  XOR2XL U384 ( .A(b[8]), .B(n393), .Y(n459) );
  XOR2XL U385 ( .A(b[9]), .B(n393), .Y(n460) );
  XOR2XL U386 ( .A(b[8]), .B(n390), .Y(n469) );
  XOR2XL U387 ( .A(b[8]), .B(n388), .Y(n479) );
  XOR2XL U388 ( .A(b[10]), .B(n393), .Y(n415) );
  XOR2XL U389 ( .A(b[9]), .B(n390), .Y(n470) );
  XOR2XL U390 ( .A(b[9]), .B(n388), .Y(n480) );
  XOR2XL U391 ( .A(b[10]), .B(n390), .Y(n418) );
  XOR2XL U392 ( .A(b[10]), .B(n388), .Y(n421) );
  CLKINVX1 U393 ( .A(n25), .Y(n387) );
  ADDFXL U394 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  CLKINVX1 U395 ( .A(n51), .Y(n394) );
  CLKINVX1 U396 ( .A(n39), .Y(n391) );
  CLKINVX1 U397 ( .A(n31), .Y(n389) );
  INVX3 U398 ( .A(a[1]), .Y(n397) );
  INVX3 U399 ( .A(a[3]), .Y(n396) );
  CLKBUFX3 U400 ( .A(n403), .Y(n381) );
  NAND2X1 U401 ( .A(n380), .B(n481), .Y(n403) );
  XOR2X1 U402 ( .A(a[3]), .B(a[2]), .Y(n481) );
  XOR2X1 U403 ( .A(b[1]), .B(n396), .Y(n434) );
  XOR2X1 U404 ( .A(b[1]), .B(n395), .Y(n444) );
  OAI32X1 U405 ( .A0(n395), .A1(n386), .A2(n382), .B0(n395), .B1(n378), .Y(
        n120) );
  OAI22XL U406 ( .A0(n443), .A1(n378), .B0(n382), .B1(n444), .Y(n168) );
  INVX3 U407 ( .A(a[5]), .Y(n395) );
  NAND2X2 U408 ( .A(a[1]), .B(n398), .Y(n405) );
  INVX3 U409 ( .A(a[7]), .Y(n393) );
  INVX3 U410 ( .A(a[9]), .Y(n390) );
  XNOR2X1 U411 ( .A(a[8]), .B(a[7]), .Y(n416) );
  XNOR2X1 U412 ( .A(a[10]), .B(a[9]), .Y(n419) );
  CLKBUFX3 U413 ( .A(b[0]), .Y(n386) );
  CLKINVX1 U414 ( .A(n3), .Y(product[23]) );
  NOR2X1 U415 ( .A(n398), .B(n399), .Y(product[0]) );
  XOR2X1 U416 ( .A(n400), .B(n401), .Y(n74) );
  NAND2BX1 U417 ( .AN(n400), .B(n401), .Y(n73) );
  OAI22XL U418 ( .A0(n407), .A1(n408), .B0(n383), .B1(n410), .Y(n65) );
  OAI22XL U419 ( .A0(n382), .A1(n412), .B0(n413), .B1(n378), .Y(n51) );
  OAI22XL U420 ( .A0(n383), .A1(n414), .B0(n415), .B1(n408), .Y(n39) );
  OAI22XL U421 ( .A0(n384), .A1(n417), .B0(n418), .B1(n379), .Y(n31) );
  OAI22XL U422 ( .A0(n385), .A1(n420), .B0(n421), .B1(n422), .Y(n25) );
  OAI22XL U423 ( .A0(n423), .A1(n405), .B0(n424), .B1(n398), .Y(n193) );
  XOR2X1 U424 ( .A(b[1]), .B(n397), .Y(n423) );
  XOR2X1 U425 ( .A(b[3]), .B(n397), .Y(n425) );
  OAI22XL U426 ( .A0(n427), .A1(n405), .B0(n428), .B1(n398), .Y(n189) );
  OAI22XL U427 ( .A0(n428), .A1(n405), .B0(n429), .B1(n398), .Y(n188) );
  OAI22XL U428 ( .A0(n429), .A1(n405), .B0(n430), .B1(n398), .Y(n187) );
  OAI22XL U429 ( .A0(n430), .A1(n405), .B0(n431), .B1(n398), .Y(n186) );
  XOR2X1 U430 ( .A(b[11]), .B(a[1]), .Y(n406) );
  NOR2X1 U431 ( .A(n380), .B(n399), .Y(n182) );
  XOR2X1 U432 ( .A(n396), .B(n386), .Y(n433) );
  OAI22XL U433 ( .A0(n434), .A1(n381), .B0(n380), .B1(n435), .Y(n180) );
  OAI22XL U434 ( .A0(n435), .A1(n381), .B0(n380), .B1(n436), .Y(n179) );
  OAI22XL U435 ( .A0(n436), .A1(n381), .B0(n380), .B1(n437), .Y(n178) );
  OAI22XL U436 ( .A0(n437), .A1(n381), .B0(n380), .B1(n438), .Y(n177) );
  OAI22XL U437 ( .A0(n438), .A1(n381), .B0(n380), .B1(n439), .Y(n176) );
  OAI22XL U438 ( .A0(n439), .A1(n381), .B0(n380), .B1(n440), .Y(n175) );
  OAI22XL U439 ( .A0(n440), .A1(n381), .B0(n380), .B1(n441), .Y(n174) );
  OAI22XL U440 ( .A0(n441), .A1(n381), .B0(n380), .B1(n402), .Y(n173) );
  OAI22XL U441 ( .A0(n404), .A1(n381), .B0(n380), .B1(n442), .Y(n171) );
  NOR2X1 U442 ( .A(n382), .B(n399), .Y(n169) );
  XOR2X1 U443 ( .A(n395), .B(n386), .Y(n443) );
  OAI22XL U444 ( .A0(n444), .A1(n378), .B0(n382), .B1(n445), .Y(n167) );
  OAI22XL U445 ( .A0(n445), .A1(n378), .B0(n382), .B1(n446), .Y(n166) );
  OAI22XL U446 ( .A0(n446), .A1(n378), .B0(n382), .B1(n447), .Y(n165) );
  OAI22XL U447 ( .A0(n447), .A1(n378), .B0(n382), .B1(n448), .Y(n164) );
  OAI22XL U448 ( .A0(n448), .A1(n378), .B0(n382), .B1(n449), .Y(n163) );
  OAI22XL U449 ( .A0(n449), .A1(n378), .B0(n382), .B1(n450), .Y(n162) );
  OAI22XL U450 ( .A0(n450), .A1(n378), .B0(n382), .B1(n451), .Y(n161) );
  OAI22XL U451 ( .A0(n451), .A1(n378), .B0(n382), .B1(n452), .Y(n160) );
  OAI22XL U452 ( .A0(n452), .A1(n378), .B0(n382), .B1(n413), .Y(n159) );
  AO21X1 U453 ( .A0(n378), .A1(n382), .B0(n412), .Y(n158) );
  NOR2X1 U454 ( .A(n383), .B(n399), .Y(n157) );
  OAI22XL U455 ( .A0(n453), .A1(n408), .B0(n383), .B1(n454), .Y(n156) );
  XOR2X1 U456 ( .A(n393), .B(n386), .Y(n453) );
  OAI22XL U457 ( .A0(n454), .A1(n408), .B0(n383), .B1(n455), .Y(n155) );
  XOR2X1 U458 ( .A(b[1]), .B(n393), .Y(n454) );
  OAI22XL U459 ( .A0(n455), .A1(n408), .B0(n383), .B1(n456), .Y(n154) );
  OAI22XL U460 ( .A0(n456), .A1(n408), .B0(n383), .B1(n457), .Y(n153) );
  OAI22XL U461 ( .A0(n457), .A1(n408), .B0(n383), .B1(n458), .Y(n152) );
  OAI22XL U462 ( .A0(n458), .A1(n408), .B0(n383), .B1(n407), .Y(n151) );
  OAI22XL U463 ( .A0(n410), .A1(n408), .B0(n383), .B1(n459), .Y(n150) );
  OAI22XL U464 ( .A0(n459), .A1(n408), .B0(n383), .B1(n460), .Y(n149) );
  OAI22XL U465 ( .A0(n460), .A1(n408), .B0(n383), .B1(n415), .Y(n148) );
  AO21X1 U466 ( .A0(n408), .A1(n383), .B0(n414), .Y(n147) );
  NOR2X1 U467 ( .A(n384), .B(n399), .Y(n146) );
  XOR2X1 U468 ( .A(n390), .B(n386), .Y(n461) );
  XOR2X1 U469 ( .A(b[1]), .B(n390), .Y(n462) );
  OAI22XL U470 ( .A0(n463), .A1(n379), .B0(n384), .B1(n464), .Y(n143) );
  OAI22XL U471 ( .A0(n464), .A1(n379), .B0(n384), .B1(n465), .Y(n142) );
  OAI22XL U472 ( .A0(n465), .A1(n379), .B0(n384), .B1(n466), .Y(n141) );
  OAI22XL U473 ( .A0(n466), .A1(n379), .B0(n384), .B1(n467), .Y(n140) );
  OAI22XL U474 ( .A0(n467), .A1(n379), .B0(n384), .B1(n468), .Y(n139) );
  OAI22XL U475 ( .A0(n468), .A1(n379), .B0(n384), .B1(n469), .Y(n138) );
  OAI22XL U476 ( .A0(n469), .A1(n379), .B0(n384), .B1(n470), .Y(n137) );
  OAI22XL U477 ( .A0(n470), .A1(n379), .B0(n384), .B1(n418), .Y(n136) );
  AO21X1 U478 ( .A0(n379), .A1(n384), .B0(n417), .Y(n135) );
  XOR2X1 U479 ( .A(n388), .B(n386), .Y(n471) );
  XOR2X1 U480 ( .A(b[1]), .B(n388), .Y(n472) );
  OAI22XL U481 ( .A0(n473), .A1(n422), .B0(n385), .B1(n474), .Y(n131) );
  OAI22XL U482 ( .A0(n474), .A1(n422), .B0(n385), .B1(n475), .Y(n130) );
  OAI22XL U483 ( .A0(n475), .A1(n422), .B0(n385), .B1(n476), .Y(n129) );
  OAI22XL U484 ( .A0(n476), .A1(n422), .B0(n385), .B1(n477), .Y(n128) );
  OAI22XL U485 ( .A0(n477), .A1(n422), .B0(n385), .B1(n478), .Y(n127) );
  OAI22XL U486 ( .A0(n478), .A1(n422), .B0(n385), .B1(n479), .Y(n126) );
  OAI22XL U487 ( .A0(n479), .A1(n422), .B0(n385), .B1(n480), .Y(n125) );
  OAI22XL U488 ( .A0(n480), .A1(n422), .B0(n385), .B1(n421), .Y(n124) );
  OAI21XL U489 ( .A0(n386), .A1(n397), .B0(n405), .Y(n122) );
  OAI32X1 U490 ( .A0(n396), .A1(n386), .A2(n380), .B0(n396), .B1(n381), .Y(
        n121) );
  XOR2X1 U491 ( .A(a[5]), .B(a[4]), .Y(n482) );
  OAI32X1 U492 ( .A0(n393), .A1(n386), .A2(n383), .B0(n393), .B1(n408), .Y(
        n119) );
  XOR2X1 U493 ( .A(a[7]), .B(a[6]), .Y(n483) );
  XOR2X1 U494 ( .A(a[9]), .B(a[8]), .Y(n484) );
  XOR2X1 U495 ( .A(a[11]), .B(a[10]), .Y(n485) );
endmodule


module geofence_DW01_sub_34 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61;

  ADDFHX4 U2_24 ( .A(A[24]), .B(n17), .CI(\carry[24] ), .S(DIFF[24]) );
  OAI22X1 U1 ( .A0(n60), .A1(n16), .B0(B[1]), .B1(n61), .Y(n58) );
  CLKAND2X6 U2 ( .A(n60), .B(n16), .Y(n61) );
  AND2X2 U3 ( .A(n56), .B(n15), .Y(n57) );
  NOR2X1 U4 ( .A(A[4]), .B(n54), .Y(n55) );
  NOR2X1 U5 ( .A(A[6]), .B(n50), .Y(n51) );
  NOR2X1 U6 ( .A(A[8]), .B(n46), .Y(n47) );
  NOR2X1 U7 ( .A(A[10]), .B(n42), .Y(n43) );
  NOR2X2 U8 ( .A(A[18]), .B(n28), .Y(n29) );
  NOR2X4 U9 ( .A(A[20]), .B(n24), .Y(n25) );
  CLKINVX1 U10 ( .A(B[24]), .Y(n17) );
  AOI2BB2X2 U11 ( .B0(n54), .B1(A[4]), .A0N(B[4]), .A1N(n55), .Y(n52) );
  AOI2BB2X4 U12 ( .B0(n39), .B1(A[12]), .A0N(B[12]), .A1N(n40), .Y(n38) );
  NOR2X4 U13 ( .A(A[12]), .B(n39), .Y(n40) );
  OAI2BB2X2 U14 ( .B0(n38), .B1(n10), .A0N(n1), .A1N(n2), .Y(n36) );
  NAND2X4 U15 ( .A(n38), .B(n10), .Y(n2) );
  AOI2BB2X4 U16 ( .B0(n36), .B1(A[14]), .A0N(B[14]), .A1N(n37), .Y(n34) );
  NOR2X2 U17 ( .A(A[14]), .B(n36), .Y(n37) );
  AOI2BB2X4 U18 ( .B0(n50), .B1(A[6]), .A0N(B[6]), .A1N(n51), .Y(n48) );
  NAND2X4 U19 ( .A(n41), .B(n11), .Y(n4) );
  CLKINVX1 U20 ( .A(B[13]), .Y(n1) );
  CLKINVX1 U21 ( .A(B[11]), .Y(n3) );
  INVX1 U22 ( .A(A[21]), .Y(n6) );
  INVX1 U23 ( .A(A[19]), .Y(n7) );
  AND2X4 U24 ( .A(n18), .B(n5), .Y(n19) );
  OAI2BB2X2 U25 ( .B0(n41), .B1(n11), .A0N(n3), .A1N(n4), .Y(n39) );
  INVX3 U26 ( .A(A[24]), .Y(n5) );
  INVX3 U27 ( .A(A[1]), .Y(n16) );
  CLKINVX1 U28 ( .A(A[13]), .Y(n10) );
  CLKINVX1 U29 ( .A(A[5]), .Y(n14) );
  CLKINVX1 U30 ( .A(A[11]), .Y(n11) );
  CLKINVX1 U31 ( .A(A[7]), .Y(n13) );
  CLKINVX1 U32 ( .A(A[15]), .Y(n9) );
  CLKINVX1 U33 ( .A(A[9]), .Y(n12) );
  CLKINVX1 U34 ( .A(A[17]), .Y(n8) );
  OAI22X1 U35 ( .A0(n56), .A1(n15), .B0(B[3]), .B1(n57), .Y(n54) );
  NOR2X1 U36 ( .A(A[2]), .B(n58), .Y(n59) );
  CLKINVX1 U37 ( .A(A[3]), .Y(n15) );
  AND2X8 U38 ( .A(n44), .B(n12), .Y(n45) );
  CLKAND2X12 U39 ( .A(n30), .B(n8), .Y(n31) );
  CLKAND2X12 U40 ( .A(n26), .B(n7), .Y(n27) );
  AOI2BB2X2 U41 ( .B0(n32), .B1(A[16]), .A0N(B[16]), .A1N(n33), .Y(n30) );
  NOR2X2 U42 ( .A(A[16]), .B(n32), .Y(n33) );
  AOI2BB2X4 U43 ( .B0(n20), .B1(A[22]), .A0N(B[22]), .A1N(n21), .Y(n18) );
  NOR2X4 U44 ( .A(A[22]), .B(n20), .Y(n21) );
  AOI2BB2X4 U45 ( .B0(n28), .B1(A[18]), .A0N(B[18]), .A1N(n29), .Y(n26) );
  AOI2BB2X4 U46 ( .B0(n46), .B1(A[8]), .A0N(B[8]), .A1N(n47), .Y(n44) );
  OAI22X2 U47 ( .A0(n18), .A1(n5), .B0(B[23]), .B1(n19), .Y(\carry[24] ) );
  OAI22X4 U48 ( .A0(n22), .A1(n6), .B0(B[21]), .B1(n23), .Y(n20) );
  CLKAND2X12 U49 ( .A(n22), .B(n6), .Y(n23) );
  OAI22X4 U50 ( .A0(n30), .A1(n8), .B0(B[17]), .B1(n31), .Y(n28) );
  OAI22X4 U51 ( .A0(n48), .A1(n13), .B0(B[7]), .B1(n49), .Y(n46) );
  CLKAND2X8 U52 ( .A(n48), .B(n13), .Y(n49) );
  AOI2BB2X4 U53 ( .B0(n24), .B1(A[20]), .A0N(B[20]), .A1N(n25), .Y(n22) );
  AOI2BB2X4 U54 ( .B0(n42), .B1(A[10]), .A0N(B[10]), .A1N(n43), .Y(n41) );
  OAI22X4 U55 ( .A0(n26), .A1(n7), .B0(B[19]), .B1(n27), .Y(n24) );
  OAI22X4 U56 ( .A0(n34), .A1(n9), .B0(B[15]), .B1(n35), .Y(n32) );
  CLKAND2X8 U57 ( .A(n34), .B(n9), .Y(n35) );
  OAI22X4 U58 ( .A0(n44), .A1(n12), .B0(B[9]), .B1(n45), .Y(n42) );
  OAI22X4 U59 ( .A0(n52), .A1(n14), .B0(B[5]), .B1(n53), .Y(n50) );
  CLKAND2X8 U60 ( .A(n52), .B(n14), .Y(n53) );
  AOI2BB2X1 U61 ( .B0(n58), .B1(A[2]), .A0N(B[2]), .A1N(n59), .Y(n56) );
  NOR2BX1 U62 ( .AN(B[0]), .B(A[0]), .Y(n60) );
endmodule


module geofence_DW_mult_tc_7 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485;

  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n391), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n393), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n396), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n394), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDFX2 U281 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFHX1 U282 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  OAI22X1 U283 ( .A0(n428), .A1(n407), .B0(n429), .B1(n400), .Y(n188) );
  XOR2X2 U284 ( .A(b[7]), .B(n399), .Y(n429) );
  OAI32X4 U285 ( .A0(n397), .A1(n388), .A2(n385), .B0(n397), .B1(n380), .Y(
        n120) );
  INVX12 U286 ( .A(a[5]), .Y(n397) );
  OAI22X1 U287 ( .A0(n431), .A1(n407), .B0(n432), .B1(n400), .Y(n185) );
  XOR2X2 U288 ( .A(b[10]), .B(n399), .Y(n432) );
  CLKXOR2X1 U289 ( .A(b[9]), .B(n399), .Y(n431) );
  ADDFHX2 U290 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  BUFX12 U291 ( .A(n405), .Y(n384) );
  NAND2X2 U292 ( .A(n379), .B(n481), .Y(n405) );
  OAI22X1 U293 ( .A0(n443), .A1(n380), .B0(n385), .B1(n444), .Y(n168) );
  NAND2X4 U294 ( .A(n387), .B(n484), .Y(n382) );
  BUFX8 U295 ( .A(n417), .Y(n387) );
  CMPR32X2 U296 ( .A(n25), .B(n123), .C(n4), .CO(n3), .S(product[22]) );
  ADDHXL U297 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  NOR2X1 U298 ( .A(n385), .B(n401), .Y(n169) );
  OAI22X1 U299 ( .A0(n453), .A1(n378), .B0(n386), .B1(n454), .Y(n156) );
  ADDFHX2 U300 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  XOR2X1 U301 ( .A(b[4]), .B(n399), .Y(n426) );
  XOR2X1 U302 ( .A(b[5]), .B(n399), .Y(n427) );
  NOR2X1 U303 ( .A(n386), .B(n401), .Y(n157) );
  XOR2X1 U304 ( .A(b[6]), .B(n399), .Y(n428) );
  CMPR42X1 U305 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFX2 U306 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  INVX3 U307 ( .A(a[0]), .Y(n400) );
  ADDFXL U308 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  CLKINVX1 U309 ( .A(n51), .Y(n396) );
  ADDFXL U310 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  INVX3 U311 ( .A(a[9]), .Y(n392) );
  CLKBUFX3 U312 ( .A(n390), .Y(n383) );
  ADDFXL U313 ( .A(n27), .B(n389), .CI(n5), .CO(n4), .S(product[21]) );
  NAND2X8 U314 ( .A(n386), .B(n483), .Y(n378) );
  XNOR2X4 U315 ( .A(a[2]), .B(a[1]), .Y(n379) );
  NAND2X4 U316 ( .A(n385), .B(n482), .Y(n380) );
  NAND2X2 U317 ( .A(n420), .B(n485), .Y(n381) );
  XNOR2X4 U318 ( .A(a[10]), .B(a[9]), .Y(n420) );
  XOR2X1 U319 ( .A(b[2]), .B(n398), .Y(n435) );
  ADDHX1 U320 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  ADDHX1 U321 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  XOR2X1 U322 ( .A(n397), .B(n388), .Y(n443) );
  ADDHX1 U323 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  CMPR42X2 U324 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  OAI22X1 U325 ( .A0(n427), .A1(n407), .B0(n428), .B1(n400), .Y(n189) );
  OAI22X1 U326 ( .A0(n425), .A1(n407), .B0(n426), .B1(n400), .Y(n191) );
  XOR2X2 U327 ( .A(b[3]), .B(n399), .Y(n425) );
  OAI22X1 U328 ( .A0(n444), .A1(n380), .B0(n385), .B1(n445), .Y(n167) );
  BUFX12 U329 ( .A(n412), .Y(n385) );
  ADDFHX2 U330 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  XOR2X4 U331 ( .A(b[8]), .B(n399), .Y(n430) );
  OAI32XL U332 ( .A0(n395), .A1(n388), .A2(n386), .B0(n395), .B1(n378), .Y(
        n119) );
  OAI22X1 U333 ( .A0(n454), .A1(n378), .B0(n386), .B1(n455), .Y(n155) );
  OAI22X1 U334 ( .A0(n455), .A1(n378), .B0(n386), .B1(n456), .Y(n154) );
  BUFX12 U335 ( .A(n410), .Y(n386) );
  ADDFX1 U336 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  INVX1 U337 ( .A(a[11]), .Y(n390) );
  XOR2X2 U338 ( .A(b[2]), .B(n399), .Y(n424) );
  XOR2X1 U339 ( .A(b[1]), .B(n399), .Y(n423) );
  OAI22X1 U340 ( .A0(n388), .A1(n407), .B0(n423), .B1(n400), .Y(n194) );
  CLKINVX2 U341 ( .A(n388), .Y(n401) );
  OAI22XL U342 ( .A0(n434), .A1(n384), .B0(n379), .B1(n435), .Y(n180) );
  ADDFX1 U343 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  XOR2X1 U344 ( .A(b[1]), .B(n392), .Y(n462) );
  XOR2X1 U345 ( .A(b[1]), .B(n397), .Y(n444) );
  XOR2X1 U346 ( .A(b[1]), .B(n398), .Y(n434) );
  INVX1 U347 ( .A(n65), .Y(n394) );
  ADDFHX2 U348 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  XOR2XL U349 ( .A(b[11]), .B(n398), .Y(n442) );
  OAI2BB1XL U350 ( .A0N(n400), .A1N(n407), .B0(n408), .Y(n402) );
  OA22XL U351 ( .A0(n404), .A1(n384), .B0(n379), .B1(n406), .Y(n403) );
  INVX1 U352 ( .A(n39), .Y(n393) );
  XOR2XL U353 ( .A(b[11]), .B(n397), .Y(n413) );
  AO21XL U354 ( .A0(n378), .A1(n386), .B0(n415), .Y(n147) );
  INVX1 U355 ( .A(n31), .Y(n391) );
  XOR2XL U356 ( .A(b[11]), .B(n395), .Y(n415) );
  XOR2XL U357 ( .A(b[11]), .B(n392), .Y(n418) );
  XOR2XL U358 ( .A(b[11]), .B(n383), .Y(n421) );
  ADDHX1 U359 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  OAI22X2 U360 ( .A0(n433), .A1(n384), .B0(n379), .B1(n434), .Y(n181) );
  XNOR2XL U361 ( .A(a[8]), .B(a[7]), .Y(n417) );
  XOR2XL U362 ( .A(b[3]), .B(n398), .Y(n436) );
  XOR2XL U363 ( .A(b[2]), .B(n397), .Y(n445) );
  ADDHX1 U364 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  OAI32XL U365 ( .A0(n383), .A1(n388), .A2(n420), .B0(n383), .B1(n381), .Y(
        n117) );
  XOR2XL U366 ( .A(n383), .B(n388), .Y(n471) );
  XOR2XL U367 ( .A(b[2]), .B(n395), .Y(n455) );
  XOR2XL U368 ( .A(b[3]), .B(n397), .Y(n446) );
  XOR2XL U369 ( .A(b[3]), .B(n395), .Y(n456) );
  XOR2XL U370 ( .A(b[4]), .B(n397), .Y(n447) );
  XOR2XL U371 ( .A(b[4]), .B(n398), .Y(n437) );
  XOR2XL U372 ( .A(b[2]), .B(n392), .Y(n463) );
  XOR2XL U373 ( .A(b[3]), .B(n392), .Y(n464) );
  XOR2XL U374 ( .A(b[4]), .B(n395), .Y(n457) );
  XOR2XL U375 ( .A(b[5]), .B(n397), .Y(n448) );
  XOR2XL U376 ( .A(b[2]), .B(n383), .Y(n473) );
  XOR2XL U377 ( .A(b[5]), .B(n398), .Y(n438) );
  XOR2XL U378 ( .A(b[6]), .B(n398), .Y(n439) );
  XOR2XL U379 ( .A(b[7]), .B(n398), .Y(n440) );
  XOR2XL U380 ( .A(b[5]), .B(n395), .Y(n458) );
  XOR2XL U381 ( .A(b[3]), .B(n383), .Y(n474) );
  XOR2XL U382 ( .A(b[8]), .B(n398), .Y(n441) );
  XOR2XL U383 ( .A(b[4]), .B(n392), .Y(n465) );
  XOR2XL U384 ( .A(b[9]), .B(n398), .Y(n404) );
  XOR2XL U385 ( .A(b[4]), .B(n383), .Y(n475) );
  XOR2XL U386 ( .A(b[5]), .B(n392), .Y(n466) );
  XOR2XL U387 ( .A(b[6]), .B(n397), .Y(n449) );
  XOR2XL U388 ( .A(b[6]), .B(n395), .Y(n409) );
  XOR2XL U389 ( .A(b[5]), .B(n383), .Y(n476) );
  XOR2XL U390 ( .A(b[7]), .B(n397), .Y(n450) );
  XOR2XL U391 ( .A(b[10]), .B(n398), .Y(n406) );
  XOR2XL U392 ( .A(b[7]), .B(n395), .Y(n411) );
  XOR2XL U393 ( .A(b[8]), .B(n397), .Y(n451) );
  XOR2XL U394 ( .A(b[6]), .B(n392), .Y(n467) );
  XOR2XL U395 ( .A(b[7]), .B(n392), .Y(n468) );
  XOR2XL U396 ( .A(b[9]), .B(n397), .Y(n452) );
  XOR2XL U397 ( .A(b[6]), .B(n383), .Y(n477) );
  XOR2XL U398 ( .A(b[10]), .B(n397), .Y(n414) );
  XOR2XL U399 ( .A(b[8]), .B(n395), .Y(n459) );
  XOR2XL U400 ( .A(b[9]), .B(n395), .Y(n460) );
  XOR2XL U401 ( .A(b[7]), .B(n383), .Y(n478) );
  XOR2XL U402 ( .A(b[8]), .B(n392), .Y(n469) );
  XOR2XL U403 ( .A(b[9]), .B(n392), .Y(n470) );
  XOR2XL U404 ( .A(b[8]), .B(n383), .Y(n479) );
  XOR2XL U405 ( .A(b[10]), .B(n395), .Y(n416) );
  XOR2XL U406 ( .A(b[10]), .B(n392), .Y(n419) );
  XOR2XL U407 ( .A(b[9]), .B(n383), .Y(n480) );
  XOR2XL U408 ( .A(b[10]), .B(n383), .Y(n422) );
  ADDFXL U409 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U410 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U411 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  CLKINVX1 U412 ( .A(n25), .Y(n389) );
  ADDFX2 U413 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  INVX3 U414 ( .A(a[1]), .Y(n399) );
  INVX3 U415 ( .A(a[7]), .Y(n395) );
  INVX3 U416 ( .A(a[3]), .Y(n398) );
  NAND2X2 U417 ( .A(a[1]), .B(n400), .Y(n407) );
  XOR2X1 U418 ( .A(a[3]), .B(a[2]), .Y(n481) );
  XNOR2X1 U419 ( .A(a[4]), .B(a[3]), .Y(n412) );
  OAI22XL U420 ( .A0(n424), .A1(n407), .B0(n425), .B1(n400), .Y(n192) );
  XNOR2X1 U421 ( .A(a[6]), .B(a[5]), .Y(n410) );
  CLKBUFX3 U422 ( .A(b[0]), .Y(n388) );
  CLKINVX1 U423 ( .A(n3), .Y(product[23]) );
  NOR2X1 U424 ( .A(n400), .B(n401), .Y(product[0]) );
  XOR2X1 U425 ( .A(n402), .B(n403), .Y(n74) );
  NAND2BX1 U426 ( .AN(n402), .B(n403), .Y(n73) );
  OAI22XL U427 ( .A0(n409), .A1(n378), .B0(n386), .B1(n411), .Y(n65) );
  OAI22XL U428 ( .A0(n385), .A1(n413), .B0(n414), .B1(n380), .Y(n51) );
  OAI22XL U429 ( .A0(n386), .A1(n415), .B0(n416), .B1(n378), .Y(n39) );
  OAI22XL U430 ( .A0(n387), .A1(n418), .B0(n419), .B1(n382), .Y(n31) );
  OAI22XL U431 ( .A0(n420), .A1(n421), .B0(n422), .B1(n381), .Y(n25) );
  OAI22XL U432 ( .A0(n423), .A1(n407), .B0(n424), .B1(n400), .Y(n193) );
  OAI22XL U433 ( .A0(n426), .A1(n407), .B0(n427), .B1(n400), .Y(n190) );
  OAI22XL U434 ( .A0(n429), .A1(n407), .B0(n430), .B1(n400), .Y(n187) );
  OAI22XL U435 ( .A0(n430), .A1(n407), .B0(n431), .B1(n400), .Y(n186) );
  OAI2BB2XL U436 ( .B0(n432), .B1(n407), .A0N(n408), .A1N(a[0]), .Y(n184) );
  XOR2X1 U437 ( .A(b[11]), .B(a[1]), .Y(n408) );
  NOR2X1 U438 ( .A(n379), .B(n401), .Y(n182) );
  XOR2X1 U439 ( .A(n398), .B(n388), .Y(n433) );
  OAI22XL U440 ( .A0(n435), .A1(n384), .B0(n379), .B1(n436), .Y(n179) );
  OAI22XL U441 ( .A0(n436), .A1(n384), .B0(n379), .B1(n437), .Y(n178) );
  OAI22XL U442 ( .A0(n437), .A1(n384), .B0(n379), .B1(n438), .Y(n177) );
  OAI22XL U443 ( .A0(n438), .A1(n384), .B0(n379), .B1(n439), .Y(n176) );
  OAI22XL U444 ( .A0(n439), .A1(n384), .B0(n379), .B1(n440), .Y(n175) );
  OAI22XL U445 ( .A0(n440), .A1(n384), .B0(n379), .B1(n441), .Y(n174) );
  OAI22XL U446 ( .A0(n441), .A1(n384), .B0(n379), .B1(n404), .Y(n173) );
  OAI22XL U447 ( .A0(n406), .A1(n384), .B0(n379), .B1(n442), .Y(n171) );
  AO21X1 U448 ( .A0(n384), .A1(n379), .B0(n442), .Y(n170) );
  OAI22XL U449 ( .A0(n445), .A1(n380), .B0(n385), .B1(n446), .Y(n166) );
  OAI22XL U450 ( .A0(n446), .A1(n380), .B0(n385), .B1(n447), .Y(n165) );
  OAI22XL U451 ( .A0(n447), .A1(n380), .B0(n385), .B1(n448), .Y(n164) );
  OAI22XL U452 ( .A0(n448), .A1(n380), .B0(n385), .B1(n449), .Y(n163) );
  OAI22XL U453 ( .A0(n449), .A1(n380), .B0(n385), .B1(n450), .Y(n162) );
  OAI22XL U454 ( .A0(n450), .A1(n380), .B0(n385), .B1(n451), .Y(n161) );
  OAI22XL U455 ( .A0(n451), .A1(n380), .B0(n385), .B1(n452), .Y(n160) );
  OAI22XL U456 ( .A0(n452), .A1(n380), .B0(n385), .B1(n414), .Y(n159) );
  AO21X1 U457 ( .A0(n380), .A1(n385), .B0(n413), .Y(n158) );
  XOR2X1 U458 ( .A(n395), .B(n388), .Y(n453) );
  XOR2X1 U459 ( .A(b[1]), .B(n395), .Y(n454) );
  OAI22XL U460 ( .A0(n456), .A1(n378), .B0(n386), .B1(n457), .Y(n153) );
  OAI22XL U461 ( .A0(n457), .A1(n378), .B0(n386), .B1(n458), .Y(n152) );
  OAI22XL U462 ( .A0(n458), .A1(n378), .B0(n386), .B1(n409), .Y(n151) );
  OAI22XL U463 ( .A0(n411), .A1(n378), .B0(n386), .B1(n459), .Y(n150) );
  OAI22XL U464 ( .A0(n459), .A1(n378), .B0(n386), .B1(n460), .Y(n149) );
  OAI22XL U465 ( .A0(n460), .A1(n378), .B0(n386), .B1(n416), .Y(n148) );
  NOR2X1 U466 ( .A(n387), .B(n401), .Y(n146) );
  OAI22XL U467 ( .A0(n461), .A1(n382), .B0(n387), .B1(n462), .Y(n145) );
  XOR2X1 U468 ( .A(n392), .B(n388), .Y(n461) );
  OAI22XL U469 ( .A0(n462), .A1(n382), .B0(n387), .B1(n463), .Y(n144) );
  OAI22XL U470 ( .A0(n463), .A1(n382), .B0(n387), .B1(n464), .Y(n143) );
  OAI22XL U471 ( .A0(n464), .A1(n382), .B0(n387), .B1(n465), .Y(n142) );
  OAI22XL U472 ( .A0(n465), .A1(n382), .B0(n387), .B1(n466), .Y(n141) );
  OAI22XL U473 ( .A0(n466), .A1(n382), .B0(n387), .B1(n467), .Y(n140) );
  OAI22XL U474 ( .A0(n467), .A1(n382), .B0(n387), .B1(n468), .Y(n139) );
  OAI22XL U475 ( .A0(n468), .A1(n382), .B0(n387), .B1(n469), .Y(n138) );
  OAI22XL U476 ( .A0(n469), .A1(n382), .B0(n387), .B1(n470), .Y(n137) );
  OAI22XL U477 ( .A0(n470), .A1(n382), .B0(n387), .B1(n419), .Y(n136) );
  AO21X1 U478 ( .A0(n382), .A1(n387), .B0(n418), .Y(n135) );
  NOR2X1 U479 ( .A(n420), .B(n401), .Y(n134) );
  OAI22XL U480 ( .A0(n471), .A1(n381), .B0(n420), .B1(n472), .Y(n133) );
  OAI22XL U481 ( .A0(n472), .A1(n381), .B0(n420), .B1(n473), .Y(n132) );
  XOR2X1 U482 ( .A(b[1]), .B(n383), .Y(n472) );
  OAI22XL U483 ( .A0(n473), .A1(n381), .B0(n420), .B1(n474), .Y(n131) );
  OAI22XL U484 ( .A0(n474), .A1(n381), .B0(n420), .B1(n475), .Y(n130) );
  OAI22XL U485 ( .A0(n475), .A1(n381), .B0(n420), .B1(n476), .Y(n129) );
  OAI22XL U486 ( .A0(n476), .A1(n381), .B0(n420), .B1(n477), .Y(n128) );
  OAI22XL U487 ( .A0(n477), .A1(n381), .B0(n420), .B1(n478), .Y(n127) );
  OAI22XL U488 ( .A0(n478), .A1(n381), .B0(n420), .B1(n479), .Y(n126) );
  OAI22XL U489 ( .A0(n479), .A1(n381), .B0(n420), .B1(n480), .Y(n125) );
  OAI22XL U490 ( .A0(n480), .A1(n381), .B0(n420), .B1(n422), .Y(n124) );
  AO21X1 U491 ( .A0(n381), .A1(n420), .B0(n421), .Y(n123) );
  OAI21XL U492 ( .A0(n388), .A1(n399), .B0(n407), .Y(n122) );
  OAI32X1 U493 ( .A0(n398), .A1(n388), .A2(n379), .B0(n398), .B1(n384), .Y(
        n121) );
  XOR2X1 U494 ( .A(a[5]), .B(a[4]), .Y(n482) );
  XOR2X1 U495 ( .A(a[7]), .B(a[6]), .Y(n483) );
  OAI32X1 U496 ( .A0(n392), .A1(n388), .A2(n387), .B0(n392), .B1(n382), .Y(
        n118) );
  XOR2X1 U497 ( .A(a[9]), .B(a[8]), .Y(n484) );
  XOR2X1 U498 ( .A(a[11]), .B(a[10]), .Y(n485) );
endmodule


module geofence_DW_mult_tc_6 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490;

  ADDFXL U4 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  ADDFXL U5 ( .A(n27), .B(n392), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n394), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n396), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n399), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n397), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U47 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  NAND2X4 U281 ( .A(n388), .B(n489), .Y(n380) );
  XOR2XL U282 ( .A(a[11]), .B(a[10]), .Y(n490) );
  ADDFX2 U283 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  INVX6 U284 ( .A(a[3]), .Y(n401) );
  BUFX4 U285 ( .A(n389), .Y(n378) );
  CLKBUFX2 U286 ( .A(n120), .Y(n379) );
  NAND2X4 U287 ( .A(n385), .B(n486), .Y(n382) );
  BUFX6 U288 ( .A(n408), .Y(n385) );
  OAI22XL U289 ( .A0(n458), .A1(n381), .B0(n387), .B1(n459), .Y(n156) );
  NOR2X1 U290 ( .A(n388), .B(n404), .Y(n146) );
  NOR2XL U291 ( .A(n385), .B(n404), .Y(n182) );
  OAI22X1 U292 ( .A0(n448), .A1(n418), .B0(n386), .B1(n449), .Y(n168) );
  OAI22XL U293 ( .A0(n459), .A1(n381), .B0(n387), .B1(n460), .Y(n155) );
  BUFX8 U294 ( .A(n421), .Y(n388) );
  XOR2X1 U295 ( .A(b[3]), .B(n402), .Y(n430) );
  XOR2X1 U296 ( .A(b[1]), .B(n401), .Y(n439) );
  XOR2X1 U297 ( .A(b[6]), .B(n402), .Y(n433) );
  XOR2X1 U298 ( .A(b[7]), .B(n402), .Y(n434) );
  XOR2X1 U299 ( .A(b[8]), .B(n402), .Y(n435) );
  NOR2X1 U300 ( .A(n390), .B(n404), .Y(n134) );
  INVX3 U301 ( .A(a[0]), .Y(n403) );
  INVX3 U302 ( .A(a[5]), .Y(n400) );
  BUFX8 U303 ( .A(n415), .Y(n386) );
  CLKBUFX3 U304 ( .A(n413), .Y(n387) );
  INVX3 U305 ( .A(a[9]), .Y(n395) );
  CLKBUFX3 U306 ( .A(n393), .Y(n384) );
  BUFX2 U307 ( .A(n427), .Y(n389) );
  OAI32X1 U308 ( .A0(n395), .A1(n391), .A2(n388), .B0(n395), .B1(n380), .Y(
        n118) );
  NAND2X6 U309 ( .A(n387), .B(n488), .Y(n381) );
  CMPR42X1 U310 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDHX1 U311 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  XOR2X1 U312 ( .A(b[10]), .B(n402), .Y(n437) );
  INVX8 U313 ( .A(n383), .Y(n418) );
  ADDHX1 U314 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  OAI22X2 U315 ( .A0(n466), .A1(n380), .B0(n388), .B1(n467), .Y(n145) );
  OAI22X1 U316 ( .A0(n477), .A1(n378), .B0(n390), .B1(n478), .Y(n132) );
  BUFX12 U317 ( .A(n424), .Y(n390) );
  OAI22X4 U318 ( .A0(n438), .A1(n382), .B0(n385), .B1(n439), .Y(n181) );
  OAI22X1 U319 ( .A0(n439), .A1(n382), .B0(n385), .B1(n440), .Y(n180) );
  OAI32XL U320 ( .A0(n401), .A1(n391), .A2(n385), .B0(n401), .B1(n382), .Y(
        n121) );
  AND2X8 U321 ( .A(n386), .B(n487), .Y(n383) );
  NOR2X8 U322 ( .A(n386), .B(n404), .Y(n169) );
  OAI22X1 U323 ( .A0(n449), .A1(n418), .B0(n386), .B1(n450), .Y(n167) );
  ADDFHX2 U324 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  NOR2X2 U325 ( .A(n387), .B(n404), .Y(n157) );
  OAI32XL U326 ( .A0(n398), .A1(n391), .A2(n387), .B0(n398), .B1(n381), .Y(
        n119) );
  INVX2 U327 ( .A(n391), .Y(n404) );
  ADDFHX1 U328 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFX2 U329 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  XOR2XL U330 ( .A(b[2]), .B(n401), .Y(n440) );
  INVX1 U331 ( .A(a[11]), .Y(n393) );
  ADDFX2 U332 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFHX1 U333 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFX2 U334 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  XOR2X1 U335 ( .A(b[1]), .B(n400), .Y(n449) );
  XOR2X1 U336 ( .A(b[5]), .B(n402), .Y(n432) );
  OAI22X1 U337 ( .A0(n391), .A1(n410), .B0(n428), .B1(n403), .Y(n194) );
  NAND2XL U338 ( .A(n390), .B(n490), .Y(n427) );
  INVX1 U339 ( .A(n65), .Y(n397) );
  INVX1 U340 ( .A(n51), .Y(n399) );
  XOR2XL U341 ( .A(b[11]), .B(n401), .Y(n447) );
  OAI2BB1XL U342 ( .A0N(n403), .A1N(n410), .B0(n411), .Y(n405) );
  OA22XL U343 ( .A0(n407), .A1(n382), .B0(n385), .B1(n409), .Y(n406) );
  AO21XL U344 ( .A0(n418), .A1(n386), .B0(n416), .Y(n158) );
  XOR2XL U345 ( .A(b[11]), .B(n400), .Y(n416) );
  INVX1 U346 ( .A(n39), .Y(n396) );
  AO21XL U347 ( .A0(n381), .A1(n387), .B0(n419), .Y(n147) );
  XOR2XL U348 ( .A(b[11]), .B(n398), .Y(n419) );
  INVX1 U349 ( .A(n31), .Y(n394) );
  XOR2XL U350 ( .A(b[11]), .B(n395), .Y(n422) );
  AO21XL U351 ( .A0(n380), .A1(n388), .B0(n422), .Y(n135) );
  XOR2XL U352 ( .A(b[11]), .B(n384), .Y(n425) );
  ADDHX1 U353 ( .A(n168), .B(n379), .CO(n111), .S(n112) );
  OAI32XL U354 ( .A0(n400), .A1(n391), .A2(n386), .B0(n400), .B1(n418), .Y(
        n120) );
  XOR2XL U355 ( .A(n400), .B(n391), .Y(n448) );
  ADDHX1 U356 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  XOR2XL U357 ( .A(b[3]), .B(n401), .Y(n441) );
  XOR2XL U358 ( .A(b[2]), .B(n400), .Y(n450) );
  ADDHX1 U359 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  OAI32XL U360 ( .A0(n384), .A1(n391), .A2(n390), .B0(n384), .B1(n378), .Y(
        n117) );
  XOR2XL U361 ( .A(n384), .B(n391), .Y(n476) );
  XOR2XL U362 ( .A(b[3]), .B(n400), .Y(n451) );
  XOR2XL U363 ( .A(b[3]), .B(n398), .Y(n461) );
  XOR2XL U364 ( .A(b[4]), .B(n401), .Y(n442) );
  XOR2XL U365 ( .A(b[9]), .B(n402), .Y(n436) );
  XOR2XL U366 ( .A(b[4]), .B(n400), .Y(n452) );
  XOR2XL U367 ( .A(b[3]), .B(n395), .Y(n469) );
  XOR2XL U368 ( .A(b[5]), .B(n401), .Y(n443) );
  XOR2XL U369 ( .A(b[4]), .B(n398), .Y(n462) );
  XOR2XL U370 ( .A(b[6]), .B(n401), .Y(n444) );
  XOR2XL U371 ( .A(b[7]), .B(n401), .Y(n445) );
  XOR2XL U372 ( .A(b[5]), .B(n400), .Y(n453) );
  XOR2XL U373 ( .A(b[8]), .B(n401), .Y(n446) );
  XOR2XL U374 ( .A(b[9]), .B(n401), .Y(n407) );
  XOR2XL U375 ( .A(b[5]), .B(n398), .Y(n463) );
  XOR2XL U376 ( .A(b[3]), .B(n384), .Y(n479) );
  XOR2XL U377 ( .A(b[4]), .B(n395), .Y(n470) );
  XOR2XL U378 ( .A(b[4]), .B(n384), .Y(n480) );
  XOR2XL U379 ( .A(b[6]), .B(n400), .Y(n454) );
  XOR2XL U380 ( .A(b[5]), .B(n395), .Y(n471) );
  XOR2XL U381 ( .A(b[10]), .B(n401), .Y(n409) );
  XOR2XL U382 ( .A(b[6]), .B(n398), .Y(n412) );
  XOR2XL U383 ( .A(b[7]), .B(n400), .Y(n455) );
  XOR2XL U384 ( .A(b[8]), .B(n400), .Y(n456) );
  XOR2XL U385 ( .A(b[5]), .B(n384), .Y(n481) );
  XOR2XL U386 ( .A(b[7]), .B(n398), .Y(n414) );
  XOR2XL U387 ( .A(b[9]), .B(n400), .Y(n457) );
  XOR2XL U388 ( .A(b[10]), .B(n400), .Y(n417) );
  XOR2XL U389 ( .A(b[6]), .B(n395), .Y(n472) );
  XOR2XL U390 ( .A(b[7]), .B(n395), .Y(n473) );
  XOR2XL U391 ( .A(b[6]), .B(n384), .Y(n482) );
  XOR2XL U392 ( .A(b[8]), .B(n398), .Y(n464) );
  XOR2XL U393 ( .A(b[9]), .B(n398), .Y(n465) );
  XOR2XL U394 ( .A(b[7]), .B(n384), .Y(n483) );
  XOR2XL U395 ( .A(b[8]), .B(n395), .Y(n474) );
  XOR2XL U396 ( .A(b[10]), .B(n398), .Y(n420) );
  XOR2XL U397 ( .A(b[9]), .B(n395), .Y(n475) );
  XOR2XL U398 ( .A(b[8]), .B(n384), .Y(n484) );
  XOR2XL U399 ( .A(b[10]), .B(n395), .Y(n423) );
  XOR2XL U400 ( .A(b[9]), .B(n384), .Y(n485) );
  XOR2XL U401 ( .A(b[10]), .B(n384), .Y(n426) );
  CLKINVX1 U402 ( .A(n25), .Y(n392) );
  ADDFXL U403 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U404 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  XNOR2X1 U405 ( .A(a[4]), .B(a[3]), .Y(n415) );
  INVX3 U406 ( .A(a[1]), .Y(n402) );
  ADDHXL U407 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  OAI22XL U408 ( .A0(n429), .A1(n410), .B0(n430), .B1(n403), .Y(n192) );
  INVX3 U409 ( .A(a[7]), .Y(n398) );
  XNOR2X1 U410 ( .A(a[2]), .B(a[1]), .Y(n408) );
  NAND2X2 U411 ( .A(a[1]), .B(n403), .Y(n410) );
  XNOR2X1 U412 ( .A(a[6]), .B(a[5]), .Y(n413) );
  XNOR2X1 U413 ( .A(a[8]), .B(a[7]), .Y(n421) );
  XNOR2X1 U414 ( .A(a[10]), .B(a[9]), .Y(n424) );
  CLKBUFX3 U415 ( .A(b[0]), .Y(n391) );
  CLKINVX1 U416 ( .A(n3), .Y(product[23]) );
  NOR2X1 U417 ( .A(n403), .B(n404), .Y(product[0]) );
  XOR2X1 U418 ( .A(n405), .B(n406), .Y(n74) );
  NAND2BX1 U419 ( .AN(n405), .B(n406), .Y(n73) );
  OAI22XL U420 ( .A0(n412), .A1(n381), .B0(n387), .B1(n414), .Y(n65) );
  OAI22XL U421 ( .A0(n386), .A1(n416), .B0(n417), .B1(n418), .Y(n51) );
  OAI22XL U422 ( .A0(n387), .A1(n419), .B0(n420), .B1(n381), .Y(n39) );
  OAI22XL U423 ( .A0(n388), .A1(n422), .B0(n423), .B1(n380), .Y(n31) );
  OAI22XL U424 ( .A0(n390), .A1(n425), .B0(n426), .B1(n378), .Y(n25) );
  OAI22XL U425 ( .A0(n428), .A1(n410), .B0(n429), .B1(n403), .Y(n193) );
  XOR2X1 U426 ( .A(b[1]), .B(n402), .Y(n428) );
  XOR2X1 U427 ( .A(b[2]), .B(n402), .Y(n429) );
  OAI22XL U428 ( .A0(n430), .A1(n410), .B0(n431), .B1(n403), .Y(n191) );
  OAI22XL U429 ( .A0(n431), .A1(n410), .B0(n432), .B1(n403), .Y(n190) );
  XOR2X1 U430 ( .A(b[4]), .B(n402), .Y(n431) );
  OAI22XL U431 ( .A0(n432), .A1(n410), .B0(n433), .B1(n403), .Y(n189) );
  OAI22XL U432 ( .A0(n433), .A1(n410), .B0(n434), .B1(n403), .Y(n188) );
  OAI22XL U433 ( .A0(n434), .A1(n410), .B0(n435), .B1(n403), .Y(n187) );
  OAI22XL U434 ( .A0(n435), .A1(n410), .B0(n436), .B1(n403), .Y(n186) );
  OAI22XL U435 ( .A0(n436), .A1(n410), .B0(n437), .B1(n403), .Y(n185) );
  OAI2BB2XL U436 ( .B0(n437), .B1(n410), .A0N(n411), .A1N(a[0]), .Y(n184) );
  XOR2X1 U437 ( .A(b[11]), .B(a[1]), .Y(n411) );
  XOR2X1 U438 ( .A(n401), .B(n391), .Y(n438) );
  OAI22XL U439 ( .A0(n440), .A1(n382), .B0(n385), .B1(n441), .Y(n179) );
  OAI22XL U440 ( .A0(n441), .A1(n382), .B0(n385), .B1(n442), .Y(n178) );
  OAI22XL U441 ( .A0(n442), .A1(n382), .B0(n385), .B1(n443), .Y(n177) );
  OAI22XL U442 ( .A0(n443), .A1(n382), .B0(n385), .B1(n444), .Y(n176) );
  OAI22XL U443 ( .A0(n444), .A1(n382), .B0(n385), .B1(n445), .Y(n175) );
  OAI22XL U444 ( .A0(n445), .A1(n382), .B0(n385), .B1(n446), .Y(n174) );
  OAI22XL U445 ( .A0(n446), .A1(n382), .B0(n385), .B1(n407), .Y(n173) );
  OAI22XL U446 ( .A0(n409), .A1(n382), .B0(n385), .B1(n447), .Y(n171) );
  AO21X1 U447 ( .A0(n382), .A1(n385), .B0(n447), .Y(n170) );
  OAI22XL U448 ( .A0(n450), .A1(n418), .B0(n386), .B1(n451), .Y(n166) );
  OAI22XL U449 ( .A0(n451), .A1(n418), .B0(n386), .B1(n452), .Y(n165) );
  OAI22XL U450 ( .A0(n452), .A1(n418), .B0(n386), .B1(n453), .Y(n164) );
  OAI22XL U451 ( .A0(n453), .A1(n418), .B0(n386), .B1(n454), .Y(n163) );
  OAI22XL U452 ( .A0(n454), .A1(n418), .B0(n386), .B1(n455), .Y(n162) );
  OAI22XL U453 ( .A0(n455), .A1(n418), .B0(n386), .B1(n456), .Y(n161) );
  OAI22XL U454 ( .A0(n456), .A1(n418), .B0(n386), .B1(n457), .Y(n160) );
  OAI22XL U455 ( .A0(n457), .A1(n418), .B0(n386), .B1(n417), .Y(n159) );
  XOR2X1 U456 ( .A(n398), .B(n391), .Y(n458) );
  XOR2X1 U457 ( .A(b[1]), .B(n398), .Y(n459) );
  OAI22XL U458 ( .A0(n460), .A1(n381), .B0(n387), .B1(n461), .Y(n154) );
  XOR2X1 U459 ( .A(b[2]), .B(n398), .Y(n460) );
  OAI22XL U460 ( .A0(n461), .A1(n381), .B0(n387), .B1(n462), .Y(n153) );
  OAI22XL U461 ( .A0(n462), .A1(n381), .B0(n387), .B1(n463), .Y(n152) );
  OAI22XL U462 ( .A0(n463), .A1(n381), .B0(n387), .B1(n412), .Y(n151) );
  OAI22XL U463 ( .A0(n414), .A1(n381), .B0(n387), .B1(n464), .Y(n150) );
  OAI22XL U464 ( .A0(n464), .A1(n381), .B0(n387), .B1(n465), .Y(n149) );
  OAI22XL U465 ( .A0(n465), .A1(n381), .B0(n387), .B1(n420), .Y(n148) );
  XOR2X1 U466 ( .A(n395), .B(n391), .Y(n466) );
  OAI22XL U467 ( .A0(n467), .A1(n380), .B0(n388), .B1(n468), .Y(n144) );
  XOR2X1 U468 ( .A(b[1]), .B(n395), .Y(n467) );
  OAI22XL U469 ( .A0(n468), .A1(n380), .B0(n388), .B1(n469), .Y(n143) );
  XOR2X1 U470 ( .A(b[2]), .B(n395), .Y(n468) );
  OAI22XL U471 ( .A0(n469), .A1(n380), .B0(n388), .B1(n470), .Y(n142) );
  OAI22XL U472 ( .A0(n470), .A1(n380), .B0(n388), .B1(n471), .Y(n141) );
  OAI22XL U473 ( .A0(n471), .A1(n380), .B0(n388), .B1(n472), .Y(n140) );
  OAI22XL U474 ( .A0(n472), .A1(n380), .B0(n388), .B1(n473), .Y(n139) );
  OAI22XL U475 ( .A0(n473), .A1(n380), .B0(n388), .B1(n474), .Y(n138) );
  OAI22XL U476 ( .A0(n474), .A1(n380), .B0(n388), .B1(n475), .Y(n137) );
  OAI22XL U477 ( .A0(n475), .A1(n380), .B0(n388), .B1(n423), .Y(n136) );
  OAI22XL U478 ( .A0(n476), .A1(n378), .B0(n390), .B1(n477), .Y(n133) );
  XOR2X1 U479 ( .A(b[1]), .B(n384), .Y(n477) );
  OAI22XL U480 ( .A0(n478), .A1(n378), .B0(n390), .B1(n479), .Y(n131) );
  XOR2X1 U481 ( .A(b[2]), .B(n384), .Y(n478) );
  OAI22XL U482 ( .A0(n479), .A1(n378), .B0(n390), .B1(n480), .Y(n130) );
  OAI22XL U483 ( .A0(n480), .A1(n378), .B0(n390), .B1(n481), .Y(n129) );
  OAI22XL U484 ( .A0(n481), .A1(n378), .B0(n390), .B1(n482), .Y(n128) );
  OAI22XL U485 ( .A0(n482), .A1(n378), .B0(n390), .B1(n483), .Y(n127) );
  OAI22XL U486 ( .A0(n483), .A1(n378), .B0(n390), .B1(n484), .Y(n126) );
  OAI22XL U487 ( .A0(n484), .A1(n378), .B0(n390), .B1(n485), .Y(n125) );
  OAI22XL U488 ( .A0(n485), .A1(n378), .B0(n390), .B1(n426), .Y(n124) );
  AO21X1 U489 ( .A0(n378), .A1(n390), .B0(n425), .Y(n123) );
  OAI21XL U490 ( .A0(n391), .A1(n402), .B0(n410), .Y(n122) );
  XOR2X1 U491 ( .A(a[3]), .B(a[2]), .Y(n486) );
  XOR2X1 U492 ( .A(a[5]), .B(a[4]), .Y(n487) );
  XOR2X1 U493 ( .A(a[7]), .B(a[6]), .Y(n488) );
  XOR2X1 U494 ( .A(a[9]), .B(a[8]), .Y(n489) );
endmodule


module geofence_DW01_sub_35 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74;

  XOR3X2 U2_24 ( .A(A[24]), .B(n30), .C(\carry[24] ), .Y(DIFF[24]) );
  NOR2X2 U1 ( .A(A[14]), .B(n49), .Y(n50) );
  CLKBUFX3 U2 ( .A(A[12]), .Y(n1) );
  AOI2BB2X2 U3 ( .B0(n65), .B1(A[6]), .A0N(B[6]), .A1N(n66), .Y(n63) );
  NOR2X2 U4 ( .A(A[6]), .B(n65), .Y(n66) );
  CLKBUFX3 U5 ( .A(A[8]), .Y(n2) );
  OAI2BB2X1 U6 ( .B0(n74), .B1(n29), .A0N(n16), .A1N(n17), .Y(n72) );
  AOI2BB2X2 U7 ( .B0(n72), .B1(A[2]), .A0N(B[2]), .A1N(n73), .Y(n70) );
  NOR2X1 U8 ( .A(A[2]), .B(n72), .Y(n73) );
  AND2X6 U9 ( .A(n70), .B(n28), .Y(n71) );
  NAND2X1 U10 ( .A(n74), .B(n29), .Y(n17) );
  AOI2BB2X1 U11 ( .B0(n49), .B1(A[14]), .A0N(B[14]), .A1N(n50), .Y(n47) );
  CLKINVX1 U12 ( .A(A[3]), .Y(n28) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n16) );
  CLKINVX1 U14 ( .A(A[7]), .Y(n26) );
  AND2X4 U15 ( .A(n55), .B(n24), .Y(n56) );
  CLKINVX1 U16 ( .A(A[17]), .Y(n21) );
  NAND2X6 U17 ( .A(n7), .B(n8), .Y(n45) );
  NAND2X6 U18 ( .A(n11), .B(n12), .Y(n37) );
  OAI22X4 U19 ( .A0(n43), .A1(n21), .B0(B[17]), .B1(n44), .Y(n41) );
  OAI22X4 U20 ( .A0(n63), .A1(n26), .B0(B[7]), .B1(n64), .Y(n61) );
  CLKAND2X6 U21 ( .A(n63), .B(n26), .Y(n64) );
  OAI22X4 U22 ( .A0(n70), .A1(n28), .B0(B[3]), .B1(n71), .Y(n68) );
  AOI2BB2X2 U23 ( .B0(n68), .B1(A[4]), .A0N(B[4]), .A1N(n69), .Y(n67) );
  NOR2X2 U24 ( .A(A[4]), .B(n68), .Y(n69) );
  AOI2BB2X4 U25 ( .B0(n53), .B1(n1), .A0N(B[12]), .A1N(n54), .Y(n51) );
  NOR2X4 U26 ( .A(n1), .B(n53), .Y(n54) );
  OR2X1 U27 ( .A(n51), .B(n23), .Y(n3) );
  OR2X6 U28 ( .A(B[13]), .B(n52), .Y(n4) );
  NAND2X6 U29 ( .A(n3), .B(n4), .Y(n49) );
  CLKINVX1 U30 ( .A(A[13]), .Y(n23) );
  AOI2BB2X4 U31 ( .B0(n33), .B1(A[22]), .A0N(B[22]), .A1N(n34), .Y(n31) );
  NOR2X4 U32 ( .A(A[22]), .B(n33), .Y(n34) );
  OAI22X4 U33 ( .A0(n31), .A1(n18), .B0(B[23]), .B1(n32), .Y(\carry[24] ) );
  NOR2X1 U34 ( .A(n2), .B(n61), .Y(n62) );
  NOR2X1 U35 ( .A(A[18]), .B(n41), .Y(n42) );
  AOI2BB2X2 U36 ( .B0(n61), .B1(n2), .A0N(B[8]), .A1N(n62), .Y(n59) );
  AOI2BB2X2 U37 ( .B0(n41), .B1(A[18]), .A0N(B[18]), .A1N(n42), .Y(n39) );
  OR2X6 U38 ( .A(B[11]), .B(n56), .Y(n10) );
  OR2X4 U39 ( .A(n5), .B(n6), .Y(n57) );
  NOR2X1 U40 ( .A(B[9]), .B(n60), .Y(n6) );
  NOR2X4 U41 ( .A(A[16]), .B(n45), .Y(n46) );
  NOR2XL U42 ( .A(n59), .B(n25), .Y(n5) );
  AOI2BB2X1 U43 ( .B0(n57), .B1(A[10]), .A0N(B[10]), .A1N(n58), .Y(n55) );
  NAND2X4 U44 ( .A(n9), .B(n10), .Y(n53) );
  NOR2X1 U45 ( .A(A[10]), .B(n57), .Y(n58) );
  NOR2BX2 U46 ( .AN(n59), .B(A[9]), .Y(n60) );
  OAI22X4 U47 ( .A0(n35), .A1(n19), .B0(B[21]), .B1(n36), .Y(n33) );
  OR2X2 U48 ( .A(n47), .B(n22), .Y(n7) );
  OR2X8 U49 ( .A(B[15]), .B(n48), .Y(n8) );
  INVXL U50 ( .A(A[15]), .Y(n22) );
  AOI2BB2X4 U51 ( .B0(n45), .B1(A[16]), .A0N(B[16]), .A1N(n46), .Y(n43) );
  NOR2X1 U52 ( .A(A[20]), .B(n37), .Y(n38) );
  NAND2X2 U53 ( .A(n67), .B(n27), .Y(n14) );
  CLKINVX3 U54 ( .A(B[5]), .Y(n13) );
  OR2X2 U55 ( .A(n55), .B(n24), .Y(n9) );
  CLKINVX1 U56 ( .A(A[11]), .Y(n24) );
  OR2X2 U57 ( .A(n39), .B(n20), .Y(n11) );
  OR2X8 U58 ( .A(B[19]), .B(n40), .Y(n12) );
  INVXL U59 ( .A(A[19]), .Y(n20) );
  AOI2BB2X4 U60 ( .B0(n37), .B1(A[20]), .A0N(B[20]), .A1N(n38), .Y(n35) );
  NOR2BX4 U61 ( .AN(n47), .B(A[15]), .Y(n48) );
  NOR2BX4 U62 ( .AN(n39), .B(A[19]), .Y(n40) );
  INVX1 U63 ( .A(A[9]), .Y(n25) );
  NOR2BX4 U64 ( .AN(n35), .B(A[21]), .Y(n36) );
  INVX1 U65 ( .A(A[21]), .Y(n19) );
  CLKAND2X8 U66 ( .A(n43), .B(n21), .Y(n44) );
  INVXL U67 ( .A(B[24]), .Y(n30) );
  OAI2BB2X2 U68 ( .B0(n67), .B1(n27), .A0N(n13), .A1N(n14), .Y(n65) );
  NOR2BX4 U69 ( .AN(n31), .B(A[23]), .Y(n32) );
  INVX1 U70 ( .A(A[24]), .Y(n18) );
  INVX1 U71 ( .A(A[5]), .Y(n27) );
  CLKINVX1 U72 ( .A(A[1]), .Y(n29) );
  AND2X2 U73 ( .A(n51), .B(n23), .Y(n52) );
  NOR2BX1 U74 ( .AN(B[0]), .B(A[0]), .Y(n74) );
endmodule


module geofence_DW_mult_tc_9 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490;

  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDHXL U25 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n394), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n396), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n399), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n397), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDFHX4 U281 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFHX2 U282 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX4 U283 ( .A(n27), .B(n392), .CI(n5), .CO(n4), .S(product[21]) );
  BUFX8 U284 ( .A(n477), .Y(n378) );
  XOR2X1 U285 ( .A(b[1]), .B(n393), .Y(n477) );
  OAI22X1 U286 ( .A0(n434), .A1(n410), .B0(n435), .B1(n403), .Y(n187) );
  XOR2X2 U287 ( .A(b[7]), .B(n402), .Y(n434) );
  NAND2X2 U288 ( .A(n381), .B(n486), .Y(n408) );
  OAI22X4 U289 ( .A0(n438), .A1(n385), .B0(n381), .B1(n439), .Y(n181) );
  OAI32XL U290 ( .A0(n401), .A1(n391), .A2(n381), .B0(n401), .B1(n385), .Y(
        n121) );
  OAI22X2 U291 ( .A0(n439), .A1(n385), .B0(n381), .B1(n440), .Y(n180) );
  OAI22X1 U292 ( .A0(n440), .A1(n385), .B0(n381), .B1(n441), .Y(n179) );
  OAI22X1 U293 ( .A0(n476), .A1(n389), .B0(n390), .B1(n378), .Y(n133) );
  BUFX8 U294 ( .A(n118), .Y(n380) );
  OAI32X4 U295 ( .A0(n395), .A1(n391), .A2(n388), .B0(n395), .B1(n383), .Y(
        n118) );
  BUFX8 U296 ( .A(n468), .Y(n379) );
  XOR2X1 U297 ( .A(b[2]), .B(n395), .Y(n468) );
  NAND2X4 U298 ( .A(n387), .B(n488), .Y(n382) );
  BUFX12 U299 ( .A(n413), .Y(n387) );
  XOR2X1 U300 ( .A(b[10]), .B(n402), .Y(n437) );
  NOR2X4 U301 ( .A(n386), .B(n404), .Y(n169) );
  AND2X6 U302 ( .A(n386), .B(n487), .Y(n384) );
  OAI22X4 U303 ( .A0(n448), .A1(n418), .B0(n386), .B1(n449), .Y(n168) );
  OAI32XL U304 ( .A0(n400), .A1(n391), .A2(n386), .B0(n400), .B1(n418), .Y(
        n120) );
  BUFX12 U305 ( .A(n415), .Y(n386) );
  OAI22XL U306 ( .A0(n467), .A1(n383), .B0(n388), .B1(n379), .Y(n144) );
  XOR2X2 U307 ( .A(b[1]), .B(n395), .Y(n467) );
  BUFX8 U308 ( .A(n424), .Y(n390) );
  XNOR2XL U309 ( .A(a[10]), .B(a[9]), .Y(n424) );
  CMPR32X2 U310 ( .A(n25), .B(n123), .C(n4), .CO(n3), .S(product[22]) );
  BUFX12 U311 ( .A(n421), .Y(n388) );
  ADDHX1 U312 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  OAI22X1 U313 ( .A0(n466), .A1(n383), .B0(n388), .B1(n467), .Y(n145) );
  OAI22X1 U314 ( .A0(n379), .A1(n383), .B0(n388), .B1(n469), .Y(n143) );
  OAI22X1 U315 ( .A0(n469), .A1(n383), .B0(n388), .B1(n470), .Y(n142) );
  NAND2X8 U316 ( .A(n388), .B(n489), .Y(n383) );
  OAI22X1 U317 ( .A0(n430), .A1(n410), .B0(n431), .B1(n403), .Y(n191) );
  INVX6 U318 ( .A(a[0]), .Y(n403) );
  ADDFXL U319 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  XOR2X1 U320 ( .A(b[3]), .B(n402), .Y(n430) );
  XOR2X1 U321 ( .A(b[1]), .B(n400), .Y(n449) );
  ADDFX2 U322 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  XOR2X1 U323 ( .A(b[2]), .B(n400), .Y(n450) );
  XOR2X1 U324 ( .A(b[3]), .B(n400), .Y(n451) );
  XOR2X1 U325 ( .A(b[1]), .B(n398), .Y(n459) );
  CLKINVX1 U326 ( .A(n391), .Y(n404) );
  XOR2X1 U327 ( .A(b[4]), .B(n400), .Y(n452) );
  ADDFX2 U328 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  CMPR42X1 U329 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFX2 U330 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U331 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  INVX3 U332 ( .A(a[5]), .Y(n400) );
  ADDFXL U333 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U334 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  INVX3 U335 ( .A(a[7]), .Y(n398) );
  INVX3 U336 ( .A(a[9]), .Y(n395) );
  ADDFXL U337 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  XNOR2X1 U338 ( .A(a[8]), .B(a[7]), .Y(n421) );
  XOR2X1 U339 ( .A(b[2]), .B(n401), .Y(n440) );
  XNOR2X4 U340 ( .A(a[2]), .B(a[1]), .Y(n381) );
  OAI22X1 U341 ( .A0(n429), .A1(n410), .B0(n430), .B1(n403), .Y(n192) );
  OAI22X1 U342 ( .A0(n428), .A1(n410), .B0(n429), .B1(n403), .Y(n193) );
  XOR2X1 U343 ( .A(b[5]), .B(n402), .Y(n432) );
  XOR2X2 U344 ( .A(b[6]), .B(n402), .Y(n433) );
  ADDHX1 U345 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  CMPR42X2 U346 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  XOR2X2 U347 ( .A(b[4]), .B(n402), .Y(n431) );
  ADDHX1 U348 ( .A(n145), .B(n380), .CO(n94), .S(n95) );
  XOR2X1 U349 ( .A(n400), .B(n391), .Y(n448) );
  INVX12 U350 ( .A(n384), .Y(n418) );
  BUFX8 U351 ( .A(n427), .Y(n389) );
  INVXL U352 ( .A(n65), .Y(n397) );
  XOR2X1 U353 ( .A(b[2]), .B(n402), .Y(n429) );
  OAI22X1 U354 ( .A0(n391), .A1(n410), .B0(n428), .B1(n403), .Y(n194) );
  INVX3 U355 ( .A(a[11]), .Y(n393) );
  NAND2XL U356 ( .A(n390), .B(n490), .Y(n427) );
  ADDFHX1 U357 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  INVXL U358 ( .A(n51), .Y(n399) );
  AO21XL U359 ( .A0(n389), .A1(n390), .B0(n425), .Y(n123) );
  AO21XL U360 ( .A0(n385), .A1(n381), .B0(n447), .Y(n170) );
  XOR2XL U361 ( .A(b[11]), .B(n401), .Y(n447) );
  OAI2BB1XL U362 ( .A0N(n403), .A1N(n410), .B0(n411), .Y(n405) );
  OA22XL U363 ( .A0(n407), .A1(n385), .B0(n381), .B1(n409), .Y(n406) );
  XOR2XL U364 ( .A(b[11]), .B(n400), .Y(n416) );
  AO21XL U365 ( .A0(n382), .A1(n387), .B0(n419), .Y(n147) );
  XOR2XL U366 ( .A(b[11]), .B(n398), .Y(n419) );
  XOR2XL U367 ( .A(b[11]), .B(n395), .Y(n422) );
  XOR2XL U368 ( .A(b[11]), .B(n393), .Y(n425) );
  ADDHX1 U369 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  ADDHX1 U370 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  XOR2XL U371 ( .A(n398), .B(n391), .Y(n458) );
  XOR2XL U372 ( .A(b[3]), .B(n401), .Y(n441) );
  XOR2XL U373 ( .A(b[3]), .B(n398), .Y(n461) );
  XOR2XL U374 ( .A(b[8]), .B(n402), .Y(n435) );
  XOR2XL U375 ( .A(b[3]), .B(n395), .Y(n469) );
  XOR2XL U376 ( .A(b[4]), .B(n401), .Y(n442) );
  XOR2XL U377 ( .A(b[4]), .B(n398), .Y(n462) );
  XOR2XL U378 ( .A(b[5]), .B(n400), .Y(n453) );
  XOR2XL U379 ( .A(b[9]), .B(n402), .Y(n436) );
  XOR2XL U380 ( .A(b[5]), .B(n401), .Y(n443) );
  XOR2XL U381 ( .A(b[3]), .B(n393), .Y(n479) );
  XOR2XL U382 ( .A(b[4]), .B(n395), .Y(n470) );
  XOR2XL U383 ( .A(b[6]), .B(n401), .Y(n444) );
  XOR2XL U384 ( .A(b[7]), .B(n401), .Y(n445) );
  XOR2XL U385 ( .A(b[4]), .B(n393), .Y(n480) );
  XOR2XL U386 ( .A(b[5]), .B(n398), .Y(n463) );
  XOR2XL U387 ( .A(b[5]), .B(n395), .Y(n471) );
  XOR2XL U388 ( .A(b[8]), .B(n401), .Y(n446) );
  XOR2XL U389 ( .A(b[9]), .B(n401), .Y(n407) );
  XOR2XL U390 ( .A(b[6]), .B(n398), .Y(n412) );
  XOR2XL U391 ( .A(b[5]), .B(n393), .Y(n481) );
  XOR2XL U392 ( .A(b[6]), .B(n400), .Y(n454) );
  XOR2XL U393 ( .A(b[10]), .B(n401), .Y(n409) );
  XOR2XL U394 ( .A(b[7]), .B(n398), .Y(n414) );
  XOR2XL U395 ( .A(b[8]), .B(n400), .Y(n456) );
  XOR2XL U396 ( .A(b[7]), .B(n400), .Y(n455) );
  XOR2XL U397 ( .A(b[6]), .B(n393), .Y(n482) );
  XOR2XL U398 ( .A(b[6]), .B(n395), .Y(n472) );
  XOR2XL U399 ( .A(b[7]), .B(n395), .Y(n473) );
  XOR2XL U400 ( .A(b[9]), .B(n400), .Y(n457) );
  XOR2XL U401 ( .A(b[10]), .B(n400), .Y(n417) );
  XOR2XL U402 ( .A(b[8]), .B(n398), .Y(n464) );
  XOR2XL U403 ( .A(b[7]), .B(n393), .Y(n483) );
  XOR2XL U404 ( .A(b[9]), .B(n398), .Y(n465) );
  XOR2XL U405 ( .A(b[8]), .B(n395), .Y(n474) );
  XOR2XL U406 ( .A(b[8]), .B(n393), .Y(n484) );
  XOR2XL U407 ( .A(b[9]), .B(n395), .Y(n475) );
  XOR2XL U408 ( .A(b[9]), .B(n393), .Y(n485) );
  XOR2XL U409 ( .A(b[10]), .B(n398), .Y(n420) );
  XOR2XL U410 ( .A(b[10]), .B(n395), .Y(n423) );
  XOR2XL U411 ( .A(b[10]), .B(n393), .Y(n426) );
  ADDFXL U412 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U413 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U414 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U415 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  CLKINVX1 U416 ( .A(n25), .Y(n392) );
  CLKINVX1 U417 ( .A(n39), .Y(n396) );
  CLKINVX1 U418 ( .A(n31), .Y(n394) );
  INVX3 U419 ( .A(a[3]), .Y(n401) );
  CLKBUFX3 U420 ( .A(n408), .Y(n385) );
  XOR2X1 U421 ( .A(a[3]), .B(a[2]), .Y(n486) );
  XOR2X1 U422 ( .A(b[1]), .B(n401), .Y(n439) );
  XNOR2X1 U423 ( .A(a[4]), .B(a[3]), .Y(n415) );
  XNOR2X1 U424 ( .A(a[6]), .B(a[5]), .Y(n413) );
  NAND2X2 U425 ( .A(a[1]), .B(n403), .Y(n410) );
  CLKBUFX3 U426 ( .A(b[0]), .Y(n391) );
  INVX3 U427 ( .A(a[1]), .Y(n402) );
  CLKINVX1 U428 ( .A(n3), .Y(product[23]) );
  NOR2X1 U429 ( .A(n403), .B(n404), .Y(product[0]) );
  XOR2X1 U430 ( .A(n405), .B(n406), .Y(n74) );
  NAND2BX1 U431 ( .AN(n405), .B(n406), .Y(n73) );
  OAI22XL U432 ( .A0(n412), .A1(n382), .B0(n387), .B1(n414), .Y(n65) );
  OAI22XL U433 ( .A0(n386), .A1(n416), .B0(n417), .B1(n418), .Y(n51) );
  OAI22XL U434 ( .A0(n387), .A1(n419), .B0(n420), .B1(n382), .Y(n39) );
  OAI22XL U435 ( .A0(n388), .A1(n422), .B0(n423), .B1(n383), .Y(n31) );
  OAI22XL U436 ( .A0(n390), .A1(n425), .B0(n426), .B1(n389), .Y(n25) );
  XOR2X1 U437 ( .A(b[1]), .B(n402), .Y(n428) );
  OAI22XL U438 ( .A0(n431), .A1(n410), .B0(n432), .B1(n403), .Y(n190) );
  OAI22XL U439 ( .A0(n432), .A1(n410), .B0(n433), .B1(n403), .Y(n189) );
  OAI22XL U440 ( .A0(n433), .A1(n410), .B0(n434), .B1(n403), .Y(n188) );
  OAI22XL U441 ( .A0(n435), .A1(n410), .B0(n436), .B1(n403), .Y(n186) );
  OAI22XL U442 ( .A0(n436), .A1(n410), .B0(n437), .B1(n403), .Y(n185) );
  OAI2BB2XL U443 ( .B0(n437), .B1(n410), .A0N(n411), .A1N(a[0]), .Y(n184) );
  XOR2X1 U444 ( .A(b[11]), .B(a[1]), .Y(n411) );
  NOR2X1 U445 ( .A(n381), .B(n404), .Y(n182) );
  XOR2X1 U446 ( .A(n401), .B(n391), .Y(n438) );
  OAI22XL U447 ( .A0(n441), .A1(n385), .B0(n381), .B1(n442), .Y(n178) );
  OAI22XL U448 ( .A0(n442), .A1(n385), .B0(n381), .B1(n443), .Y(n177) );
  OAI22XL U449 ( .A0(n443), .A1(n385), .B0(n381), .B1(n444), .Y(n176) );
  OAI22XL U450 ( .A0(n444), .A1(n385), .B0(n381), .B1(n445), .Y(n175) );
  OAI22XL U451 ( .A0(n445), .A1(n385), .B0(n381), .B1(n446), .Y(n174) );
  OAI22XL U452 ( .A0(n446), .A1(n385), .B0(n381), .B1(n407), .Y(n173) );
  OAI22XL U453 ( .A0(n409), .A1(n385), .B0(n381), .B1(n447), .Y(n171) );
  OAI22XL U454 ( .A0(n449), .A1(n418), .B0(n386), .B1(n450), .Y(n167) );
  OAI22XL U455 ( .A0(n450), .A1(n418), .B0(n386), .B1(n451), .Y(n166) );
  OAI22XL U456 ( .A0(n451), .A1(n418), .B0(n386), .B1(n452), .Y(n165) );
  OAI22XL U457 ( .A0(n452), .A1(n418), .B0(n386), .B1(n453), .Y(n164) );
  OAI22XL U458 ( .A0(n453), .A1(n418), .B0(n386), .B1(n454), .Y(n163) );
  OAI22XL U459 ( .A0(n454), .A1(n418), .B0(n386), .B1(n455), .Y(n162) );
  OAI22XL U460 ( .A0(n455), .A1(n418), .B0(n386), .B1(n456), .Y(n161) );
  OAI22XL U461 ( .A0(n456), .A1(n418), .B0(n386), .B1(n457), .Y(n160) );
  OAI22XL U462 ( .A0(n457), .A1(n418), .B0(n386), .B1(n417), .Y(n159) );
  AO21X1 U463 ( .A0(n418), .A1(n386), .B0(n416), .Y(n158) );
  NOR2X1 U464 ( .A(n387), .B(n404), .Y(n157) );
  OAI22XL U465 ( .A0(n458), .A1(n382), .B0(n387), .B1(n459), .Y(n156) );
  OAI22XL U466 ( .A0(n459), .A1(n382), .B0(n387), .B1(n460), .Y(n155) );
  OAI22XL U467 ( .A0(n460), .A1(n382), .B0(n387), .B1(n461), .Y(n154) );
  XOR2X1 U468 ( .A(b[2]), .B(n398), .Y(n460) );
  OAI22XL U469 ( .A0(n461), .A1(n382), .B0(n387), .B1(n462), .Y(n153) );
  OAI22XL U470 ( .A0(n462), .A1(n382), .B0(n387), .B1(n463), .Y(n152) );
  OAI22XL U471 ( .A0(n463), .A1(n382), .B0(n387), .B1(n412), .Y(n151) );
  OAI22XL U472 ( .A0(n414), .A1(n382), .B0(n387), .B1(n464), .Y(n150) );
  OAI22XL U473 ( .A0(n464), .A1(n382), .B0(n387), .B1(n465), .Y(n149) );
  OAI22XL U474 ( .A0(n465), .A1(n382), .B0(n387), .B1(n420), .Y(n148) );
  NOR2X1 U475 ( .A(n388), .B(n404), .Y(n146) );
  XOR2X1 U476 ( .A(n395), .B(n391), .Y(n466) );
  OAI22XL U477 ( .A0(n470), .A1(n383), .B0(n388), .B1(n471), .Y(n141) );
  OAI22XL U478 ( .A0(n471), .A1(n383), .B0(n388), .B1(n472), .Y(n140) );
  OAI22XL U479 ( .A0(n472), .A1(n383), .B0(n388), .B1(n473), .Y(n139) );
  OAI22XL U480 ( .A0(n473), .A1(n383), .B0(n388), .B1(n474), .Y(n138) );
  OAI22XL U481 ( .A0(n474), .A1(n383), .B0(n388), .B1(n475), .Y(n137) );
  OAI22XL U482 ( .A0(n475), .A1(n383), .B0(n388), .B1(n423), .Y(n136) );
  AO21X1 U483 ( .A0(n383), .A1(n388), .B0(n422), .Y(n135) );
  NOR2X1 U484 ( .A(n390), .B(n404), .Y(n134) );
  XOR2X1 U485 ( .A(n393), .B(n391), .Y(n476) );
  OAI22XL U486 ( .A0(n378), .A1(n389), .B0(n390), .B1(n478), .Y(n132) );
  OAI22XL U487 ( .A0(n478), .A1(n389), .B0(n390), .B1(n479), .Y(n131) );
  XOR2X1 U488 ( .A(b[2]), .B(n393), .Y(n478) );
  OAI22XL U489 ( .A0(n479), .A1(n389), .B0(n390), .B1(n480), .Y(n130) );
  OAI22XL U490 ( .A0(n480), .A1(n389), .B0(n390), .B1(n481), .Y(n129) );
  OAI22XL U491 ( .A0(n481), .A1(n389), .B0(n390), .B1(n482), .Y(n128) );
  OAI22XL U492 ( .A0(n482), .A1(n389), .B0(n390), .B1(n483), .Y(n127) );
  OAI22XL U493 ( .A0(n483), .A1(n389), .B0(n390), .B1(n484), .Y(n126) );
  OAI22XL U494 ( .A0(n484), .A1(n389), .B0(n390), .B1(n485), .Y(n125) );
  OAI22XL U495 ( .A0(n485), .A1(n389), .B0(n390), .B1(n426), .Y(n124) );
  OAI21XL U496 ( .A0(n391), .A1(n402), .B0(n410), .Y(n122) );
  XOR2X1 U497 ( .A(a[5]), .B(a[4]), .Y(n487) );
  OAI32X1 U498 ( .A0(n398), .A1(n391), .A2(n387), .B0(n398), .B1(n382), .Y(
        n119) );
  XOR2X1 U499 ( .A(a[7]), .B(a[6]), .Y(n488) );
  XOR2X1 U500 ( .A(a[9]), .B(a[8]), .Y(n489) );
  OAI32X1 U501 ( .A0(n393), .A1(n391), .A2(n390), .B0(n393), .B1(n389), .Y(
        n117) );
  XOR2X1 U502 ( .A(a[11]), .B(a[10]), .Y(n490) );
endmodule


module geofence_DW_mult_tc_8 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487;

  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n390), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n392), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n395), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n393), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFHX2 U281 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  CMPR22X2 U282 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  OAI22X1 U283 ( .A0(n387), .A1(n406), .B0(n425), .B1(n399), .Y(n194) );
  OAI22XL U284 ( .A0(n464), .A1(n420), .B0(n385), .B1(n465), .Y(n144) );
  OAI22XL U285 ( .A0(n465), .A1(n420), .B0(n385), .B1(n466), .Y(n143) );
  OAI22XL U286 ( .A0(n474), .A1(n424), .B0(n386), .B1(n475), .Y(n132) );
  OAI22X1 U287 ( .A0(n473), .A1(n424), .B0(n386), .B1(n474), .Y(n133) );
  AND2X4 U288 ( .A(n385), .B(n486), .Y(n381) );
  XOR2X1 U289 ( .A(b[10]), .B(n398), .Y(n434) );
  OAI22XL U290 ( .A0(n433), .A1(n406), .B0(n434), .B1(n399), .Y(n185) );
  CMPR42X1 U291 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  ADDFHX1 U292 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  XOR2X1 U293 ( .A(b[3]), .B(n391), .Y(n466) );
  CLKBUFX3 U294 ( .A(n404), .Y(n383) );
  CLKBUFX3 U295 ( .A(n411), .Y(n384) );
  ADDFHX1 U296 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  INVX3 U297 ( .A(a[9]), .Y(n391) );
  CLKBUFX3 U298 ( .A(n417), .Y(n385) );
  ADDFHX1 U299 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  CLKBUFX3 U300 ( .A(n389), .Y(n382) );
  BUFX4 U301 ( .A(n421), .Y(n386) );
  NAND2X4 U302 ( .A(n383), .B(n483), .Y(n378) );
  NAND2X4 U303 ( .A(n386), .B(n487), .Y(n424) );
  NAND2X2 U304 ( .A(n409), .B(n485), .Y(n379) );
  XOR2X1 U305 ( .A(b[3]), .B(n394), .Y(n458) );
  ADDFX1 U306 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  ADDHX1 U307 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  XNOR2X4 U308 ( .A(a[6]), .B(a[5]), .Y(n409) );
  ADDFX2 U309 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  OAI22X1 U310 ( .A0(n455), .A1(n379), .B0(n409), .B1(n456), .Y(n156) );
  ADDFX2 U311 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHX1 U312 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  XOR2X1 U313 ( .A(b[5]), .B(n398), .Y(n429) );
  ADDHX1 U314 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  OAI22X1 U315 ( .A0(n435), .A1(n378), .B0(n383), .B1(n436), .Y(n181) );
  OAI22X1 U316 ( .A0(n463), .A1(n420), .B0(n385), .B1(n464), .Y(n145) );
  ADDHX1 U317 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  ADDHX1 U318 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  NOR2X6 U319 ( .A(n386), .B(n400), .Y(n134) );
  OAI32XL U320 ( .A0(n382), .A1(n387), .A2(n386), .B0(n382), .B1(n424), .Y(
        n117) );
  NOR2X4 U321 ( .A(n385), .B(n400), .Y(n146) );
  OAI32XL U322 ( .A0(n391), .A1(n387), .A2(n385), .B0(n391), .B1(n420), .Y(
        n118) );
  XOR2X1 U323 ( .A(b[2]), .B(n397), .Y(n437) );
  INVX8 U324 ( .A(n381), .Y(n420) );
  CLKINVX3 U325 ( .A(n387), .Y(n400) );
  INVX1 U326 ( .A(a[11]), .Y(n389) );
  XOR2X1 U327 ( .A(n396), .B(n387), .Y(n445) );
  INVX12 U328 ( .A(n380), .Y(n414) );
  AND2X4 U329 ( .A(n384), .B(n484), .Y(n380) );
  XOR2X1 U330 ( .A(b[3]), .B(n398), .Y(n427) );
  XNOR2X1 U331 ( .A(a[2]), .B(a[1]), .Y(n404) );
  XOR2X1 U332 ( .A(b[2]), .B(n398), .Y(n426) );
  INVX1 U333 ( .A(n65), .Y(n393) );
  NAND2BXL U334 ( .AN(n401), .B(n402), .Y(n73) );
  CMPR42X2 U335 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  ADDFX1 U336 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  XOR2XL U337 ( .A(b[11]), .B(n397), .Y(n444) );
  OAI2BB1XL U338 ( .A0N(n399), .A1N(n406), .B0(n407), .Y(n401) );
  XOR2XL U339 ( .A(b[11]), .B(n396), .Y(n412) );
  AO21XL U340 ( .A0(n379), .A1(n409), .B0(n415), .Y(n147) );
  XOR2XL U341 ( .A(b[11]), .B(n394), .Y(n415) );
  AO21XL U342 ( .A0(n420), .A1(n385), .B0(n418), .Y(n135) );
  XOR2XL U343 ( .A(b[11]), .B(n391), .Y(n418) );
  XOR2XL U344 ( .A(b[11]), .B(n382), .Y(n422) );
  OAI32XL U345 ( .A0(n397), .A1(n387), .A2(n383), .B0(n397), .B1(n378), .Y(
        n121) );
  XNOR2XL U346 ( .A(a[4]), .B(a[3]), .Y(n411) );
  OAI22X1 U347 ( .A0(n445), .A1(n414), .B0(n384), .B1(n446), .Y(n168) );
  INVX8 U348 ( .A(a[0]), .Y(n399) );
  XOR2XL U349 ( .A(b[3]), .B(n397), .Y(n438) );
  XOR2XL U350 ( .A(b[8]), .B(n398), .Y(n432) );
  XOR2XL U351 ( .A(b[6]), .B(n398), .Y(n430) );
  XOR2XL U352 ( .A(b[7]), .B(n398), .Y(n431) );
  XOR2XL U353 ( .A(b[2]), .B(n396), .Y(n447) );
  XOR2XL U354 ( .A(b[3]), .B(n396), .Y(n448) );
  XOR2XL U355 ( .A(b[9]), .B(n398), .Y(n433) );
  XOR2XL U356 ( .A(b[5]), .B(n396), .Y(n450) );
  XOR2XL U357 ( .A(b[6]), .B(n397), .Y(n441) );
  XOR2XL U358 ( .A(b[5]), .B(n397), .Y(n440) );
  XOR2XL U359 ( .A(b[7]), .B(n397), .Y(n442) );
  XOR2XL U360 ( .A(b[3]), .B(n382), .Y(n476) );
  XOR2XL U361 ( .A(b[8]), .B(n397), .Y(n443) );
  XOR2XL U362 ( .A(b[5]), .B(n394), .Y(n460) );
  XOR2XL U363 ( .A(b[9]), .B(n397), .Y(n403) );
  XOR2XL U364 ( .A(b[5]), .B(n391), .Y(n468) );
  XOR2XL U365 ( .A(b[10]), .B(n397), .Y(n405) );
  XOR2XL U366 ( .A(b[5]), .B(n382), .Y(n478) );
  XOR2XL U367 ( .A(b[6]), .B(n394), .Y(n408) );
  XOR2XL U368 ( .A(b[6]), .B(n396), .Y(n451) );
  XOR2XL U369 ( .A(b[8]), .B(n396), .Y(n453) );
  XOR2XL U370 ( .A(b[7]), .B(n394), .Y(n410) );
  XOR2XL U371 ( .A(b[7]), .B(n396), .Y(n452) );
  XOR2XL U372 ( .A(b[9]), .B(n396), .Y(n454) );
  XOR2XL U373 ( .A(b[6]), .B(n391), .Y(n469) );
  XOR2XL U374 ( .A(b[6]), .B(n382), .Y(n479) );
  XOR2XL U375 ( .A(b[10]), .B(n396), .Y(n413) );
  XOR2XL U376 ( .A(b[7]), .B(n391), .Y(n470) );
  XOR2XL U377 ( .A(b[8]), .B(n394), .Y(n461) );
  XOR2XL U378 ( .A(b[9]), .B(n394), .Y(n462) );
  XOR2XL U379 ( .A(b[7]), .B(n382), .Y(n480) );
  XOR2XL U380 ( .A(b[8]), .B(n391), .Y(n471) );
  XOR2XL U381 ( .A(b[8]), .B(n382), .Y(n481) );
  XOR2XL U382 ( .A(b[10]), .B(n394), .Y(n416) );
  XOR2XL U383 ( .A(b[9]), .B(n391), .Y(n472) );
  XOR2XL U384 ( .A(b[9]), .B(n382), .Y(n482) );
  XOR2XL U385 ( .A(b[10]), .B(n391), .Y(n419) );
  XOR2XL U386 ( .A(b[10]), .B(n382), .Y(n423) );
  ADDFX2 U387 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFX2 U388 ( .A(n27), .B(n388), .CI(n5), .CO(n4), .S(product[21]) );
  CLKINVX1 U389 ( .A(n25), .Y(n388) );
  CLKINVX1 U390 ( .A(n51), .Y(n395) );
  CLKINVX1 U391 ( .A(n39), .Y(n392) );
  CLKINVX1 U392 ( .A(n31), .Y(n390) );
  OAI22XL U393 ( .A0(n426), .A1(n406), .B0(n427), .B1(n399), .Y(n192) );
  INVX3 U394 ( .A(a[3]), .Y(n397) );
  INVX3 U395 ( .A(a[5]), .Y(n396) );
  INVX3 U396 ( .A(a[1]), .Y(n398) );
  INVX3 U397 ( .A(a[7]), .Y(n394) );
  NAND2X2 U398 ( .A(a[1]), .B(n399), .Y(n406) );
  XNOR2X1 U399 ( .A(a[8]), .B(a[7]), .Y(n417) );
  XNOR2X1 U400 ( .A(a[10]), .B(a[9]), .Y(n421) );
  CLKBUFX3 U401 ( .A(b[0]), .Y(n387) );
  CLKINVX1 U402 ( .A(n3), .Y(product[23]) );
  NOR2X1 U403 ( .A(n399), .B(n400), .Y(product[0]) );
  XOR2X1 U404 ( .A(n401), .B(n402), .Y(n74) );
  OA22X1 U405 ( .A0(n403), .A1(n378), .B0(n383), .B1(n405), .Y(n402) );
  OAI22XL U406 ( .A0(n408), .A1(n379), .B0(n409), .B1(n410), .Y(n65) );
  OAI22XL U407 ( .A0(n384), .A1(n412), .B0(n413), .B1(n414), .Y(n51) );
  OAI22XL U408 ( .A0(n409), .A1(n415), .B0(n416), .B1(n379), .Y(n39) );
  OAI22XL U409 ( .A0(n385), .A1(n418), .B0(n419), .B1(n420), .Y(n31) );
  OAI22XL U410 ( .A0(n386), .A1(n422), .B0(n423), .B1(n424), .Y(n25) );
  OAI22XL U411 ( .A0(n425), .A1(n406), .B0(n426), .B1(n399), .Y(n193) );
  XOR2X1 U412 ( .A(b[1]), .B(n398), .Y(n425) );
  OAI22XL U413 ( .A0(n427), .A1(n406), .B0(n428), .B1(n399), .Y(n191) );
  OAI22XL U414 ( .A0(n428), .A1(n406), .B0(n429), .B1(n399), .Y(n190) );
  XOR2X1 U415 ( .A(b[4]), .B(n398), .Y(n428) );
  OAI22XL U416 ( .A0(n429), .A1(n406), .B0(n430), .B1(n399), .Y(n189) );
  OAI22XL U417 ( .A0(n430), .A1(n406), .B0(n431), .B1(n399), .Y(n188) );
  OAI22XL U418 ( .A0(n431), .A1(n406), .B0(n432), .B1(n399), .Y(n187) );
  OAI22XL U419 ( .A0(n432), .A1(n406), .B0(n433), .B1(n399), .Y(n186) );
  OAI2BB2XL U420 ( .B0(n434), .B1(n406), .A0N(n407), .A1N(a[0]), .Y(n184) );
  XOR2X1 U421 ( .A(b[11]), .B(a[1]), .Y(n407) );
  NOR2X1 U422 ( .A(n383), .B(n400), .Y(n182) );
  XOR2X1 U423 ( .A(n397), .B(n387), .Y(n435) );
  OAI22XL U424 ( .A0(n436), .A1(n378), .B0(n383), .B1(n437), .Y(n180) );
  XOR2X1 U425 ( .A(b[1]), .B(n397), .Y(n436) );
  OAI22XL U426 ( .A0(n437), .A1(n378), .B0(n383), .B1(n438), .Y(n179) );
  OAI22XL U427 ( .A0(n438), .A1(n378), .B0(n383), .B1(n439), .Y(n178) );
  OAI22XL U428 ( .A0(n439), .A1(n378), .B0(n383), .B1(n440), .Y(n177) );
  XOR2X1 U429 ( .A(b[4]), .B(n397), .Y(n439) );
  OAI22XL U430 ( .A0(n440), .A1(n378), .B0(n383), .B1(n441), .Y(n176) );
  OAI22XL U431 ( .A0(n441), .A1(n378), .B0(n383), .B1(n442), .Y(n175) );
  OAI22XL U432 ( .A0(n442), .A1(n378), .B0(n383), .B1(n443), .Y(n174) );
  OAI22XL U433 ( .A0(n443), .A1(n378), .B0(n383), .B1(n403), .Y(n173) );
  OAI22XL U434 ( .A0(n405), .A1(n378), .B0(n383), .B1(n444), .Y(n171) );
  AO21X1 U435 ( .A0(n378), .A1(n383), .B0(n444), .Y(n170) );
  NOR2X1 U436 ( .A(n384), .B(n400), .Y(n169) );
  OAI22XL U437 ( .A0(n446), .A1(n414), .B0(n384), .B1(n447), .Y(n167) );
  XOR2X1 U438 ( .A(b[1]), .B(n396), .Y(n446) );
  OAI22XL U439 ( .A0(n447), .A1(n414), .B0(n384), .B1(n448), .Y(n166) );
  OAI22XL U440 ( .A0(n448), .A1(n414), .B0(n384), .B1(n449), .Y(n165) );
  OAI22XL U441 ( .A0(n449), .A1(n414), .B0(n384), .B1(n450), .Y(n164) );
  XOR2X1 U442 ( .A(b[4]), .B(n396), .Y(n449) );
  OAI22XL U443 ( .A0(n450), .A1(n414), .B0(n384), .B1(n451), .Y(n163) );
  OAI22XL U444 ( .A0(n451), .A1(n414), .B0(n384), .B1(n452), .Y(n162) );
  OAI22XL U445 ( .A0(n452), .A1(n414), .B0(n384), .B1(n453), .Y(n161) );
  OAI22XL U446 ( .A0(n453), .A1(n414), .B0(n384), .B1(n454), .Y(n160) );
  OAI22XL U447 ( .A0(n454), .A1(n414), .B0(n384), .B1(n413), .Y(n159) );
  AO21X1 U448 ( .A0(n414), .A1(n384), .B0(n412), .Y(n158) );
  NOR2X1 U449 ( .A(n409), .B(n400), .Y(n157) );
  XOR2X1 U450 ( .A(n394), .B(n387), .Y(n455) );
  OAI22XL U451 ( .A0(n456), .A1(n379), .B0(n409), .B1(n457), .Y(n155) );
  XOR2X1 U452 ( .A(b[1]), .B(n394), .Y(n456) );
  OAI22XL U453 ( .A0(n457), .A1(n379), .B0(n409), .B1(n458), .Y(n154) );
  XOR2X1 U454 ( .A(b[2]), .B(n394), .Y(n457) );
  OAI22XL U455 ( .A0(n458), .A1(n379), .B0(n409), .B1(n459), .Y(n153) );
  OAI22XL U456 ( .A0(n459), .A1(n379), .B0(n409), .B1(n460), .Y(n152) );
  XOR2X1 U457 ( .A(b[4]), .B(n394), .Y(n459) );
  OAI22XL U458 ( .A0(n460), .A1(n379), .B0(n409), .B1(n408), .Y(n151) );
  OAI22XL U459 ( .A0(n410), .A1(n379), .B0(n409), .B1(n461), .Y(n150) );
  OAI22XL U460 ( .A0(n461), .A1(n379), .B0(n409), .B1(n462), .Y(n149) );
  OAI22XL U461 ( .A0(n462), .A1(n379), .B0(n409), .B1(n416), .Y(n148) );
  XOR2X1 U462 ( .A(n391), .B(n387), .Y(n463) );
  XOR2X1 U463 ( .A(b[1]), .B(n391), .Y(n464) );
  XOR2X1 U464 ( .A(b[2]), .B(n391), .Y(n465) );
  OAI22XL U465 ( .A0(n466), .A1(n420), .B0(n385), .B1(n467), .Y(n142) );
  OAI22XL U466 ( .A0(n467), .A1(n420), .B0(n385), .B1(n468), .Y(n141) );
  XOR2X1 U467 ( .A(b[4]), .B(n391), .Y(n467) );
  OAI22XL U468 ( .A0(n468), .A1(n420), .B0(n385), .B1(n469), .Y(n140) );
  OAI22XL U469 ( .A0(n469), .A1(n420), .B0(n385), .B1(n470), .Y(n139) );
  OAI22XL U470 ( .A0(n470), .A1(n420), .B0(n385), .B1(n471), .Y(n138) );
  OAI22XL U471 ( .A0(n471), .A1(n420), .B0(n385), .B1(n472), .Y(n137) );
  OAI22XL U472 ( .A0(n472), .A1(n420), .B0(n385), .B1(n419), .Y(n136) );
  XOR2X1 U473 ( .A(n382), .B(n387), .Y(n473) );
  XOR2X1 U474 ( .A(b[1]), .B(n382), .Y(n474) );
  OAI22XL U475 ( .A0(n475), .A1(n424), .B0(n386), .B1(n476), .Y(n131) );
  XOR2X1 U476 ( .A(b[2]), .B(n382), .Y(n475) );
  OAI22XL U477 ( .A0(n476), .A1(n424), .B0(n386), .B1(n477), .Y(n130) );
  OAI22XL U478 ( .A0(n477), .A1(n424), .B0(n386), .B1(n478), .Y(n129) );
  XOR2X1 U479 ( .A(b[4]), .B(n382), .Y(n477) );
  OAI22XL U480 ( .A0(n478), .A1(n424), .B0(n386), .B1(n479), .Y(n128) );
  OAI22XL U481 ( .A0(n479), .A1(n424), .B0(n386), .B1(n480), .Y(n127) );
  OAI22XL U482 ( .A0(n480), .A1(n424), .B0(n386), .B1(n481), .Y(n126) );
  OAI22XL U483 ( .A0(n481), .A1(n424), .B0(n386), .B1(n482), .Y(n125) );
  OAI22XL U484 ( .A0(n482), .A1(n424), .B0(n386), .B1(n423), .Y(n124) );
  AO21X1 U485 ( .A0(n424), .A1(n386), .B0(n422), .Y(n123) );
  OAI21XL U486 ( .A0(n387), .A1(n398), .B0(n406), .Y(n122) );
  XOR2X1 U487 ( .A(a[3]), .B(a[2]), .Y(n483) );
  OAI32X1 U488 ( .A0(n396), .A1(n387), .A2(n384), .B0(n396), .B1(n414), .Y(
        n120) );
  XOR2X1 U489 ( .A(a[5]), .B(a[4]), .Y(n484) );
  OAI32X1 U490 ( .A0(n394), .A1(n387), .A2(n409), .B0(n394), .B1(n379), .Y(
        n119) );
  XOR2X1 U491 ( .A(a[7]), .B(a[6]), .Y(n485) );
  XOR2X1 U492 ( .A(a[9]), .B(a[8]), .Y(n486) );
  XOR2X1 U493 ( .A(a[11]), .B(a[10]), .Y(n487) );
endmodule


module geofence_DW01_sub_36 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;

  OA22X4 U1 ( .A0(n21), .A1(n9), .B0(B[23]), .B1(n22), .Y(n6) );
  CLKAND2X12 U2 ( .A(n21), .B(n9), .Y(n22) );
  AOI2BB2X4 U3 ( .B0(n31), .B1(A[18]), .A0N(B[18]), .A1N(n32), .Y(n29) );
  NOR2X6 U4 ( .A(A[18]), .B(n31), .Y(n32) );
  INVX4 U5 ( .A(A[19]), .Y(n11) );
  CLKINVX8 U6 ( .A(A[21]), .Y(n10) );
  NOR2X1 U7 ( .A(A[22]), .B(n23), .Y(n24) );
  CLKINVX1 U8 ( .A(A[1]), .Y(n20) );
  NAND2X1 U9 ( .A(n65), .B(n20), .Y(n8) );
  AOI2BB2X1 U10 ( .B0(n63), .B1(A[2]), .A0N(B[2]), .A1N(n64), .Y(n61) );
  NOR2X1 U11 ( .A(A[2]), .B(n63), .Y(n64) );
  OAI2BB2X1 U12 ( .B0(n65), .B1(n20), .A0N(n7), .A1N(n8), .Y(n63) );
  CLKINVX1 U13 ( .A(B[1]), .Y(n7) );
  NOR2X1 U14 ( .A(A[4]), .B(n59), .Y(n60) );
  NOR2X4 U15 ( .A(A[8]), .B(n51), .Y(n52) );
  NOR2X2 U16 ( .A(A[12]), .B(n43), .Y(n44) );
  NOR2X2 U17 ( .A(A[14]), .B(n39), .Y(n40) );
  NOR2X4 U18 ( .A(A[20]), .B(n27), .Y(n28) );
  OAI22X4 U19 ( .A0(n37), .A1(n13), .B0(B[15]), .B1(n38), .Y(n35) );
  CLKAND2X12 U20 ( .A(n37), .B(n13), .Y(n38) );
  AOI2BB2X2 U21 ( .B0(n35), .B1(A[16]), .A0N(B[16]), .A1N(n36), .Y(n33) );
  NOR2X2 U22 ( .A(A[16]), .B(n35), .Y(n36) );
  OAI22X4 U23 ( .A0(n33), .A1(n12), .B0(B[17]), .B1(n34), .Y(n31) );
  CLKAND2X8 U24 ( .A(n33), .B(n12), .Y(n34) );
  AOI2BB2X2 U25 ( .B0(n55), .B1(A[6]), .A0N(B[6]), .A1N(n56), .Y(n53) );
  NOR2X2 U26 ( .A(A[6]), .B(n55), .Y(n56) );
  CLKAND2X8 U27 ( .A(n53), .B(n17), .Y(n54) );
  NOR2X1 U28 ( .A(n61), .B(n19), .Y(n1) );
  NOR2X1 U29 ( .A(B[3]), .B(n62), .Y(n2) );
  OR2X1 U30 ( .A(n1), .B(n2), .Y(n59) );
  AOI2BB2X2 U31 ( .B0(n59), .B1(A[4]), .A0N(B[4]), .A1N(n60), .Y(n57) );
  AOI2BB2XL U32 ( .B0(n51), .B1(A[8]), .A0N(B[8]), .A1N(n52), .Y(n3) );
  AOI2BB2X4 U33 ( .B0(n39), .B1(A[14]), .A0N(B[14]), .A1N(n40), .Y(n37) );
  OR2X1 U34 ( .A(n3), .B(n16), .Y(n4) );
  OR2X4 U35 ( .A(B[9]), .B(n50), .Y(n5) );
  NAND2X4 U36 ( .A(n4), .B(n5), .Y(n47) );
  AOI2BB2XL U37 ( .B0(n51), .B1(A[8]), .A0N(B[8]), .A1N(n52), .Y(n49) );
  AND2X2 U38 ( .A(n49), .B(n16), .Y(n50) );
  NOR2X2 U39 ( .A(A[10]), .B(n47), .Y(n48) );
  AOI2BB2X4 U40 ( .B0(n47), .B1(A[10]), .A0N(B[10]), .A1N(n48), .Y(n45) );
  AOI2BB2X4 U41 ( .B0(n43), .B1(A[12]), .A0N(B[12]), .A1N(n44), .Y(n41) );
  CLKAND2X6 U42 ( .A(n57), .B(n18), .Y(n58) );
  OAI22X2 U43 ( .A0(n57), .A1(n18), .B0(B[5]), .B1(n58), .Y(n55) );
  XOR3X2 U44 ( .A(A[24]), .B(B[23]), .C(n6), .Y(DIFF[24]) );
  OAI22X2 U45 ( .A0(n41), .A1(n14), .B0(B[13]), .B1(n42), .Y(n39) );
  CLKAND2X6 U46 ( .A(n41), .B(n14), .Y(n42) );
  OAI22X2 U47 ( .A0(n45), .A1(n15), .B0(B[11]), .B1(n46), .Y(n43) );
  CLKAND2X8 U48 ( .A(n45), .B(n15), .Y(n46) );
  INVX1 U49 ( .A(A[5]), .Y(n18) );
  INVX1 U50 ( .A(A[9]), .Y(n16) );
  INVX1 U51 ( .A(A[11]), .Y(n15) );
  INVX1 U52 ( .A(A[15]), .Y(n13) );
  INVX3 U53 ( .A(A[24]), .Y(n9) );
  INVX1 U54 ( .A(A[3]), .Y(n19) );
  CLKINVX1 U55 ( .A(A[13]), .Y(n14) );
  CLKINVX1 U56 ( .A(A[7]), .Y(n17) );
  CLKINVX1 U57 ( .A(A[17]), .Y(n12) );
  AND2X2 U58 ( .A(n61), .B(n19), .Y(n62) );
  CLKAND2X12 U59 ( .A(n25), .B(n10), .Y(n26) );
  CLKAND2X12 U60 ( .A(n29), .B(n11), .Y(n30) );
  AOI2BB2X4 U61 ( .B0(n23), .B1(A[22]), .A0N(B[22]), .A1N(n24), .Y(n21) );
  AOI2BB2X4 U62 ( .B0(n27), .B1(A[20]), .A0N(B[20]), .A1N(n28), .Y(n25) );
  OAI22X4 U63 ( .A0(n53), .A1(n17), .B0(B[7]), .B1(n54), .Y(n51) );
  OAI22X4 U64 ( .A0(n25), .A1(n10), .B0(B[21]), .B1(n26), .Y(n23) );
  OAI22X4 U65 ( .A0(n29), .A1(n11), .B0(B[19]), .B1(n30), .Y(n27) );
  NOR2BX1 U66 ( .AN(B[0]), .B(A[0]), .Y(n65) );
endmodule


module geofence_DW_mult_tc_11 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489;

  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U20 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n393), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n395), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n398), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n396), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U57 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  ADDFXL U60 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  OAI22X1 U281 ( .A0(n476), .A1(n380), .B0(n424), .B1(n477), .Y(n132) );
  OAI32XL U282 ( .A0(n392), .A1(n390), .A2(n424), .B0(n392), .B1(n380), .Y(
        n117) );
  XOR2X1 U283 ( .A(b[8]), .B(n401), .Y(n434) );
  OAI22X1 U284 ( .A0(n465), .A1(n423), .B0(n389), .B1(n466), .Y(n145) );
  ADDFHX2 U285 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  CLKBUFX2 U286 ( .A(n119), .Y(n378) );
  XOR2X1 U287 ( .A(b[2]), .B(n397), .Y(n459) );
  ADDHX1 U288 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  ADDFX2 U289 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFX2 U290 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFX2 U291 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  OAI22X1 U292 ( .A0(n431), .A1(n409), .B0(n432), .B1(n402), .Y(n189) );
  OAI22X1 U293 ( .A0(n432), .A1(n409), .B0(n433), .B1(n402), .Y(n188) );
  ADDFHX4 U294 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  NAND2X6 U295 ( .A(n387), .B(n486), .Y(n381) );
  BUFX12 U296 ( .A(n415), .Y(n387) );
  ADDFHX4 U297 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFHX2 U298 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  OAI22XL U299 ( .A0(n390), .A1(n409), .B0(n427), .B1(n402), .Y(n194) );
  XOR2X1 U300 ( .A(b[2]), .B(n401), .Y(n428) );
  XOR2X1 U301 ( .A(b[4]), .B(n401), .Y(n430) );
  CMPR42X1 U302 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n382), .S(n108), 
        .ICO(n106), .CO(n107) );
  INVX3 U303 ( .A(a[0]), .Y(n402) );
  ADDFX2 U304 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  INVX3 U305 ( .A(a[9]), .Y(n394) );
  CLKBUFX8 U306 ( .A(n413), .Y(n388) );
  INVX3 U307 ( .A(n386), .Y(n423) );
  AND2X2 U308 ( .A(n389), .B(n488), .Y(n386) );
  ADDFXL U309 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  NAND2X6 U310 ( .A(n407), .B(n485), .Y(n379) );
  NAND2X2 U311 ( .A(n424), .B(n489), .Y(n380) );
  AND2X2 U312 ( .A(n168), .B(n120), .Y(n382) );
  OAI22XL U313 ( .A0(n438), .A1(n379), .B0(n407), .B1(n439), .Y(n180) );
  XOR2X1 U314 ( .A(b[2]), .B(n400), .Y(n439) );
  ADDHX1 U315 ( .A(n156), .B(n378), .CO(n104), .S(n105) );
  OAI22X1 U316 ( .A0(n428), .A1(n409), .B0(n429), .B1(n402), .Y(n192) );
  XOR2X1 U317 ( .A(b[3]), .B(n401), .Y(n429) );
  ADDFX2 U318 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  OAI22X1 U319 ( .A0(n437), .A1(n379), .B0(n407), .B1(n438), .Y(n181) );
  XNOR2X4 U320 ( .A(a[10]), .B(a[9]), .Y(n424) );
  ADDHX1 U321 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  NAND2X4 U322 ( .A(n388), .B(n487), .Y(n412) );
  OAI22X1 U323 ( .A0(n457), .A1(n412), .B0(n388), .B1(n458), .Y(n156) );
  OAI32XL U324 ( .A0(n397), .A1(n390), .A2(n388), .B0(n397), .B1(n412), .Y(
        n119) );
  CMPR42X2 U325 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  ADDHX1 U326 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  ADDFHX4 U327 ( .A(n27), .B(n391), .CI(n5), .CO(n4), .S(product[21]) );
  XOR2X2 U328 ( .A(b[5]), .B(n401), .Y(n431) );
  XOR2X4 U329 ( .A(n168), .B(n120), .Y(n112) );
  OR2X4 U330 ( .A(n447), .B(n381), .Y(n383) );
  OR2X4 U331 ( .A(n387), .B(n448), .Y(n384) );
  NAND2X8 U332 ( .A(n383), .B(n384), .Y(n168) );
  OAI32X4 U333 ( .A0(n399), .A1(n390), .A2(n387), .B0(n399), .B1(n381), .Y(
        n120) );
  XOR2X2 U334 ( .A(b[1]), .B(n399), .Y(n448) );
  INVX4 U335 ( .A(a[3]), .Y(n400) );
  CLKINVX2 U336 ( .A(n390), .Y(n403) );
  XOR2X1 U337 ( .A(a[2]), .B(a[1]), .Y(n385) );
  INVX6 U338 ( .A(n385), .Y(n407) );
  BUFX8 U339 ( .A(n420), .Y(n389) );
  INVX3 U340 ( .A(a[11]), .Y(n392) );
  INVX1 U341 ( .A(n65), .Y(n396) );
  INVXL U342 ( .A(n51), .Y(n398) );
  CMPR42X2 U343 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  XOR2XL U344 ( .A(b[11]), .B(n400), .Y(n446) );
  OAI2BB1XL U345 ( .A0N(n402), .A1N(n409), .B0(n410), .Y(n404) );
  XOR2XL U346 ( .A(b[11]), .B(n399), .Y(n416) );
  AO21XL U347 ( .A0(n412), .A1(n388), .B0(n418), .Y(n147) );
  XOR2XL U348 ( .A(b[11]), .B(n397), .Y(n418) );
  XOR2XL U349 ( .A(b[11]), .B(n394), .Y(n421) );
  XOR2XL U350 ( .A(b[11]), .B(n392), .Y(n425) );
  ADDHX1 U351 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  XNOR2XL U352 ( .A(a[8]), .B(a[7]), .Y(n420) );
  XOR2XL U353 ( .A(b[3]), .B(n400), .Y(n440) );
  XOR2XL U354 ( .A(b[2]), .B(n399), .Y(n449) );
  XOR2XL U355 ( .A(b[1]), .B(n392), .Y(n476) );
  XOR2XL U356 ( .A(b[6]), .B(n401), .Y(n432) );
  XOR2XL U357 ( .A(b[3]), .B(n399), .Y(n450) );
  XOR2XL U358 ( .A(b[2]), .B(n392), .Y(n477) );
  XOR2XL U359 ( .A(b[7]), .B(n401), .Y(n433) );
  XOR2XL U360 ( .A(b[4]), .B(n400), .Y(n441) );
  XOR2XL U361 ( .A(b[3]), .B(n397), .Y(n460) );
  XOR2XL U362 ( .A(b[3]), .B(n394), .Y(n468) );
  XOR2XL U363 ( .A(b[2]), .B(n394), .Y(n467) );
  XOR2XL U364 ( .A(b[4]), .B(n399), .Y(n451) );
  XOR2XL U365 ( .A(b[4]), .B(n397), .Y(n461) );
  XOR2XL U366 ( .A(b[9]), .B(n401), .Y(n435) );
  XOR2XL U367 ( .A(b[10]), .B(n401), .Y(n436) );
  XOR2XL U368 ( .A(b[5]), .B(n400), .Y(n442) );
  XOR2XL U369 ( .A(b[5]), .B(n399), .Y(n452) );
  XOR2XL U370 ( .A(b[3]), .B(n392), .Y(n478) );
  XOR2XL U371 ( .A(b[4]), .B(n394), .Y(n469) );
  XOR2XL U372 ( .A(b[4]), .B(n392), .Y(n479) );
  XOR2XL U373 ( .A(b[6]), .B(n400), .Y(n443) );
  XOR2XL U374 ( .A(b[7]), .B(n400), .Y(n444) );
  XOR2XL U375 ( .A(b[5]), .B(n397), .Y(n462) );
  XOR2XL U376 ( .A(b[9]), .B(n400), .Y(n406) );
  XOR2XL U377 ( .A(b[5]), .B(n394), .Y(n470) );
  XOR2XL U378 ( .A(b[8]), .B(n400), .Y(n445) );
  XOR2XL U379 ( .A(b[5]), .B(n392), .Y(n480) );
  XOR2XL U380 ( .A(b[6]), .B(n397), .Y(n411) );
  XOR2XL U381 ( .A(b[10]), .B(n400), .Y(n408) );
  XOR2XL U382 ( .A(b[6]), .B(n392), .Y(n481) );
  XOR2XL U383 ( .A(b[6]), .B(n399), .Y(n453) );
  XOR2XL U384 ( .A(b[8]), .B(n399), .Y(n455) );
  XOR2XL U385 ( .A(b[7]), .B(n397), .Y(n414) );
  XOR2XL U386 ( .A(b[7]), .B(n394), .Y(n472) );
  XOR2XL U387 ( .A(b[6]), .B(n394), .Y(n471) );
  XOR2XL U388 ( .A(b[7]), .B(n399), .Y(n454) );
  XOR2XL U389 ( .A(b[9]), .B(n399), .Y(n456) );
  XOR2XL U390 ( .A(b[10]), .B(n399), .Y(n417) );
  XOR2XL U391 ( .A(b[7]), .B(n392), .Y(n482) );
  XOR2XL U392 ( .A(b[8]), .B(n394), .Y(n473) );
  XOR2XL U393 ( .A(b[9]), .B(n397), .Y(n464) );
  XOR2XL U394 ( .A(b[8]), .B(n397), .Y(n463) );
  XOR2XL U395 ( .A(b[8]), .B(n392), .Y(n483) );
  XOR2XL U396 ( .A(b[9]), .B(n394), .Y(n474) );
  XOR2XL U397 ( .A(b[10]), .B(n397), .Y(n419) );
  XOR2XL U398 ( .A(b[9]), .B(n392), .Y(n484) );
  XOR2XL U399 ( .A(b[10]), .B(n394), .Y(n422) );
  XOR2XL U400 ( .A(b[10]), .B(n392), .Y(n426) );
  ADDFXL U401 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFX2 U402 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  CLKINVX1 U403 ( .A(n25), .Y(n391) );
  CLKINVX1 U404 ( .A(n39), .Y(n395) );
  CLKINVX1 U405 ( .A(n31), .Y(n393) );
  INVX3 U406 ( .A(a[5]), .Y(n399) );
  XNOR2X1 U407 ( .A(a[4]), .B(a[3]), .Y(n415) );
  INVX3 U408 ( .A(a[1]), .Y(n401) );
  NAND2X2 U409 ( .A(a[1]), .B(n402), .Y(n409) );
  INVX3 U410 ( .A(a[7]), .Y(n397) );
  XNOR2X1 U411 ( .A(a[6]), .B(a[5]), .Y(n413) );
  CLKBUFX3 U412 ( .A(b[0]), .Y(n390) );
  CLKINVX1 U413 ( .A(n3), .Y(product[23]) );
  NOR2X1 U414 ( .A(n402), .B(n403), .Y(product[0]) );
  XOR2X1 U415 ( .A(n404), .B(n405), .Y(n74) );
  NAND2BX1 U416 ( .AN(n404), .B(n405), .Y(n73) );
  OA22X1 U417 ( .A0(n406), .A1(n379), .B0(n407), .B1(n408), .Y(n405) );
  OAI22XL U418 ( .A0(n411), .A1(n412), .B0(n388), .B1(n414), .Y(n65) );
  OAI22XL U419 ( .A0(n387), .A1(n416), .B0(n417), .B1(n381), .Y(n51) );
  OAI22XL U420 ( .A0(n388), .A1(n418), .B0(n419), .B1(n412), .Y(n39) );
  OAI22XL U421 ( .A0(n389), .A1(n421), .B0(n422), .B1(n423), .Y(n31) );
  OAI22XL U422 ( .A0(n424), .A1(n425), .B0(n426), .B1(n380), .Y(n25) );
  OAI22XL U423 ( .A0(n427), .A1(n409), .B0(n428), .B1(n402), .Y(n193) );
  XOR2X1 U424 ( .A(b[1]), .B(n401), .Y(n427) );
  OAI22XL U425 ( .A0(n429), .A1(n409), .B0(n430), .B1(n402), .Y(n191) );
  OAI22XL U426 ( .A0(n430), .A1(n409), .B0(n431), .B1(n402), .Y(n190) );
  OAI22XL U427 ( .A0(n433), .A1(n409), .B0(n434), .B1(n402), .Y(n187) );
  OAI22XL U428 ( .A0(n434), .A1(n409), .B0(n435), .B1(n402), .Y(n186) );
  OAI22XL U429 ( .A0(n435), .A1(n409), .B0(n436), .B1(n402), .Y(n185) );
  OAI2BB2XL U430 ( .B0(n436), .B1(n409), .A0N(n410), .A1N(a[0]), .Y(n184) );
  XOR2X1 U431 ( .A(b[11]), .B(a[1]), .Y(n410) );
  NOR2X1 U432 ( .A(n407), .B(n403), .Y(n182) );
  XOR2X1 U433 ( .A(n400), .B(n390), .Y(n437) );
  XOR2X1 U434 ( .A(b[1]), .B(n400), .Y(n438) );
  OAI22XL U435 ( .A0(n439), .A1(n379), .B0(n407), .B1(n440), .Y(n179) );
  OAI22XL U436 ( .A0(n440), .A1(n379), .B0(n407), .B1(n441), .Y(n178) );
  OAI22XL U437 ( .A0(n441), .A1(n379), .B0(n407), .B1(n442), .Y(n177) );
  OAI22XL U438 ( .A0(n442), .A1(n379), .B0(n407), .B1(n443), .Y(n176) );
  OAI22XL U439 ( .A0(n443), .A1(n379), .B0(n407), .B1(n444), .Y(n175) );
  OAI22XL U440 ( .A0(n444), .A1(n379), .B0(n407), .B1(n445), .Y(n174) );
  OAI22XL U441 ( .A0(n445), .A1(n379), .B0(n407), .B1(n406), .Y(n173) );
  OAI22XL U442 ( .A0(n408), .A1(n379), .B0(n407), .B1(n446), .Y(n171) );
  AO21X1 U443 ( .A0(n379), .A1(n407), .B0(n446), .Y(n170) );
  NOR2X1 U444 ( .A(n387), .B(n403), .Y(n169) );
  XOR2X1 U445 ( .A(n399), .B(n390), .Y(n447) );
  OAI22XL U446 ( .A0(n448), .A1(n381), .B0(n387), .B1(n449), .Y(n167) );
  OAI22XL U447 ( .A0(n449), .A1(n381), .B0(n387), .B1(n450), .Y(n166) );
  OAI22XL U448 ( .A0(n450), .A1(n381), .B0(n387), .B1(n451), .Y(n165) );
  OAI22XL U449 ( .A0(n451), .A1(n381), .B0(n387), .B1(n452), .Y(n164) );
  OAI22XL U450 ( .A0(n452), .A1(n381), .B0(n387), .B1(n453), .Y(n163) );
  OAI22XL U451 ( .A0(n453), .A1(n381), .B0(n387), .B1(n454), .Y(n162) );
  OAI22XL U452 ( .A0(n454), .A1(n381), .B0(n387), .B1(n455), .Y(n161) );
  OAI22XL U453 ( .A0(n455), .A1(n381), .B0(n387), .B1(n456), .Y(n160) );
  OAI22XL U454 ( .A0(n456), .A1(n381), .B0(n387), .B1(n417), .Y(n159) );
  AO21X1 U455 ( .A0(n381), .A1(n387), .B0(n416), .Y(n158) );
  NOR2X1 U456 ( .A(n388), .B(n403), .Y(n157) );
  XOR2X1 U457 ( .A(n397), .B(n390), .Y(n457) );
  OAI22XL U458 ( .A0(n458), .A1(n412), .B0(n388), .B1(n459), .Y(n155) );
  XOR2X1 U459 ( .A(b[1]), .B(n397), .Y(n458) );
  OAI22XL U460 ( .A0(n459), .A1(n412), .B0(n388), .B1(n460), .Y(n154) );
  OAI22XL U461 ( .A0(n460), .A1(n412), .B0(n388), .B1(n461), .Y(n153) );
  OAI22XL U462 ( .A0(n461), .A1(n412), .B0(n388), .B1(n462), .Y(n152) );
  OAI22XL U463 ( .A0(n462), .A1(n412), .B0(n388), .B1(n411), .Y(n151) );
  OAI22XL U464 ( .A0(n414), .A1(n412), .B0(n388), .B1(n463), .Y(n150) );
  OAI22XL U465 ( .A0(n463), .A1(n412), .B0(n388), .B1(n464), .Y(n149) );
  OAI22XL U466 ( .A0(n464), .A1(n412), .B0(n388), .B1(n419), .Y(n148) );
  NOR2X1 U467 ( .A(n389), .B(n403), .Y(n146) );
  XOR2X1 U468 ( .A(n394), .B(n390), .Y(n465) );
  OAI22XL U469 ( .A0(n466), .A1(n423), .B0(n389), .B1(n467), .Y(n144) );
  XOR2X1 U470 ( .A(b[1]), .B(n394), .Y(n466) );
  OAI22XL U471 ( .A0(n467), .A1(n423), .B0(n389), .B1(n468), .Y(n143) );
  OAI22XL U472 ( .A0(n468), .A1(n423), .B0(n389), .B1(n469), .Y(n142) );
  OAI22XL U473 ( .A0(n469), .A1(n423), .B0(n389), .B1(n470), .Y(n141) );
  OAI22XL U474 ( .A0(n470), .A1(n423), .B0(n389), .B1(n471), .Y(n140) );
  OAI22XL U475 ( .A0(n471), .A1(n423), .B0(n389), .B1(n472), .Y(n139) );
  OAI22XL U476 ( .A0(n472), .A1(n423), .B0(n389), .B1(n473), .Y(n138) );
  OAI22XL U477 ( .A0(n473), .A1(n423), .B0(n389), .B1(n474), .Y(n137) );
  OAI22XL U478 ( .A0(n474), .A1(n423), .B0(n389), .B1(n422), .Y(n136) );
  AO21X1 U479 ( .A0(n423), .A1(n389), .B0(n421), .Y(n135) );
  NOR2X1 U480 ( .A(n424), .B(n403), .Y(n134) );
  OAI22XL U481 ( .A0(n475), .A1(n380), .B0(n424), .B1(n476), .Y(n133) );
  XOR2X1 U482 ( .A(n392), .B(n390), .Y(n475) );
  OAI22XL U483 ( .A0(n477), .A1(n380), .B0(n424), .B1(n478), .Y(n131) );
  OAI22XL U484 ( .A0(n478), .A1(n380), .B0(n424), .B1(n479), .Y(n130) );
  OAI22XL U485 ( .A0(n479), .A1(n380), .B0(n424), .B1(n480), .Y(n129) );
  OAI22XL U486 ( .A0(n480), .A1(n380), .B0(n424), .B1(n481), .Y(n128) );
  OAI22XL U487 ( .A0(n481), .A1(n380), .B0(n424), .B1(n482), .Y(n127) );
  OAI22XL U488 ( .A0(n482), .A1(n380), .B0(n424), .B1(n483), .Y(n126) );
  OAI22XL U489 ( .A0(n483), .A1(n380), .B0(n424), .B1(n484), .Y(n125) );
  OAI22XL U490 ( .A0(n484), .A1(n380), .B0(n424), .B1(n426), .Y(n124) );
  AO21X1 U491 ( .A0(n380), .A1(n424), .B0(n425), .Y(n123) );
  OAI21XL U492 ( .A0(n390), .A1(n401), .B0(n409), .Y(n122) );
  OAI32X1 U493 ( .A0(n400), .A1(n390), .A2(n407), .B0(n400), .B1(n379), .Y(
        n121) );
  XOR2X1 U494 ( .A(a[3]), .B(a[2]), .Y(n485) );
  XOR2X1 U495 ( .A(a[5]), .B(a[4]), .Y(n486) );
  XOR2X1 U496 ( .A(a[7]), .B(a[6]), .Y(n487) );
  OAI32X1 U497 ( .A0(n394), .A1(n390), .A2(n389), .B0(n394), .B1(n423), .Y(
        n118) );
  XOR2X1 U498 ( .A(a[9]), .B(a[8]), .Y(n488) );
  XOR2X1 U499 ( .A(a[11]), .B(a[10]), .Y(n489) );
endmodule


module geofence_DW_mult_tc_10 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485;

  ADDFXL U5 ( .A(n27), .B(n385), .CI(n5), .CO(n4), .S(product[21]) );
  ADDFXL U6 ( .A(n29), .B(n28), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U7 ( .A(n30), .B(n34), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U10 ( .A(n43), .B(n47), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U13 ( .A(n61), .B(n68), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U14 ( .A(n69), .B(n76), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U15 ( .A(n77), .B(n84), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U16 ( .A(n85), .B(n90), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U17 ( .A(n91), .B(n97), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U18 ( .A(n98), .B(n102), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U19 ( .A(n103), .B(n107), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U21 ( .A(n110), .B(n113), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U22 ( .A(n114), .B(n115), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U23 ( .A(n116), .B(n121), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U24 ( .A(n193), .B(n182), .CI(n24), .CO(n23), .S(product[2]) );
  ADDFXL U27 ( .A(n31), .B(n135), .CI(n124), .CO(n27), .S(n28) );
  ADDFXL U28 ( .A(n387), .B(n125), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U30 ( .A(n147), .B(n136), .C(n39), .D(n126), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n389), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U33 ( .A(n148), .B(n138), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U34 ( .A(n51), .B(n158), .CI(n128), .CO(n44), .S(n45) );
  CMPR42X1 U35 ( .A(n392), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U36 ( .A(n139), .B(n129), .CI(n149), .CO(n49), .S(n50) );
  CMPR42X1 U38 ( .A(n150), .B(n140), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U39 ( .A(n170), .B(n130), .C(n65), .D(n159), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U40 ( .A(n390), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n141), .B(n171), .C(n160), .D(n131), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U43 ( .A(n81), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), .ICO(
        n67), .CO(n68) );
  CMPR42X1 U44 ( .A(n161), .B(n132), .C(n151), .D(n142), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n184), .B(n143), .C(n173), .D(n152), .ICI(n86), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDHXL U49 ( .A(n133), .B(n117), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n163), .B(n94), .C(n88), .D(n92), .ICI(n89), .S(n85), 
        .ICO(n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n134), .B(n153), .C(n185), .D(n174), .ICI(n144), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U53 ( .A(n154), .B(n164), .CI(n175), .CO(n92), .S(n93) );
  CMPR42X1 U55 ( .A(n176), .B(n155), .C(n104), .D(n101), .ICI(n100), .S(n98), 
        .ICO(n96), .CO(n97) );
  ADDFXL U56 ( .A(n165), .B(n146), .CI(n187), .CO(n99), .S(n100) );
  CMPR42X1 U59 ( .A(n157), .B(n189), .C(n178), .D(n167), .ICI(n111), .S(n108), 
        .ICO(n106), .CO(n107) );
  ADDFXL U62 ( .A(n191), .B(n169), .CI(n180), .CO(n113), .S(n114) );
  BUFX4 U281 ( .A(n416), .Y(n382) );
  OAI22X1 U282 ( .A0(n424), .A1(n404), .B0(n425), .B1(n396), .Y(n192) );
  OAI22X1 U283 ( .A0(n423), .A1(n404), .B0(n424), .B1(n396), .Y(n193) );
  XNOR2X4 U284 ( .A(a[4]), .B(a[3]), .Y(n410) );
  XOR2X2 U285 ( .A(b[1]), .B(n393), .Y(n444) );
  OAI22X2 U286 ( .A0(n433), .A1(n401), .B0(n402), .B1(n434), .Y(n181) );
  NAND2X4 U287 ( .A(n381), .B(n483), .Y(n407) );
  NOR2X1 U288 ( .A(n382), .B(n397), .Y(n146) );
  OAI22XL U289 ( .A0(n453), .A1(n407), .B0(n381), .B1(n454), .Y(n156) );
  OAI22XL U290 ( .A0(n461), .A1(n378), .B0(n382), .B1(n462), .Y(n145) );
  AND2X4 U291 ( .A(n410), .B(n482), .Y(n380) );
  ADDHXL U292 ( .A(n122), .B(n194), .CO(n24), .S(product[1]) );
  OAI22XL U293 ( .A0(n384), .A1(n404), .B0(n423), .B1(n396), .Y(n194) );
  XOR2X1 U294 ( .A(b[3]), .B(n395), .Y(n425) );
  INVX3 U295 ( .A(a[1]), .Y(n395) );
  INVX3 U296 ( .A(n384), .Y(n397) );
  NAND2X2 U297 ( .A(a[1]), .B(n396), .Y(n404) );
  INVX3 U298 ( .A(a[0]), .Y(n396) );
  INVX4 U299 ( .A(a[3]), .Y(n394) );
  INVX4 U300 ( .A(n379), .Y(n401) );
  INVX6 U301 ( .A(a[5]), .Y(n393) );
  CLKBUFX3 U302 ( .A(n408), .Y(n381) );
  INVX3 U303 ( .A(a[9]), .Y(n388) );
  CLKBUFX3 U304 ( .A(n422), .Y(n383) );
  NAND2X2 U305 ( .A(n382), .B(n484), .Y(n378) );
  OAI22XL U306 ( .A0(n454), .A1(n407), .B0(n381), .B1(n455), .Y(n155) );
  XOR2X1 U307 ( .A(b[2]), .B(n391), .Y(n455) );
  OAI22XL U308 ( .A0(n456), .A1(n407), .B0(n381), .B1(n457), .Y(n153) );
  XOR2X1 U309 ( .A(b[4]), .B(n391), .Y(n457) );
  OAI22XL U310 ( .A0(n462), .A1(n378), .B0(n382), .B1(n463), .Y(n144) );
  OAI22XL U311 ( .A0(n463), .A1(n378), .B0(n382), .B1(n464), .Y(n143) );
  XOR2X1 U312 ( .A(b[2]), .B(n388), .Y(n463) );
  XOR2X1 U313 ( .A(b[5]), .B(n395), .Y(n427) );
  XOR2X4 U314 ( .A(b[1]), .B(n395), .Y(n423) );
  OAI22X1 U315 ( .A0(n471), .A1(n383), .B0(n419), .B1(n472), .Y(n133) );
  XOR2X1 U316 ( .A(b[1]), .B(n386), .Y(n472) );
  XOR2X2 U317 ( .A(b[4]), .B(n395), .Y(n426) );
  XOR2X1 U318 ( .A(b[2]), .B(n394), .Y(n435) );
  ADDHX1 U319 ( .A(n156), .B(n119), .CO(n104), .S(n105) );
  ADDFHX2 U320 ( .A(n179), .B(n190), .CI(n112), .CO(n109), .S(n110) );
  ADDHX1 U321 ( .A(n168), .B(n120), .CO(n111), .S(n112) );
  XNOR2X4 U322 ( .A(a[10]), .B(a[9]), .Y(n419) );
  OAI32XL U323 ( .A0(n388), .A1(n384), .A2(n382), .B0(n388), .B1(n378), .Y(
        n118) );
  NOR2X2 U324 ( .A(n381), .B(n397), .Y(n157) );
  OAI32XL U325 ( .A0(n391), .A1(n384), .A2(n381), .B0(n391), .B1(n407), .Y(
        n119) );
  ADDHX1 U326 ( .A(n145), .B(n118), .CO(n94), .S(n95) );
  AND2X2 U327 ( .A(n402), .B(n481), .Y(n379) );
  ADDFHX1 U328 ( .A(n55), .B(n60), .CI(n12), .CO(n11), .S(product[14]) );
  XNOR2X4 U329 ( .A(a[2]), .B(a[1]), .Y(n402) );
  ADDFHX1 U330 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[15]) );
  CMPR42X1 U331 ( .A(n162), .B(n82), .C(n87), .D(n80), .ICI(n83), .S(n77), 
        .ICO(n75), .CO(n76) );
  XOR2X1 U332 ( .A(b[2]), .B(n395), .Y(n424) );
  INVX12 U333 ( .A(n380), .Y(n413) );
  NAND2XL U334 ( .A(n419), .B(n485), .Y(n422) );
  INVX3 U335 ( .A(a[11]), .Y(n386) );
  INVX1 U336 ( .A(n65), .Y(n390) );
  NAND2BXL U337 ( .AN(n398), .B(n399), .Y(n73) );
  CMPR42X2 U338 ( .A(n186), .B(n95), .C(n96), .D(n99), .ICI(n93), .S(n91), 
        .ICO(n89), .CO(n90) );
  CMPR42X2 U339 ( .A(n188), .B(n166), .C(n177), .D(n106), .ICI(n105), .S(n103), 
        .ICO(n101), .CO(n102) );
  XOR2XL U340 ( .A(b[11]), .B(n394), .Y(n442) );
  OAI2BB1XL U341 ( .A0N(n396), .A1N(n404), .B0(n405), .Y(n398) );
  XOR2XL U342 ( .A(b[11]), .B(n393), .Y(n411) );
  AO21XL U343 ( .A0(n407), .A1(n381), .B0(n414), .Y(n147) );
  XOR2XL U344 ( .A(b[11]), .B(n391), .Y(n414) );
  AO21XL U345 ( .A0(n378), .A1(n382), .B0(n417), .Y(n135) );
  XOR2XL U346 ( .A(b[11]), .B(n388), .Y(n417) );
  XOR2XL U347 ( .A(b[11]), .B(n386), .Y(n420) );
  ADDHX1 U348 ( .A(n192), .B(n181), .CO(n115), .S(n116) );
  XOR2XL U349 ( .A(b[6]), .B(n395), .Y(n428) );
  XOR2XL U350 ( .A(b[2]), .B(n393), .Y(n445) );
  XOR2XL U351 ( .A(b[3]), .B(n394), .Y(n436) );
  XOR2XL U352 ( .A(b[7]), .B(n395), .Y(n429) );
  XOR2XL U353 ( .A(b[8]), .B(n395), .Y(n430) );
  XOR2XL U354 ( .A(b[2]), .B(n386), .Y(n473) );
  XOR2XL U355 ( .A(b[3]), .B(n393), .Y(n446) );
  XOR2XL U356 ( .A(b[10]), .B(n395), .Y(n432) );
  XOR2XL U357 ( .A(b[3]), .B(n388), .Y(n464) );
  XOR2XL U358 ( .A(b[3]), .B(n391), .Y(n456) );
  XOR2XL U359 ( .A(b[4]), .B(n394), .Y(n437) );
  XOR2XL U360 ( .A(b[9]), .B(n395), .Y(n431) );
  XOR2XL U361 ( .A(b[4]), .B(n393), .Y(n447) );
  XOR2XL U362 ( .A(b[3]), .B(n386), .Y(n474) );
  XOR2XL U363 ( .A(b[5]), .B(n394), .Y(n438) );
  XOR2XL U364 ( .A(b[6]), .B(n394), .Y(n439) );
  XOR2XL U365 ( .A(b[8]), .B(n394), .Y(n441) );
  XOR2XL U366 ( .A(b[4]), .B(n386), .Y(n475) );
  XOR2XL U367 ( .A(b[7]), .B(n394), .Y(n440) );
  XOR2XL U368 ( .A(b[4]), .B(n388), .Y(n465) );
  XOR2XL U369 ( .A(b[5]), .B(n393), .Y(n448) );
  XOR2XL U370 ( .A(b[9]), .B(n394), .Y(n400) );
  XOR2XL U371 ( .A(b[5]), .B(n388), .Y(n466) );
  XOR2XL U372 ( .A(b[5]), .B(n391), .Y(n458) );
  XOR2XL U373 ( .A(b[5]), .B(n386), .Y(n476) );
  XOR2XL U374 ( .A(b[10]), .B(n394), .Y(n403) );
  XOR2XL U375 ( .A(b[6]), .B(n391), .Y(n406) );
  XOR2XL U376 ( .A(b[8]), .B(n393), .Y(n451) );
  XOR2XL U377 ( .A(b[6]), .B(n393), .Y(n449) );
  XOR2XL U378 ( .A(b[9]), .B(n393), .Y(n452) );
  XOR2XL U379 ( .A(b[7]), .B(n391), .Y(n409) );
  XOR2XL U380 ( .A(b[6]), .B(n386), .Y(n477) );
  XOR2XL U381 ( .A(b[6]), .B(n388), .Y(n467) );
  XOR2XL U382 ( .A(b[10]), .B(n393), .Y(n412) );
  XOR2XL U383 ( .A(b[7]), .B(n393), .Y(n450) );
  XOR2XL U384 ( .A(b[7]), .B(n388), .Y(n468) );
  XOR2XL U385 ( .A(b[9]), .B(n391), .Y(n460) );
  XOR2XL U386 ( .A(b[7]), .B(n386), .Y(n478) );
  XOR2XL U387 ( .A(b[8]), .B(n391), .Y(n459) );
  XOR2XL U388 ( .A(b[8]), .B(n388), .Y(n469) );
  XOR2XL U389 ( .A(b[10]), .B(n391), .Y(n415) );
  XOR2XL U390 ( .A(b[8]), .B(n386), .Y(n479) );
  XOR2XL U391 ( .A(b[9]), .B(n388), .Y(n470) );
  XOR2XL U392 ( .A(b[9]), .B(n386), .Y(n480) );
  XOR2XL U393 ( .A(b[10]), .B(n388), .Y(n418) );
  XOR2XL U394 ( .A(b[10]), .B(n386), .Y(n421) );
  CLKINVX1 U395 ( .A(n25), .Y(n385) );
  ADDFXL U396 ( .A(n109), .B(n108), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U397 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U398 ( .A(n37), .B(n35), .CI(n8), .CO(n7), .S(product[18]) );
  CLKINVX1 U399 ( .A(n51), .Y(n392) );
  ADDFXL U400 ( .A(n25), .B(n123), .CI(n4), .CO(n3), .S(product[22]) );
  CLKINVX1 U401 ( .A(n39), .Y(n389) );
  CLKINVX1 U402 ( .A(n31), .Y(n387) );
  INVX3 U403 ( .A(a[7]), .Y(n391) );
  XNOR2X1 U404 ( .A(a[6]), .B(a[5]), .Y(n408) );
  XNOR2X1 U405 ( .A(a[8]), .B(a[7]), .Y(n416) );
  CLKBUFX3 U406 ( .A(b[0]), .Y(n384) );
  CLKINVX1 U407 ( .A(n3), .Y(product[23]) );
  NOR2X1 U408 ( .A(n396), .B(n397), .Y(product[0]) );
  XOR2X1 U409 ( .A(n398), .B(n399), .Y(n74) );
  OA22X1 U410 ( .A0(n400), .A1(n401), .B0(n402), .B1(n403), .Y(n399) );
  OAI22XL U411 ( .A0(n406), .A1(n407), .B0(n381), .B1(n409), .Y(n65) );
  OAI22XL U412 ( .A0(n410), .A1(n411), .B0(n412), .B1(n413), .Y(n51) );
  OAI22XL U413 ( .A0(n381), .A1(n414), .B0(n415), .B1(n407), .Y(n39) );
  OAI22XL U414 ( .A0(n382), .A1(n417), .B0(n418), .B1(n378), .Y(n31) );
  OAI22XL U415 ( .A0(n419), .A1(n420), .B0(n421), .B1(n383), .Y(n25) );
  OAI22XL U416 ( .A0(n425), .A1(n404), .B0(n426), .B1(n396), .Y(n191) );
  OAI22XL U417 ( .A0(n426), .A1(n404), .B0(n427), .B1(n396), .Y(n190) );
  OAI22XL U418 ( .A0(n427), .A1(n404), .B0(n428), .B1(n396), .Y(n189) );
  OAI22XL U419 ( .A0(n428), .A1(n404), .B0(n429), .B1(n396), .Y(n188) );
  OAI22XL U420 ( .A0(n429), .A1(n404), .B0(n430), .B1(n396), .Y(n187) );
  OAI22XL U421 ( .A0(n430), .A1(n404), .B0(n431), .B1(n396), .Y(n186) );
  OAI22XL U422 ( .A0(n431), .A1(n404), .B0(n432), .B1(n396), .Y(n185) );
  OAI2BB2XL U423 ( .B0(n432), .B1(n404), .A0N(n405), .A1N(a[0]), .Y(n184) );
  XOR2X1 U424 ( .A(b[11]), .B(a[1]), .Y(n405) );
  NOR2X1 U425 ( .A(n402), .B(n397), .Y(n182) );
  XOR2X1 U426 ( .A(n394), .B(n384), .Y(n433) );
  OAI22XL U427 ( .A0(n434), .A1(n401), .B0(n402), .B1(n435), .Y(n180) );
  XOR2X1 U428 ( .A(b[1]), .B(n394), .Y(n434) );
  OAI22XL U429 ( .A0(n435), .A1(n401), .B0(n402), .B1(n436), .Y(n179) );
  OAI22XL U430 ( .A0(n436), .A1(n401), .B0(n402), .B1(n437), .Y(n178) );
  OAI22XL U431 ( .A0(n437), .A1(n401), .B0(n402), .B1(n438), .Y(n177) );
  OAI22XL U432 ( .A0(n438), .A1(n401), .B0(n402), .B1(n439), .Y(n176) );
  OAI22XL U433 ( .A0(n439), .A1(n401), .B0(n402), .B1(n440), .Y(n175) );
  OAI22XL U434 ( .A0(n440), .A1(n401), .B0(n402), .B1(n441), .Y(n174) );
  OAI22XL U435 ( .A0(n441), .A1(n401), .B0(n402), .B1(n400), .Y(n173) );
  OAI22XL U436 ( .A0(n403), .A1(n401), .B0(n402), .B1(n442), .Y(n171) );
  AO21X1 U437 ( .A0(n401), .A1(n402), .B0(n442), .Y(n170) );
  NOR2X1 U438 ( .A(n410), .B(n397), .Y(n169) );
  OAI22XL U439 ( .A0(n443), .A1(n413), .B0(n410), .B1(n444), .Y(n168) );
  XOR2X1 U440 ( .A(n393), .B(n384), .Y(n443) );
  OAI22XL U441 ( .A0(n444), .A1(n413), .B0(n410), .B1(n445), .Y(n167) );
  OAI22XL U442 ( .A0(n445), .A1(n413), .B0(n410), .B1(n446), .Y(n166) );
  OAI22XL U443 ( .A0(n446), .A1(n413), .B0(n410), .B1(n447), .Y(n165) );
  OAI22XL U444 ( .A0(n447), .A1(n413), .B0(n410), .B1(n448), .Y(n164) );
  OAI22XL U445 ( .A0(n448), .A1(n413), .B0(n410), .B1(n449), .Y(n163) );
  OAI22XL U446 ( .A0(n449), .A1(n413), .B0(n410), .B1(n450), .Y(n162) );
  OAI22XL U447 ( .A0(n450), .A1(n413), .B0(n410), .B1(n451), .Y(n161) );
  OAI22XL U448 ( .A0(n451), .A1(n413), .B0(n410), .B1(n452), .Y(n160) );
  OAI22XL U449 ( .A0(n452), .A1(n413), .B0(n410), .B1(n412), .Y(n159) );
  AO21X1 U450 ( .A0(n413), .A1(n410), .B0(n411), .Y(n158) );
  XOR2X1 U451 ( .A(n391), .B(n384), .Y(n453) );
  XOR2X1 U452 ( .A(b[1]), .B(n391), .Y(n454) );
  OAI22XL U453 ( .A0(n455), .A1(n407), .B0(n381), .B1(n456), .Y(n154) );
  OAI22XL U454 ( .A0(n457), .A1(n407), .B0(n381), .B1(n458), .Y(n152) );
  OAI22XL U455 ( .A0(n458), .A1(n407), .B0(n381), .B1(n406), .Y(n151) );
  OAI22XL U456 ( .A0(n409), .A1(n407), .B0(n381), .B1(n459), .Y(n150) );
  OAI22XL U457 ( .A0(n459), .A1(n407), .B0(n381), .B1(n460), .Y(n149) );
  OAI22XL U458 ( .A0(n460), .A1(n407), .B0(n381), .B1(n415), .Y(n148) );
  XOR2X1 U459 ( .A(n388), .B(n384), .Y(n461) );
  XOR2X1 U460 ( .A(b[1]), .B(n388), .Y(n462) );
  OAI22XL U461 ( .A0(n464), .A1(n378), .B0(n382), .B1(n465), .Y(n142) );
  OAI22XL U462 ( .A0(n465), .A1(n378), .B0(n382), .B1(n466), .Y(n141) );
  OAI22XL U463 ( .A0(n466), .A1(n378), .B0(n382), .B1(n467), .Y(n140) );
  OAI22XL U464 ( .A0(n467), .A1(n378), .B0(n382), .B1(n468), .Y(n139) );
  OAI22XL U465 ( .A0(n468), .A1(n378), .B0(n382), .B1(n469), .Y(n138) );
  OAI22XL U466 ( .A0(n469), .A1(n378), .B0(n382), .B1(n470), .Y(n137) );
  OAI22XL U467 ( .A0(n470), .A1(n378), .B0(n382), .B1(n418), .Y(n136) );
  NOR2X1 U468 ( .A(n419), .B(n397), .Y(n134) );
  XOR2X1 U469 ( .A(n386), .B(n384), .Y(n471) );
  OAI22XL U470 ( .A0(n472), .A1(n383), .B0(n419), .B1(n473), .Y(n132) );
  OAI22XL U471 ( .A0(n473), .A1(n383), .B0(n419), .B1(n474), .Y(n131) );
  OAI22XL U472 ( .A0(n474), .A1(n383), .B0(n419), .B1(n475), .Y(n130) );
  OAI22XL U473 ( .A0(n475), .A1(n383), .B0(n419), .B1(n476), .Y(n129) );
  OAI22XL U474 ( .A0(n476), .A1(n383), .B0(n419), .B1(n477), .Y(n128) );
  OAI22XL U475 ( .A0(n477), .A1(n383), .B0(n419), .B1(n478), .Y(n127) );
  OAI22XL U476 ( .A0(n478), .A1(n383), .B0(n419), .B1(n479), .Y(n126) );
  OAI22XL U477 ( .A0(n479), .A1(n383), .B0(n419), .B1(n480), .Y(n125) );
  OAI22XL U478 ( .A0(n480), .A1(n383), .B0(n419), .B1(n421), .Y(n124) );
  AO21X1 U479 ( .A0(n383), .A1(n419), .B0(n420), .Y(n123) );
  OAI21XL U480 ( .A0(n384), .A1(n395), .B0(n404), .Y(n122) );
  OAI32X1 U481 ( .A0(n394), .A1(n384), .A2(n402), .B0(n394), .B1(n401), .Y(
        n121) );
  XOR2X1 U482 ( .A(a[3]), .B(a[2]), .Y(n481) );
  OAI32X1 U483 ( .A0(n393), .A1(n384), .A2(n410), .B0(n393), .B1(n413), .Y(
        n120) );
  XOR2X1 U484 ( .A(a[5]), .B(a[4]), .Y(n482) );
  XOR2X1 U485 ( .A(a[7]), .B(a[6]), .Y(n483) );
  XOR2X1 U486 ( .A(a[9]), .B(a[8]), .Y(n484) );
  OAI32X1 U487 ( .A0(n386), .A1(n384), .A2(n419), .B0(n386), .B1(n383), .Y(
        n117) );
  XOR2X1 U488 ( .A(a[11]), .B(a[10]), .Y(n485) );
endmodule


module geofence_DW01_sub_37 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   \carry[24] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61;

  XOR3X2 U2_24 ( .A(A[24]), .B(n15), .C(\carry[24] ), .Y(DIFF[24]) );
  AOI2BB2X2 U1 ( .B0(n42), .B1(A[10]), .A0N(B[10]), .A1N(n43), .Y(n40) );
  NOR2X2 U2 ( .A(A[10]), .B(n42), .Y(n43) );
  NOR2BX4 U3 ( .AN(n40), .B(A[11]), .Y(n41) );
  AOI2BB2X4 U4 ( .B0(n54), .B1(A[4]), .A0N(B[4]), .A1N(n55), .Y(n52) );
  NOR2X2 U5 ( .A(A[4]), .B(n54), .Y(n55) );
  CLKINVX1 U6 ( .A(A[1]), .Y(n14) );
  CLKINVX1 U7 ( .A(A[5]), .Y(n12) );
  OAI22X1 U8 ( .A0(n44), .A1(n10), .B0(B[9]), .B1(n45), .Y(n42) );
  OAI22X4 U9 ( .A0(n52), .A1(n12), .B0(B[5]), .B1(n53), .Y(n50) );
  CLKAND2X12 U10 ( .A(n52), .B(n12), .Y(n53) );
  AOI2BB2X2 U11 ( .B0(n50), .B1(A[6]), .A0N(B[6]), .A1N(n51), .Y(n48) );
  NOR2X2 U12 ( .A(A[6]), .B(n50), .Y(n51) );
  OAI22X4 U13 ( .A0(n48), .A1(n11), .B0(B[7]), .B1(n49), .Y(n46) );
  INVXL U14 ( .A(A[7]), .Y(n11) );
  AOI2BB2X2 U15 ( .B0(n46), .B1(A[8]), .A0N(B[8]), .A1N(n47), .Y(n44) );
  NOR2X2 U16 ( .A(A[8]), .B(n46), .Y(n47) );
  OAI22X4 U17 ( .A0(n40), .A1(n9), .B0(B[11]), .B1(n41), .Y(n38) );
  AOI2BB2X2 U18 ( .B0(n58), .B1(A[2]), .A0N(B[2]), .A1N(n59), .Y(n56) );
  NOR2X2 U19 ( .A(A[2]), .B(n58), .Y(n59) );
  AOI2BB2X2 U20 ( .B0(n38), .B1(A[12]), .A0N(B[12]), .A1N(n39), .Y(n36) );
  NOR2X2 U21 ( .A(A[12]), .B(n38), .Y(n39) );
  OAI22X4 U22 ( .A0(n36), .A1(n8), .B0(B[13]), .B1(n37), .Y(n34) );
  CLKAND2X8 U23 ( .A(n36), .B(n8), .Y(n37) );
  NOR2X1 U24 ( .A(n56), .B(n13), .Y(n1) );
  NOR2X1 U25 ( .A(B[3]), .B(n57), .Y(n2) );
  OR2X1 U26 ( .A(n1), .B(n2), .Y(n54) );
  AND2X2 U27 ( .A(n56), .B(n13), .Y(n57) );
  NOR2BX4 U28 ( .AN(n44), .B(A[9]), .Y(n45) );
  INVX1 U29 ( .A(A[9]), .Y(n10) );
  INVX1 U30 ( .A(A[11]), .Y(n9) );
  NOR2BX4 U31 ( .AN(n48), .B(A[7]), .Y(n49) );
  NOR2X2 U32 ( .A(A[20]), .B(n22), .Y(n23) );
  NOR2X2 U33 ( .A(A[18]), .B(n26), .Y(n27) );
  NOR2X2 U34 ( .A(A[16]), .B(n30), .Y(n31) );
  NOR2BX4 U35 ( .AN(n24), .B(A[19]), .Y(n25) );
  NOR2BX4 U36 ( .AN(n28), .B(A[17]), .Y(n29) );
  INVX2 U37 ( .A(A[17]), .Y(n6) );
  NOR2BX4 U38 ( .AN(n20), .B(A[21]), .Y(n21) );
  INVX2 U39 ( .A(A[21]), .Y(n4) );
  INVX1 U40 ( .A(B[24]), .Y(n15) );
  NOR2X2 U41 ( .A(A[22]), .B(n18), .Y(n19) );
  INVX3 U42 ( .A(A[3]), .Y(n13) );
  CLKAND2X3 U43 ( .A(n60), .B(n14), .Y(n61) );
  CLKINVX1 U44 ( .A(A[19]), .Y(n5) );
  CLKINVX1 U45 ( .A(A[13]), .Y(n8) );
  NOR2BX4 U46 ( .AN(n32), .B(A[15]), .Y(n33) );
  CLKINVX1 U47 ( .A(A[15]), .Y(n7) );
  NOR2X1 U48 ( .A(A[14]), .B(n34), .Y(n35) );
  NOR2BX4 U49 ( .AN(n16), .B(A[24]), .Y(n17) );
  CLKINVX1 U50 ( .A(A[24]), .Y(n3) );
  OAI22X1 U51 ( .A0(n60), .A1(n14), .B0(B[1]), .B1(n61), .Y(n58) );
  OAI22X4 U52 ( .A0(n16), .A1(n3), .B0(B[23]), .B1(n17), .Y(\carry[24] ) );
  AOI2BB2X2 U53 ( .B0(n30), .B1(A[16]), .A0N(B[16]), .A1N(n31), .Y(n28) );
  OAI22X4 U54 ( .A0(n32), .A1(n7), .B0(B[15]), .B1(n33), .Y(n30) );
  AOI2BB2X4 U55 ( .B0(n18), .B1(A[22]), .A0N(B[22]), .A1N(n19), .Y(n16) );
  AOI2BB2X4 U56 ( .B0(n22), .B1(A[20]), .A0N(B[20]), .A1N(n23), .Y(n20) );
  AOI2BB2X4 U57 ( .B0(n26), .B1(A[18]), .A0N(B[18]), .A1N(n27), .Y(n24) );
  OAI22X4 U58 ( .A0(n28), .A1(n6), .B0(B[17]), .B1(n29), .Y(n26) );
  AOI2BB2X4 U59 ( .B0(n34), .B1(A[14]), .A0N(B[14]), .A1N(n35), .Y(n32) );
  OAI22X4 U60 ( .A0(n20), .A1(n4), .B0(B[21]), .B1(n21), .Y(n18) );
  OAI22X4 U61 ( .A0(n24), .A1(n5), .B0(B[19]), .B1(n25), .Y(n22) );
  NOR2BX1 U62 ( .AN(B[0]), .B(A[0]), .Y(n60) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   N221, N222, N235, N236, N237, \tmp_dot[31] , \VX[0][10] , \VX[0][9] ,
         \VX[0][8] , \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] ,
         \VX[0][3] , \VX[0][2] , \VX[0][1] , \VX[0][0] , \VX[1][10] ,
         \VX[1][9] , \VX[1][8] , \VX[1][7] , \VX[1][6] , \VX[1][5] ,
         \VX[1][4] , \VX[1][3] , \VX[1][2] , \VX[1][1] , \VX[1][0] ,
         \VX[2][10] , \VX[2][9] , \VX[2][8] , \VX[2][7] , \VX[2][6] ,
         \VX[2][5] , \VX[2][4] , \VX[2][3] , \VX[2][2] , \VX[2][1] ,
         \VX[2][0] , \VX[3][10] , \VX[3][9] , \VX[3][8] , \VX[3][7] ,
         \VX[3][6] , \VX[3][5] , \VX[3][4] , \VX[3][3] , \VX[3][2] ,
         \VX[3][1] , \VX[3][0] , \VX[4][10] , \VX[4][9] , \VX[4][8] ,
         \VX[4][7] , \VX[4][6] , \VX[4][5] , \VX[4][4] , \VX[4][3] ,
         \VX[4][2] , \VX[4][1] , \VX[5][10] , \VX[5][9] , \VX[5][8] ,
         \VX[5][7] , \VX[5][6] , \VX[5][5] , \VX[5][4] , \VX[5][3] ,
         \VX[5][2] , \VX[5][1] , \VX[5][0] , \VY[0][10] , \VY[0][9] ,
         \VY[0][8] , \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] ,
         \VY[0][3] , \VY[0][2] , \VY[0][1] , \VY[0][0] , \VY[1][10] ,
         \VY[1][9] , \VY[1][8] , \VY[1][7] , \VY[1][6] , \VY[1][5] ,
         \VY[1][4] , \VY[1][3] , \VY[1][2] , \VY[1][1] , \VY[1][0] ,
         \VY[2][10] , \VY[2][9] , \VY[2][8] , \VY[2][7] , \VY[2][6] ,
         \VY[2][5] , \VY[2][4] , \VY[2][3] , \VY[2][2] , \VY[2][1] ,
         \VY[2][0] , \VY[3][10] , \VY[3][9] , \VY[3][8] , \VY[3][7] ,
         \VY[3][6] , \VY[3][5] , \VY[3][4] , \VY[3][3] , \VY[3][2] ,
         \VY[3][1] , \VY[3][0] , \VY[4][10] , \VY[4][9] , \VY[4][8] ,
         \VY[4][7] , \VY[4][6] , \VY[4][5] , \VY[4][4] , \VY[4][3] ,
         \VY[4][2] , \VY[4][1] , \VY[4][0] , \VY[5][10] , \VY[5][9] ,
         \VY[5][8] , \VY[5][7] , \VY[5][6] , \VY[5][5] , \VY[5][4] ,
         \VY[5][3] , \VY[5][2] , \VY[5][1] , \VY[5][0] , \V0X[1][11] ,
         \V0X[1][10] , \V0X[1][9] , \V0X[1][8] , \V0X[1][7] , \V0X[1][6] ,
         \V0X[1][5] , \V0X[1][4] , \V0X[1][3] , \V0X[1][2] , \V0X[1][1] ,
         \V0X[1][0] , \V0X[2][11] , \V0X[2][10] , \V0X[2][9] , \V0X[2][8] ,
         \V0X[2][7] , \V0X[2][6] , \V0X[2][5] , \V0X[2][4] , \V0X[2][3] ,
         \V0X[2][2] , \V0X[2][1] , \V0X[2][0] , \V0X[3][11] , \V0X[3][10] ,
         \V0X[3][9] , \V0X[3][8] , \V0X[3][7] , \V0X[3][6] , \V0X[3][5] ,
         \V0X[3][4] , \V0X[3][3] , \V0X[3][2] , \V0X[3][1] , \V0X[3][0] ,
         \V0X[4][11] , \V0X[4][10] , \V0X[4][9] , \V0X[4][8] , \V0X[4][7] ,
         \V0X[4][6] , \V0X[4][5] , \V0X[4][4] , \V0X[4][3] , \V0X[4][2] ,
         \V0X[4][1] , \V0X[4][0] , \V0X[5][11] , \V0X[5][10] , \V0X[5][9] ,
         \V0X[5][8] , \V0X[5][7] , \V0X[5][6] , \V0X[5][5] , \V0X[5][4] ,
         \V0X[5][3] , \V0X[5][2] , \V0X[5][1] , \V0X[5][0] , \V0Y[1][11] ,
         \V0Y[1][10] , \V0Y[1][9] , \V0Y[1][8] , \V0Y[1][7] , \V0Y[1][6] ,
         \V0Y[1][5] , \V0Y[1][4] , \V0Y[1][3] , \V0Y[1][2] , \V0Y[1][1] ,
         \V0Y[1][0] , \V0Y[2][11] , \V0Y[2][10] , \V0Y[2][9] , \V0Y[2][8] ,
         \V0Y[2][7] , \V0Y[2][6] , \V0Y[2][5] , \V0Y[2][4] , \V0Y[2][3] ,
         \V0Y[2][2] , \V0Y[2][1] , \V0Y[2][0] , \V0Y[3][11] , \V0Y[3][10] ,
         \V0Y[3][9] , \V0Y[3][8] , \V0Y[3][7] , \V0Y[3][6] , \V0Y[3][5] ,
         \V0Y[3][4] , \V0Y[3][3] , \V0Y[3][2] , \V0Y[3][1] , \V0Y[3][0] ,
         \V0Y[4][11] , \V0Y[4][10] , \V0Y[4][9] , \V0Y[4][8] , \V0Y[4][7] ,
         \V0Y[4][6] , \V0Y[4][5] , \V0Y[4][4] , \V0Y[4][3] , \V0Y[4][2] ,
         \V0Y[4][1] , \V0Y[4][0] , \V0Y[5][11] , \V0Y[5][10] , \V0Y[5][9] ,
         \V0Y[5][8] , \V0Y[5][7] , \V0Y[5][6] , \V0Y[5][5] , \V0Y[5][4] ,
         \V0Y[5][3] , \V0Y[5][2] , \V0Y[5][1] , \V0Y[5][0] , \dot0[31] ,
         \dot1[31] , \dot2[31] , \dot3[31] , \dot4[31] , \dot5[31] , N1367,
         N1368, N1369, N1370, N1371, N1372, N1373, N1374, N1375, N1376, N1377,
         N1378, N1385, N1386, N1387, N1388, N1389, N1390, N1391, N1392, N1393,
         N1394, N1395, N1396, N1403, N1404, N1405, N1406, N1407, N1408, N1409,
         N1410, N1411, N1412, N1413, N1414, N1421, N1422, N1423, N1424, N1425,
         N1426, N1427, N1428, N1429, N1430, N1431, N1432, N1487, N1499, N1500,
         N1501, N1502, N1503, N1504, N1508, n88, n115, n118, n121, n124, n127,
         n130, n133, n136, n139, n142, n154, n190, n217, n220, n223, n226,
         n229, n232, n235, n238, n241, n244, n256, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n406, n408, n409, n410, n411, n412,
         n413, n414, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
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
         n634, n635, n636, n637, n638, n639, n640, n641, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, N1480, N1479, N1478, N1477, N1476,
         N1475, N1474, N1473, N1472, N1471, N1470, N1469, N1468, N1467, N1466,
         N1465, N1464, N1463, N1462, N1461, N1460, N1459, N1458, N1457, N1456,
         N1455, N1454, N1453, N1452, N1451, N1450, N1449, N1448, N1447, N1446,
         N1445, N1444, N1443, N1442, N1441, N1440, N1439, N1438, N1437, N1436,
         N1435, N1434, N1433, N1120, N1119, N1118, N1117, N1116, N1115, N1114,
         N1113, N1112, N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104,
         N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, N1095, N1094,
         N1093, N1092, N1091, N1090, N1089, N1088, N1087, N1086, N1085, N1084,
         N1083, N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074,
         N1073, N1168, N1167, N1166, N1165, N1164, N1163, N1162, N1161, N1160,
         N1159, N1158, N1157, N1156, N1155, N1154, N1153, N1152, N1151, N1150,
         N1149, N1148, N1147, N1146, N1145, N1144, N1143, N1142, N1141, N1140,
         N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, N1131, N1130,
         N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121, N1216,
         N1215, N1214, N1213, N1212, N1211, N1210, N1209, N1208, N1207, N1206,
         N1205, N1204, N1203, N1202, N1201, N1200, N1199, N1198, N1197, N1196,
         N1195, N1194, N1193, N1192, N1191, N1190, N1189, N1188, N1187, N1186,
         N1185, N1184, N1183, N1182, N1181, N1180, N1179, N1178, N1177, N1176,
         N1175, N1174, N1173, N1172, N1171, N1170, N1169, N1264, N1263, N1262,
         N1261, N1260, N1259, N1258, N1257, N1256, N1255, N1254, N1253, N1252,
         N1251, N1250, N1249, N1248, N1247, N1246, N1245, N1244, N1243, N1242,
         N1241, N1240, N1239, N1238, N1237, N1236, N1235, N1234, N1233, N1232,
         N1231, N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222,
         N1221, N1220, N1219, N1218, N1217, N1312, N1311, N1310, N1309, N1308,
         N1307, N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, N1298,
         N1297, N1296, N1295, N1294, N1293, N1292, N1291, N1290, N1289, N1288,
         N1287, N1286, N1285, N1284, N1283, N1282, N1281, N1280, N1279, N1278,
         N1277, N1276, N1275, N1274, N1273, N1272, N1271, N1270, N1269, N1268,
         N1267, N1266, N1265, N1360, N1359, N1358, N1357, N1356, N1355, N1354,
         N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, N1345, N1344,
         N1343, N1342, N1341, N1340, N1339, N1338, N1337, N1336, N1335, N1334,
         N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, N1324,
         N1323, N1322, N1321, N1320, N1319, N1318, N1317, N1316, N1315, N1314,
         N1313, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179;
  wire   [1:0] S;
  wire   [2:0] input_cnt;
  wire   [2:0] idx;
  wire   [2:0] jdx;
  wire   [10:0] targetX;
  wire   [10:0] targetY;
  wire   [11:0] VT0X;
  wire   [11:0] VT0Y;
  wire   [11:0] VT1X;
  wire   [11:0] VT1Y;
  wire   [11:0] VT2X;
  wire   [11:0] VT2Y;
  wire   [11:0] VT3X;
  wire   [11:0] VT3Y;
  wire   [11:0] VT4X;
  wire   [11:0] VT4Y;
  wire   [11:0] VT5X;
  wire   [11:0] VT5Y;
  wire   [11:0] V12X;
  wire   [11:0] V12Y;
  wire   [11:0] V23X;
  wire   [11:0] V23Y;
  wire   [11:0] V34X;
  wire   [11:0] V34Y;
  wire   [11:0] V45X;
  wire   [11:0] V45Y;
  wire   [11:0] V50X;
  wire   [11:0] V50Y;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103, 
        SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115, 
        SYNOPSYS_UNCONNECTED__116, SYNOPSYS_UNCONNECTED__117, 
        SYNOPSYS_UNCONNECTED__118, SYNOPSYS_UNCONNECTED__119, 
        SYNOPSYS_UNCONNECTED__120, SYNOPSYS_UNCONNECTED__121, 
        SYNOPSYS_UNCONNECTED__122, SYNOPSYS_UNCONNECTED__123, 
        SYNOPSYS_UNCONNECTED__124, SYNOPSYS_UNCONNECTED__125, 
        SYNOPSYS_UNCONNECTED__126, SYNOPSYS_UNCONNECTED__127, 
        SYNOPSYS_UNCONNECTED__128, SYNOPSYS_UNCONNECTED__129, 
        SYNOPSYS_UNCONNECTED__130, SYNOPSYS_UNCONNECTED__131, 
        SYNOPSYS_UNCONNECTED__132, SYNOPSYS_UNCONNECTED__133, 
        SYNOPSYS_UNCONNECTED__134, SYNOPSYS_UNCONNECTED__135, 
        SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143, 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152, SYNOPSYS_UNCONNECTED__153, 
        SYNOPSYS_UNCONNECTED__154, SYNOPSYS_UNCONNECTED__155, 
        SYNOPSYS_UNCONNECTED__156, SYNOPSYS_UNCONNECTED__157, 
        SYNOPSYS_UNCONNECTED__158, SYNOPSYS_UNCONNECTED__159, 
        SYNOPSYS_UNCONNECTED__160, SYNOPSYS_UNCONNECTED__161, 
        SYNOPSYS_UNCONNECTED__162, SYNOPSYS_UNCONNECTED__163, 
        SYNOPSYS_UNCONNECTED__164, SYNOPSYS_UNCONNECTED__165, 
        SYNOPSYS_UNCONNECTED__166, SYNOPSYS_UNCONNECTED__167;

  DFFX4 \VY_reg[0][0]  ( .D(n718), .CK(clk), .Q(\VY[0][0] ), .QN(n244) );
  DFFX4 \VX_reg[0][0]  ( .D(n784), .CK(clk), .Q(\VX[0][0] ), .QN(n142) );
  OAI221X2 U527 ( .A0(n925), .A1(n998), .B0(n941), .B1(n974), .C0(n661), .Y(
        N1431) );
  OAI221X2 U529 ( .A0(n925), .A1(n997), .B0(n941), .B1(n973), .C0(n662), .Y(
        N1430) );
  OAI221X2 U531 ( .A0(n925), .A1(n996), .B0(n941), .B1(n972), .C0(n663), .Y(
        N1429) );
  OAI221X2 U533 ( .A0(n925), .A1(n995), .B0(n941), .B1(n971), .C0(n664), .Y(
        N1428) );
  OAI221X2 U535 ( .A0(n925), .A1(n994), .B0(n941), .B1(n970), .C0(n665), .Y(
        N1427) );
  OAI221X2 U537 ( .A0(n925), .A1(n993), .B0(n941), .B1(n969), .C0(n666), .Y(
        N1426) );
  OAI221X2 U539 ( .A0(n925), .A1(n992), .B0(n941), .B1(n968), .C0(n667), .Y(
        N1425) );
  OAI221X2 U541 ( .A0(n925), .A1(n991), .B0(n941), .B1(n967), .C0(n668), .Y(
        N1424) );
  OAI221X2 U543 ( .A0(n925), .A1(n990), .B0(n941), .B1(n966), .C0(n669), .Y(
        N1423) );
  OAI221X2 U545 ( .A0(n925), .A1(n989), .B0(n942), .B1(n965), .C0(n670), .Y(
        N1422) );
  OAI221X2 U547 ( .A0(n925), .A1(n988), .B0(n893), .B1(n964), .C0(n671), .Y(
        N1421) );
  OAI221X2 U575 ( .A0(n924), .A1(n1010), .B0(n942), .B1(n986), .C0(n685), .Y(
        N1395) );
  OAI221X2 U577 ( .A0(n924), .A1(n1009), .B0(n942), .B1(n985), .C0(n686), .Y(
        N1394) );
  OAI221X2 U579 ( .A0(n924), .A1(n1008), .B0(n942), .B1(n984), .C0(n687), .Y(
        N1393) );
  OAI221X2 U581 ( .A0(n924), .A1(n1007), .B0(n942), .B1(n983), .C0(n688), .Y(
        N1392) );
  OAI221X2 U583 ( .A0(n924), .A1(n1006), .B0(n942), .B1(n982), .C0(n689), .Y(
        N1391) );
  OAI221X2 U585 ( .A0(n924), .A1(n1005), .B0(n941), .B1(n981), .C0(n690), .Y(
        N1390) );
  OAI221X2 U587 ( .A0(n924), .A1(n1004), .B0(n941), .B1(n980), .C0(n691), .Y(
        N1389) );
  OAI221X2 U589 ( .A0(n924), .A1(n1003), .B0(n941), .B1(n979), .C0(n692), .Y(
        N1388) );
  OAI221X2 U591 ( .A0(n924), .A1(n1002), .B0(n941), .B1(n978), .C0(n693), .Y(
        N1387) );
  OAI221X2 U593 ( .A0(n924), .A1(n1001), .B0(n941), .B1(n977), .C0(n694), .Y(
        N1386) );
  OAI221X2 U595 ( .A0(n924), .A1(n1000), .B0(n893), .B1(n976), .C0(n695), .Y(
        N1385) );
  OAI221X2 U604 ( .A0(n926), .A1(n998), .B0(n928), .B1(n974), .C0(n697), .Y(
        N1377) );
  geofence_DW01_sub_0 sub_124 ( .A({1'b0, \VY[0][10] , \VY[0][9] , \VY[0][8] , 
        \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , \VY[0][2] , 
        \VY[0][1] , \VY[0][0] }), .B({1'b0, \VY[5][10] , \VY[5][9] , 
        \VY[5][8] , \VY[5][7] , \VY[5][6] , \VY[5][5] , \VY[5][4] , \VY[5][3] , 
        \VY[5][2] , \VY[5][1] , n878}), .CI(1'b0), .DIFF(V50Y) );
  geofence_DW01_sub_1 sub_123 ( .A({1'b0, \VX[0][10] , \VX[0][9] , \VX[0][8] , 
        n875, \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , n861, \VX[0][1] , 
        \VX[0][0] }), .B({1'b0, \VX[5][10] , \VX[5][9] , \VX[5][8] , 
        \VX[5][7] , \VX[5][6] , \VX[5][5] , \VX[5][4] , \VX[5][3] , \VX[5][2] , 
        \VX[5][1] , \VX[5][0] }), .CI(1'b0), .DIFF(V50X) );
  geofence_DW01_sub_2 sub_122 ( .A({1'b0, \VY[5][10] , \VY[5][9] , \VY[5][8] , 
        \VY[5][7] , \VY[5][6] , \VY[5][5] , \VY[5][4] , \VY[5][3] , \VY[5][2] , 
        \VY[5][1] , n877}), .B({1'b0, \VY[4][10] , \VY[4][9] , \VY[4][8] , 
        \VY[4][7] , \VY[4][6] , \VY[4][5] , \VY[4][4] , \VY[4][3] , \VY[4][2] , 
        \VY[4][1] , \VY[4][0] }), .CI(1'b0), .DIFF(V45Y) );
  geofence_DW01_sub_3 sub_121 ( .A({1'b0, \VX[5][10] , \VX[5][9] , \VX[5][8] , 
        \VX[5][7] , \VX[5][6] , \VX[5][5] , \VX[5][4] , \VX[5][3] , \VX[5][2] , 
        \VX[5][1] , \VX[5][0] }), .B({1'b0, \VX[4][10] , \VX[4][9] , 
        \VX[4][8] , \VX[4][7] , \VX[4][6] , \VX[4][5] , \VX[4][4] , \VX[4][3] , 
        \VX[4][2] , \VX[4][1] , n884}), .CI(1'b0), .DIFF(V45X) );
  geofence_DW01_sub_4 sub_120 ( .A({1'b0, \VY[4][10] , \VY[4][9] , \VY[4][8] , 
        \VY[4][7] , \VY[4][6] , \VY[4][5] , \VY[4][4] , \VY[4][3] , \VY[4][2] , 
        \VY[4][1] , n881}), .B({1'b0, \VY[3][10] , \VY[3][9] , \VY[3][8] , 
        \VY[3][7] , \VY[3][6] , \VY[3][5] , \VY[3][4] , \VY[3][3] , \VY[3][2] , 
        \VY[3][1] , n879}), .CI(1'b0), .DIFF(V34Y) );
  geofence_DW01_sub_5 sub_119 ( .A({1'b0, \VX[4][10] , \VX[4][9] , \VX[4][8] , 
        \VX[4][7] , \VX[4][6] , \VX[4][5] , \VX[4][4] , \VX[4][3] , \VX[4][2] , 
        \VX[4][1] , n884}), .B({1'b0, \VX[3][10] , \VX[3][9] , \VX[3][8] , 
        \VX[3][7] , \VX[3][6] , \VX[3][5] , \VX[3][4] , \VX[3][3] , \VX[3][2] , 
        \VX[3][1] , \VX[3][0] }), .CI(1'b0), .DIFF(V34X) );
  geofence_DW01_sub_6 sub_118 ( .A({1'b0, \VY[3][10] , \VY[3][9] , \VY[3][8] , 
        \VY[3][7] , \VY[3][6] , \VY[3][5] , \VY[3][4] , \VY[3][3] , \VY[3][2] , 
        \VY[3][1] , n879}), .B({1'b0, \VY[2][10] , \VY[2][9] , \VY[2][8] , 
        \VY[2][7] , \VY[2][6] , \VY[2][5] , \VY[2][4] , \VY[2][3] , \VY[2][2] , 
        \VY[2][1] , n868}), .CI(1'b0), .DIFF(V23Y) );
  geofence_DW01_sub_7 sub_117 ( .A({1'b0, \VX[3][10] , \VX[3][9] , \VX[3][8] , 
        \VX[3][7] , \VX[3][6] , \VX[3][5] , \VX[3][4] , \VX[3][3] , \VX[3][2] , 
        \VX[3][1] , \VX[3][0] }), .B({1'b0, \VX[2][10] , \VX[2][9] , 
        \VX[2][8] , \VX[2][7] , \VX[2][6] , \VX[2][5] , \VX[2][4] , \VX[2][3] , 
        \VX[2][2] , \VX[2][1] , \VX[2][0] }), .CI(1'b0), .DIFF(V23X) );
  geofence_DW01_sub_8 sub_116 ( .A({1'b0, \VY[2][10] , \VY[2][9] , \VY[2][8] , 
        \VY[2][7] , \VY[2][6] , \VY[2][5] , \VY[2][4] , \VY[2][3] , \VY[2][2] , 
        \VY[2][1] , n867}), .B({1'b0, \VY[1][10] , \VY[1][9] , \VY[1][8] , 
        \VY[1][7] , \VY[1][6] , \VY[1][5] , \VY[1][4] , \VY[1][3] , \VY[1][2] , 
        \VY[1][1] , \VY[1][0] }), .CI(1'b0), .DIFF(V12Y) );
  geofence_DW01_sub_9 sub_115 ( .A({1'b0, \VX[2][10] , \VX[2][9] , \VX[2][8] , 
        \VX[2][7] , \VX[2][6] , \VX[2][5] , \VX[2][4] , \VX[2][3] , \VX[2][2] , 
        \VX[2][1] , \VX[2][0] }), .B({1'b0, \VX[1][10] , \VX[1][9] , 
        \VX[1][8] , \VX[1][7] , \VX[1][6] , \VX[1][5] , \VX[1][4] , \VX[1][3] , 
        \VX[1][2] , \VX[1][1] , \VX[1][0] }), .CI(1'b0), .DIFF(V12X) );
  geofence_DW01_sub_10 sub_111 ( .A({1'b0, \VY[5][10] , \VY[5][9] , \VY[5][8] , 
        \VY[5][7] , \VY[5][6] , \VY[5][5] , \VY[5][4] , \VY[5][3] , \VY[5][2] , 
        \VY[5][1] , n876}), .B({1'b0, 1'b0, targetY[9:4], n864, targetY[2:0]}), 
        .CI(1'b0), .DIFF(VT5Y) );
  geofence_DW01_sub_11 sub_110 ( .A({1'b0, \VX[5][10] , \VX[5][9] , \VX[5][8] , 
        \VX[5][7] , \VX[5][6] , \VX[5][5] , \VX[5][4] , \VX[5][3] , \VX[5][2] , 
        \VX[5][1] , \VX[5][0] }), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), 
        .DIFF(VT5X) );
  geofence_DW01_sub_12 sub_109 ( .A({1'b0, \VY[4][10] , \VY[4][9] , \VY[4][8] , 
        \VY[4][7] , \VY[4][6] , \VY[4][5] , \VY[4][4] , \VY[4][3] , \VY[4][2] , 
        \VY[4][1] , \VY[4][0] }), .B({1'b0, 1'b0, targetY[9:4], n865, 
        targetY[2:0]}), .CI(1'b0), .DIFF(VT4Y) );
  geofence_DW01_sub_13 sub_108 ( .A({1'b0, \VX[4][10] , \VX[4][9] , \VX[4][8] , 
        \VX[4][7] , \VX[4][6] , \VX[4][5] , \VX[4][4] , \VX[4][3] , \VX[4][2] , 
        \VX[4][1] , n883}), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), .DIFF(
        VT4X) );
  geofence_DW01_sub_14 sub_107 ( .A({1'b0, \VY[3][10] , \VY[3][9] , \VY[3][8] , 
        \VY[3][7] , \VY[3][6] , \VY[3][5] , \VY[3][4] , \VY[3][3] , \VY[3][2] , 
        \VY[3][1] , n879}), .B({1'b0, 1'b0, targetY[9:4], n865, targetY[2:0]}), 
        .CI(1'b0), .DIFF(VT3Y) );
  geofence_DW01_sub_15 sub_106 ( .A({1'b0, \VX[3][10] , \VX[3][9] , \VX[3][8] , 
        \VX[3][7] , \VX[3][6] , \VX[3][5] , \VX[3][4] , \VX[3][3] , \VX[3][2] , 
        \VX[3][1] , \VX[3][0] }), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), 
        .DIFF(VT3X) );
  geofence_DW01_sub_16 sub_105 ( .A({1'b0, \VY[2][10] , \VY[2][9] , \VY[2][8] , 
        \VY[2][7] , \VY[2][6] , \VY[2][5] , \VY[2][4] , \VY[2][3] , \VY[2][2] , 
        \VY[2][1] , n869}), .B({1'b0, 1'b0, targetY[9:4], n866, targetY[2:0]}), 
        .CI(1'b0), .DIFF(VT2Y) );
  geofence_DW01_sub_17 sub_104 ( .A({1'b0, \VX[2][10] , \VX[2][9] , \VX[2][8] , 
        \VX[2][7] , \VX[2][6] , \VX[2][5] , \VX[2][4] , \VX[2][3] , \VX[2][2] , 
        \VX[2][1] , \VX[2][0] }), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), 
        .DIFF(VT2X) );
  geofence_DW01_sub_18 sub_103 ( .A({1'b0, \VY[1][10] , \VY[1][9] , \VY[1][8] , 
        \VY[1][7] , \VY[1][6] , \VY[1][5] , \VY[1][4] , \VY[1][3] , \VY[1][2] , 
        \VY[1][1] , \VY[1][0] }), .B({1'b0, 1'b0, targetY[9:4], n866, 
        targetY[2:0]}), .CI(1'b0), .DIFF(VT1Y) );
  geofence_DW01_sub_19 sub_102 ( .A({1'b0, \VX[1][10] , \VX[1][9] , \VX[1][8] , 
        \VX[1][7] , \VX[1][6] , \VX[1][5] , \VX[1][4] , \VX[1][3] , \VX[1][2] , 
        \VX[1][1] , \VX[1][0] }), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), 
        .DIFF(VT1X) );
  geofence_DW01_sub_20 sub_101 ( .A({1'b0, \VY[0][10] , \VY[0][9] , \VY[0][8] , 
        \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , \VY[0][2] , 
        \VY[0][1] , \VY[0][0] }), .B({1'b0, 1'b0, targetY[9:4], n866, 
        targetY[2:0]}), .CI(1'b0), .DIFF(VT0Y) );
  geofence_DW01_sub_21 sub_100 ( .A({1'b0, \VX[0][10] , \VX[0][9] , \VX[0][8] , 
        \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , n861, 
        \VX[0][1] , \VX[0][0] }), .B({1'b0, 1'b0, targetX[9:0]}), .CI(1'b0), 
        .DIFF(VT0X) );
  geofence_DW01_sub_22 sub_97 ( .A({1'b0, \VY[5][10] , \VY[5][9] , \VY[5][8] , 
        \VY[5][7] , \VY[5][6] , \VY[5][5] , \VY[5][4] , \VY[5][3] , \VY[5][2] , 
        \VY[5][1] , n878}), .B({1'b0, \VY[0][10] , \VY[0][9] , \VY[0][8] , 
        \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , \VY[0][2] , 
        \VY[0][1] , \VY[0][0] }), .CI(1'b0), .DIFF({\V0Y[5][11] , \V0Y[5][10] , 
        \V0Y[5][9] , \V0Y[5][8] , \V0Y[5][7] , \V0Y[5][6] , \V0Y[5][5] , 
        \V0Y[5][4] , \V0Y[5][3] , \V0Y[5][2] , \V0Y[5][1] , \V0Y[5][0] }) );
  geofence_DW01_sub_23 sub_96 ( .A({1'b0, \VX[5][10] , \VX[5][9] , \VX[5][8] , 
        \VX[5][7] , \VX[5][6] , \VX[5][5] , \VX[5][4] , \VX[5][3] , \VX[5][2] , 
        \VX[5][1] , \VX[5][0] }), .B({1'b0, \VX[0][10] , \VX[0][9] , 
        \VX[0][8] , \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , 
        n862, \VX[0][1] , \VX[0][0] }), .CI(1'b0), .DIFF({\V0X[5][11] , 
        \V0X[5][10] , \V0X[5][9] , \V0X[5][8] , \V0X[5][7] , \V0X[5][6] , 
        \V0X[5][5] , \V0X[5][4] , \V0X[5][3] , \V0X[5][2] , \V0X[5][1] , 
        \V0X[5][0] }) );
  geofence_DW01_sub_24 sub_95 ( .A({1'b0, \VY[4][10] , \VY[4][9] , \VY[4][8] , 
        \VY[4][7] , \VY[4][6] , \VY[4][5] , \VY[4][4] , \VY[4][3] , \VY[4][2] , 
        \VY[4][1] , \VY[4][0] }), .B({1'b0, \VY[0][10] , \VY[0][9] , 
        \VY[0][8] , \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , 
        \VY[0][2] , \VY[0][1] , \VY[0][0] }), .CI(1'b0), .DIFF({\V0Y[4][11] , 
        \V0Y[4][10] , \V0Y[4][9] , \V0Y[4][8] , \V0Y[4][7] , \V0Y[4][6] , 
        \V0Y[4][5] , \V0Y[4][4] , \V0Y[4][3] , \V0Y[4][2] , \V0Y[4][1] , 
        \V0Y[4][0] }) );
  geofence_DW01_sub_25 sub_94 ( .A({1'b0, \VX[4][10] , \VX[4][9] , \VX[4][8] , 
        \VX[4][7] , \VX[4][6] , \VX[4][5] , \VX[4][4] , \VX[4][3] , \VX[4][2] , 
        \VX[4][1] , n884}), .B({1'b0, \VX[0][10] , \VX[0][9] , \VX[0][8] , 
        \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , n863, 
        \VX[0][1] , \VX[0][0] }), .CI(1'b0), .DIFF({\V0X[4][11] , \V0X[4][10] , 
        \V0X[4][9] , \V0X[4][8] , \V0X[4][7] , \V0X[4][6] , \V0X[4][5] , 
        \V0X[4][4] , \V0X[4][3] , \V0X[4][2] , \V0X[4][1] , \V0X[4][0] }) );
  geofence_DW01_sub_26 sub_93 ( .A({1'b0, \VY[3][10] , \VY[3][9] , \VY[3][8] , 
        \VY[3][7] , \VY[3][6] , \VY[3][5] , \VY[3][4] , \VY[3][3] , \VY[3][2] , 
        \VY[3][1] , n879}), .B({1'b0, \VY[0][10] , \VY[0][9] , \VY[0][8] , 
        \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , \VY[0][2] , 
        \VY[0][1] , \VY[0][0] }), .CI(1'b0), .DIFF({\V0Y[3][11] , \V0Y[3][10] , 
        \V0Y[3][9] , \V0Y[3][8] , \V0Y[3][7] , \V0Y[3][6] , \V0Y[3][5] , 
        \V0Y[3][4] , \V0Y[3][3] , \V0Y[3][2] , \V0Y[3][1] , \V0Y[3][0] }) );
  geofence_DW01_sub_27 sub_92 ( .A({1'b0, \VX[3][10] , \VX[3][9] , \VX[3][8] , 
        \VX[3][7] , \VX[3][6] , \VX[3][5] , \VX[3][4] , \VX[3][3] , \VX[3][2] , 
        \VX[3][1] , \VX[3][0] }), .B({1'b0, \VX[0][10] , \VX[0][9] , 
        \VX[0][8] , \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , 
        n863, \VX[0][1] , \VX[0][0] }), .CI(1'b0), .DIFF({\V0X[3][11] , 
        \V0X[3][10] , \V0X[3][9] , \V0X[3][8] , \V0X[3][7] , \V0X[3][6] , 
        \V0X[3][5] , \V0X[3][4] , \V0X[3][3] , \V0X[3][2] , \V0X[3][1] , 
        \V0X[3][0] }) );
  geofence_DW01_sub_28 sub_91 ( .A({1'b0, \VY[2][10] , \VY[2][9] , \VY[2][8] , 
        \VY[2][7] , \VY[2][6] , \VY[2][5] , \VY[2][4] , \VY[2][3] , \VY[2][2] , 
        \VY[2][1] , n869}), .B({1'b0, \VY[0][10] , \VY[0][9] , \VY[0][8] , 
        \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , \VY[0][2] , 
        \VY[0][1] , \VY[0][0] }), .CI(1'b0), .DIFF({\V0Y[2][11] , \V0Y[2][10] , 
        \V0Y[2][9] , \V0Y[2][8] , \V0Y[2][7] , \V0Y[2][6] , \V0Y[2][5] , 
        \V0Y[2][4] , \V0Y[2][3] , \V0Y[2][2] , \V0Y[2][1] , \V0Y[2][0] }) );
  geofence_DW01_sub_29 sub_90 ( .A({1'b0, \VX[2][10] , \VX[2][9] , \VX[2][8] , 
        \VX[2][7] , \VX[2][6] , \VX[2][5] , \VX[2][4] , \VX[2][3] , \VX[2][2] , 
        \VX[2][1] , \VX[2][0] }), .B({1'b0, \VX[0][10] , \VX[0][9] , 
        \VX[0][8] , n875, \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , n862, 
        \VX[0][1] , \VX[0][0] }), .CI(1'b0), .DIFF({\V0X[2][11] , \V0X[2][10] , 
        \V0X[2][9] , \V0X[2][8] , \V0X[2][7] , \V0X[2][6] , \V0X[2][5] , 
        \V0X[2][4] , \V0X[2][3] , \V0X[2][2] , \V0X[2][1] , \V0X[2][0] }) );
  geofence_DW01_sub_30 r605 ( .A({1'b0, \VY[1][10] , \VY[1][9] , \VY[1][8] , 
        \VY[1][7] , \VY[1][6] , \VY[1][5] , \VY[1][4] , \VY[1][3] , \VY[1][2] , 
        \VY[1][1] , \VY[1][0] }), .B({1'b0, \VY[0][10] , \VY[0][9] , 
        \VY[0][8] , \VY[0][7] , \VY[0][6] , \VY[0][5] , \VY[0][4] , \VY[0][3] , 
        \VY[0][2] , \VY[0][1] , \VY[0][0] }), .CI(1'b0), .DIFF({\V0Y[1][11] , 
        \V0Y[1][10] , \V0Y[1][9] , \V0Y[1][8] , \V0Y[1][7] , \V0Y[1][6] , 
        \V0Y[1][5] , \V0Y[1][4] , \V0Y[1][3] , \V0Y[1][2] , \V0Y[1][1] , 
        \V0Y[1][0] }) );
  geofence_DW01_sub_31 r604 ( .A({1'b0, \VX[1][10] , \VX[1][9] , \VX[1][8] , 
        \VX[1][7] , \VX[1][6] , \VX[1][5] , \VX[1][4] , \VX[1][3] , \VX[1][2] , 
        \VX[1][1] , \VX[1][0] }), .B({1'b0, \VX[0][10] , \VX[0][9] , 
        \VX[0][8] , \VX[0][7] , \VX[0][6] , \VX[0][5] , \VX[0][4] , \VX[0][3] , 
        n862, \VX[0][1] , \VX[0][0] }), .CI(1'b0), .DIFF({\V0X[1][11] , 
        \V0X[1][10] , \V0X[1][9] , \V0X[1][8] , \V0X[1][7] , \V0X[1][6] , 
        \V0X[1][5] , \V0X[1][4] , \V0X[1][3] , \V0X[1][2] , \V0X[1][1] , 
        \V0X[1][0] }) );
  geofence_DW_mult_tc_13 mult_136_2 ( .a({N1403, N1404, N1405, N1406, N1407, 
        N1408, N1409, N1410, N1411, N1412, N1413, N1414}), .b({N1421, N1422, 
        N1423, N1424, N1425, N1426, N1427, N1428, N1429, N1430, N1431, N1432}), 
        .product({N1480, N1479, N1478, N1477, N1476, N1475, N1474, N1473, 
        N1472, N1471, N1470, N1469, N1468, N1467, N1466, N1465, N1464, N1463, 
        N1462, N1461, N1460, N1459, N1458, N1457}) );
  geofence_DW_mult_tc_12 mult_136 ( .a({N1367, N1368, N1369, N1370, N1371, 
        N1372, N1373, N1374, N1375, N1376, N1377, N1378}), .b({N1385, N1386, 
        N1387, N1388, N1389, N1390, N1391, N1392, N1393, N1394, N1395, N1396}), 
        .product({N1456, N1455, N1454, N1453, N1452, N1451, N1450, N1449, 
        N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, N1440, N1439, 
        N1438, N1437, N1436, N1435, N1434, N1433}) );
  geofence_DW01_sub_38 sub_136 ( .A({N1456, N1456, N1455, N1454, N1453, N1452, 
        N1451, N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, 
        N1441, N1440, N1439, N1438, N1437, N1436, N1435, N1434, N1433}), .B({
        N1480, N1480, N1479, N1478, N1477, N1476, N1475, N1474, N1473, N1472, 
        N1471, N1470, N1469, N1468, N1467, N1466, N1465, N1464, N1463, N1462, 
        N1461, N1460, N1459, N1458, N1457}), .CI(1'b0), .DIFF({\tmp_dot[31] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23}) );
  geofence_DW_mult_tc_1 mult_126 ( .a(VT0X), .b({\V0Y[1][11] , \V0Y[1][10] , 
        \V0Y[1][9] , \V0Y[1][8] , \V0Y[1][7] , \V0Y[1][6] , \V0Y[1][5] , 
        \V0Y[1][4] , \V0Y[1][3] , \V0Y[1][2] , \V0Y[1][1] , n860}), .product({
        N1096, N1095, N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, 
        N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, 
        N1076, N1075, N1074, N1073}) );
  geofence_DW_mult_tc_0 mult_126_2 ( .a(VT0Y), .b({\V0X[1][11] , \V0X[1][10] , 
        \V0X[1][9] , \V0X[1][8] , \V0X[1][7] , \V0X[1][6] , \V0X[1][5] , 
        \V0X[1][4] , \V0X[1][3] , \V0X[1][2] , \V0X[1][1] , \V0X[1][0] }), 
        .product({N1120, N1119, N1118, N1117, N1116, N1115, N1114, N1113, 
        N1112, N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, 
        N1102, N1101, N1100, N1099, N1098, N1097}) );
  geofence_DW01_sub_32 sub_126 ( .A({N1096, N1096, N1095, N1094, N1093, N1092, 
        N1091, N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, 
        N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073}), .B({
        N1120, N1120, N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, 
        N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, 
        N1101, N1100, N1099, N1098, N1097}), .CI(1'b0), .DIFF({\dot0[31] , 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47}) );
  geofence_DW_mult_tc_3 mult_127 ( .a(VT1X), .b(V12Y), .product({N1144, N1143, 
        N1142, N1141, N1140, N1139, N1138, N1137, N1136, N1135, N1134, N1133, 
        N1132, N1131, N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, 
        N1122, N1121}) );
  geofence_DW_mult_tc_2 mult_127_2 ( .a(VT1Y), .b(V12X), .product({N1168, 
        N1167, N1166, N1165, N1164, N1163, N1162, N1161, N1160, N1159, N1158, 
        N1157, N1156, N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, 
        N1147, N1146, N1145}) );
  geofence_DW01_sub_33 sub_127 ( .A({N1144, N1144, N1143, N1142, N1141, N1140, 
        N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, N1131, N1130, 
        N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121}), .B({
        N1168, N1168, N1167, N1166, N1165, N1164, N1163, N1162, N1161, N1160, 
        N1159, N1158, N1157, N1156, N1155, N1154, N1153, N1152, N1151, N1150, 
        N1149, N1148, N1147, N1146, N1145}), .CI(1'b0), .DIFF({\dot1[31] , 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71}) );
  geofence_DW_mult_tc_5 mult_128 ( .a(VT2X), .b(V23Y), .product({N1192, N1191, 
        N1190, N1189, N1188, N1187, N1186, N1185, N1184, N1183, N1182, N1181, 
        N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, N1171, 
        N1170, N1169}) );
  geofence_DW_mult_tc_4 mult_128_2 ( .a(VT2Y), .b(V23X), .product({N1216, 
        N1215, N1214, N1213, N1212, N1211, N1210, N1209, N1208, N1207, N1206, 
        N1205, N1204, N1203, N1202, N1201, N1200, N1199, N1198, N1197, N1196, 
        N1195, N1194, N1193}) );
  geofence_DW01_sub_34 sub_128 ( .A({N1192, N1192, N1191, N1190, N1189, N1188, 
        N1187, N1186, N1185, N1184, N1183, N1182, N1181, N1180, N1179, N1178, 
        N1177, N1176, N1175, N1174, N1173, N1172, N1171, N1170, N1169}), .B({
        N1216, N1216, N1215, N1214, N1213, N1212, N1211, N1210, N1209, N1208, 
        N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, N1199, N1198, 
        N1197, N1196, N1195, N1194, N1193}), .CI(1'b0), .DIFF({\dot2[31] , 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95}) );
  geofence_DW_mult_tc_7 mult_129 ( .a(VT3X), .b(V34Y), .product({N1240, N1239, 
        N1238, N1237, N1236, N1235, N1234, N1233, N1232, N1231, N1230, N1229, 
        N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221, N1220, N1219, 
        N1218, N1217}) );
  geofence_DW_mult_tc_6 mult_129_2 ( .a(VT3Y), .b(V34X), .product({N1264, 
        N1263, N1262, N1261, N1260, N1259, N1258, N1257, N1256, N1255, N1254, 
        N1253, N1252, N1251, N1250, N1249, N1248, N1247, N1246, N1245, N1244, 
        N1243, N1242, N1241}) );
  geofence_DW01_sub_35 sub_129 ( .A({N1240, N1240, N1239, N1238, N1237, N1236, 
        N1235, N1234, N1233, N1232, N1231, N1230, N1229, N1228, N1227, N1226, 
        N1225, N1224, N1223, N1222, N1221, N1220, N1219, N1218, N1217}), .B({
        N1264, N1264, N1263, N1262, N1261, N1260, N1259, N1258, N1257, N1256, 
        N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, N1247, N1246, 
        N1245, N1244, N1243, N1242, N1241}), .CI(1'b0), .DIFF({\dot3[31] , 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103, 
        SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115, 
        SYNOPSYS_UNCONNECTED__116, SYNOPSYS_UNCONNECTED__117, 
        SYNOPSYS_UNCONNECTED__118, SYNOPSYS_UNCONNECTED__119}) );
  geofence_DW_mult_tc_9 mult_130 ( .a(VT4X), .b(V45Y), .product({N1288, N1287, 
        N1286, N1285, N1284, N1283, N1282, N1281, N1280, N1279, N1278, N1277, 
        N1276, N1275, N1274, N1273, N1272, N1271, N1270, N1269, N1268, N1267, 
        N1266, N1265}) );
  geofence_DW_mult_tc_8 mult_130_2 ( .a(VT4Y), .b(V45X), .product({N1312, 
        N1311, N1310, N1309, N1308, N1307, N1306, N1305, N1304, N1303, N1302, 
        N1301, N1300, N1299, N1298, N1297, N1296, N1295, N1294, N1293, N1292, 
        N1291, N1290, N1289}) );
  geofence_DW01_sub_36 sub_130 ( .A({N1288, N1288, N1287, N1286, N1285, N1284, 
        N1283, N1282, N1281, N1280, N1279, N1278, N1277, N1276, N1275, N1274, 
        N1273, N1272, N1271, N1270, N1269, N1268, N1267, N1266, N1265}), .B({
        N1312, N1312, N1311, N1310, N1309, N1308, N1307, N1306, N1305, N1304, 
        N1303, N1302, N1301, N1300, N1299, N1298, N1297, N1296, N1295, N1294, 
        N1293, N1292, N1291, N1290, N1289}), .CI(1'b0), .DIFF({\dot4[31] , 
        SYNOPSYS_UNCONNECTED__120, SYNOPSYS_UNCONNECTED__121, 
        SYNOPSYS_UNCONNECTED__122, SYNOPSYS_UNCONNECTED__123, 
        SYNOPSYS_UNCONNECTED__124, SYNOPSYS_UNCONNECTED__125, 
        SYNOPSYS_UNCONNECTED__126, SYNOPSYS_UNCONNECTED__127, 
        SYNOPSYS_UNCONNECTED__128, SYNOPSYS_UNCONNECTED__129, 
        SYNOPSYS_UNCONNECTED__130, SYNOPSYS_UNCONNECTED__131, 
        SYNOPSYS_UNCONNECTED__132, SYNOPSYS_UNCONNECTED__133, 
        SYNOPSYS_UNCONNECTED__134, SYNOPSYS_UNCONNECTED__135, 
        SYNOPSYS_UNCONNECTED__136, SYNOPSYS_UNCONNECTED__137, 
        SYNOPSYS_UNCONNECTED__138, SYNOPSYS_UNCONNECTED__139, 
        SYNOPSYS_UNCONNECTED__140, SYNOPSYS_UNCONNECTED__141, 
        SYNOPSYS_UNCONNECTED__142, SYNOPSYS_UNCONNECTED__143}) );
  geofence_DW_mult_tc_11 mult_131 ( .a(VT5X), .b(V50Y), .product({N1336, N1335, 
        N1334, N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, 
        N1324, N1323, N1322, N1321, N1320, N1319, N1318, N1317, N1316, N1315, 
        N1314, N1313}) );
  geofence_DW_mult_tc_10 mult_131_2 ( .a(VT5Y), .b(V50X), .product({N1360, 
        N1359, N1358, N1357, N1356, N1355, N1354, N1353, N1352, N1351, N1350, 
        N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, N1341, N1340, 
        N1339, N1338, N1337}) );
  geofence_DW01_sub_37 sub_131 ( .A({N1336, N1336, N1335, N1334, N1333, N1332, 
        N1331, N1330, N1329, N1328, N1327, N1326, N1325, N1324, N1323, N1322, 
        N1321, N1320, N1319, N1318, N1317, N1316, N1315, N1314, N1313}), .B({
        N1360, N1360, N1359, N1358, N1357, N1356, N1355, N1354, N1353, N1352, 
        N1351, N1350, N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, 
        N1341, N1340, N1339, N1338, N1337}), .CI(1'b0), .DIFF({\dot5[31] , 
        SYNOPSYS_UNCONNECTED__144, SYNOPSYS_UNCONNECTED__145, 
        SYNOPSYS_UNCONNECTED__146, SYNOPSYS_UNCONNECTED__147, 
        SYNOPSYS_UNCONNECTED__148, SYNOPSYS_UNCONNECTED__149, 
        SYNOPSYS_UNCONNECTED__150, SYNOPSYS_UNCONNECTED__151, 
        SYNOPSYS_UNCONNECTED__152, SYNOPSYS_UNCONNECTED__153, 
        SYNOPSYS_UNCONNECTED__154, SYNOPSYS_UNCONNECTED__155, 
        SYNOPSYS_UNCONNECTED__156, SYNOPSYS_UNCONNECTED__157, 
        SYNOPSYS_UNCONNECTED__158, SYNOPSYS_UNCONNECTED__159, 
        SYNOPSYS_UNCONNECTED__160, SYNOPSYS_UNCONNECTED__161, 
        SYNOPSYS_UNCONNECTED__162, SYNOPSYS_UNCONNECTED__163, 
        SYNOPSYS_UNCONNECTED__164, SYNOPSYS_UNCONNECTED__165, 
        SYNOPSYS_UNCONNECTED__166, SYNOPSYS_UNCONNECTED__167}) );
  DFFQX2 \VX_reg[5][10]  ( .D(n829), .CK(clk), .Q(\VX[5][10] ) );
  DFFQX2 \VX_reg[3][10]  ( .D(n807), .CK(clk), .Q(\VX[3][10] ) );
  DFFQX2 \VX_reg[4][10]  ( .D(n818), .CK(clk), .Q(\VX[4][10] ) );
  DFFX2 \VX_reg[0][10]  ( .D(n774), .CK(clk), .Q(\VX[0][10] ), .QN(n88) );
  DFFQX2 \VX_reg[1][10]  ( .D(n785), .CK(clk), .Q(\VX[1][10] ) );
  DFFQX2 \VY_reg[5][10]  ( .D(n763), .CK(clk), .Q(\VY[5][10] ) );
  DFFQX2 \VY_reg[4][10]  ( .D(n752), .CK(clk), .Q(\VY[4][10] ) );
  DFFQX2 \VY_reg[3][10]  ( .D(n741), .CK(clk), .Q(\VY[3][10] ) );
  DFFQX2 \VY_reg[1][10]  ( .D(n719), .CK(clk), .Q(\VY[1][10] ) );
  DFFQX2 \VX_reg[2][9]  ( .D(n797), .CK(clk), .Q(\VX[2][9] ) );
  DFFX2 \VY_reg[0][10]  ( .D(n708), .CK(clk), .Q(\VY[0][10] ), .QN(n190) );
  DFFQX2 \VY_reg[5][9]  ( .D(n764), .CK(clk), .Q(\VY[5][9] ) );
  DFFQX2 \VX_reg[5][8]  ( .D(n831), .CK(clk), .Q(\VX[5][8] ) );
  DFFQX2 \targetY_reg[9]  ( .D(n840), .CK(clk), .Q(targetY[9]) );
  DFFQX2 \VY_reg[4][9]  ( .D(n753), .CK(clk), .Q(\VY[4][9] ) );
  DFFQX2 \VY_reg[3][9]  ( .D(n742), .CK(clk), .Q(\VY[3][9] ) );
  DFFQX2 \VX_reg[4][9]  ( .D(n819), .CK(clk), .Q(\VX[4][9] ) );
  DFFQX2 \VY_reg[2][9]  ( .D(n731), .CK(clk), .Q(\VY[2][9] ) );
  DFFQX2 \VX_reg[2][8]  ( .D(n798), .CK(clk), .Q(\VX[2][8] ) );
  DFFX2 \VY_reg[0][9]  ( .D(n709), .CK(clk), .Q(\VY[0][9] ), .QN(n217) );
  DFFQX2 \VY_reg[5][8]  ( .D(n765), .CK(clk), .Q(\VY[5][8] ) );
  DFFQX2 \VX_reg[5][7]  ( .D(n832), .CK(clk), .Q(\VX[5][7] ) );
  DFFQX2 \VX_reg[4][8]  ( .D(n820), .CK(clk), .Q(\VX[4][8] ) );
  DFFQX2 \VY_reg[4][8]  ( .D(n754), .CK(clk), .Q(\VY[4][8] ) );
  DFFQX2 \VX_reg[3][9]  ( .D(n808), .CK(clk), .Q(\VX[3][9] ) );
  DFFQX2 \VY_reg[3][8]  ( .D(n743), .CK(clk), .Q(\VY[3][8] ) );
  DFFX2 \VX_reg[0][9]  ( .D(n775), .CK(clk), .Q(\VX[0][9] ), .QN(n115) );
  DFFQX2 \VY_reg[2][7]  ( .D(n733), .CK(clk), .Q(\VY[2][7] ) );
  DFFQX2 \targetX_reg[9]  ( .D(n850), .CK(clk), .Q(targetX[9]) );
  DFFQX2 \VY_reg[5][7]  ( .D(n766), .CK(clk), .Q(\VY[5][7] ) );
  DFFX2 \VY_reg[0][7]  ( .D(n711), .CK(clk), .Q(\VY[0][7] ), .QN(n223) );
  DFFQX2 \VX_reg[5][6]  ( .D(n833), .CK(clk), .Q(\VX[5][6] ) );
  DFFQX2 \VY_reg[4][7]  ( .D(n755), .CK(clk), .Q(\VY[4][7] ) );
  DFFQX2 \VX_reg[3][8]  ( .D(n809), .CK(clk), .Q(\VX[3][8] ) );
  DFFQX2 \VX_reg[4][7]  ( .D(n821), .CK(clk), .Q(\VX[4][7] ) );
  DFFX2 \VX_reg[0][8]  ( .D(n776), .CK(clk), .Q(\VX[0][8] ), .QN(n118) );
  DFFQX2 \VY_reg[3][7]  ( .D(n744), .CK(clk), .Q(\VY[3][7] ) );
  DFFQX2 \VX_reg[2][7]  ( .D(n799), .CK(clk), .Q(\VX[2][7] ) );
  DFFX2 \VY_reg[0][6]  ( .D(n712), .CK(clk), .Q(\VY[0][6] ), .QN(n226) );
  DFFQX2 \VY_reg[5][6]  ( .D(n767), .CK(clk), .Q(\VY[5][6] ) );
  DFFQX2 \VX_reg[3][7]  ( .D(n810), .CK(clk), .Q(\VX[3][7] ) );
  DFFQX2 \VY_reg[4][6]  ( .D(n756), .CK(clk), .Q(\VY[4][6] ) );
  DFFQX2 \VY_reg[3][6]  ( .D(n745), .CK(clk), .Q(\VY[3][6] ) );
  DFFQX2 \VX_reg[4][6]  ( .D(n822), .CK(clk), .Q(\VX[4][6] ) );
  DFFQX2 \VY_reg[2][5]  ( .D(n735), .CK(clk), .Q(\VY[2][5] ) );
  DFFQX2 \VX_reg[2][6]  ( .D(n800), .CK(clk), .Q(\VX[2][6] ) );
  DFFQX2 \VX_reg[3][6]  ( .D(n811), .CK(clk), .Q(\VX[3][6] ) );
  DFFX2 \VX_reg[0][6]  ( .D(n778), .CK(clk), .Q(\VX[0][6] ), .QN(n124) );
  DFFX2 \VY_reg[0][5]  ( .D(n713), .CK(clk), .Q(\VY[0][5] ), .QN(n229) );
  DFFQX2 \VX_reg[4][5]  ( .D(n823), .CK(clk), .Q(\VX[4][5] ) );
  DFFQX2 \VX_reg[2][5]  ( .D(n801), .CK(clk), .Q(\VX[2][5] ) );
  DFFQX2 \targetX_reg[6]  ( .D(n853), .CK(clk), .Q(targetX[6]) );
  DFFX2 \VX_reg[0][5]  ( .D(n779), .CK(clk), .Q(\VX[0][5] ), .QN(n127) );
  DFFQX2 \VX_reg[3][5]  ( .D(n812), .CK(clk), .Q(\VX[3][5] ) );
  DFFQX2 \VY_reg[3][5]  ( .D(n746), .CK(clk), .Q(\VY[3][5] ) );
  DFFQX2 \VY_reg[5][5]  ( .D(n768), .CK(clk), .Q(\VY[5][5] ) );
  DFFQX2 \VY_reg[2][4]  ( .D(n736), .CK(clk), .Q(\VY[2][4] ) );
  DFFQX2 \VX_reg[5][5]  ( .D(n834), .CK(clk), .Q(\VX[5][5] ) );
  DFFX2 \VY_reg[0][4]  ( .D(n714), .CK(clk), .Q(\VY[0][4] ), .QN(n232) );
  DFFQX2 \VY_reg[4][4]  ( .D(n758), .CK(clk), .Q(\VY[4][4] ) );
  DFFX2 \VX_reg[0][4]  ( .D(n780), .CK(clk), .Q(\VX[0][4] ), .QN(n130) );
  DFFQX2 \VX_reg[3][4]  ( .D(n813), .CK(clk), .Q(\VX[3][4] ) );
  DFFQX2 \VX_reg[4][4]  ( .D(n824), .CK(clk), .Q(\VX[4][4] ) );
  DFFQX2 \VX_reg[2][4]  ( .D(n802), .CK(clk), .Q(\VX[2][4] ) );
  DFFQX2 \VY_reg[3][4]  ( .D(n747), .CK(clk), .Q(\VY[3][4] ) );
  DFFQX2 \VY_reg[5][4]  ( .D(n769), .CK(clk), .Q(\VY[5][4] ) );
  DFFQX2 \VY_reg[2][3]  ( .D(n737), .CK(clk), .Q(\VY[2][3] ) );
  DFFQX2 \VY_reg[4][3]  ( .D(n759), .CK(clk), .Q(\VY[4][3] ) );
  DFFQX2 \targetY_reg[4]  ( .D(n845), .CK(clk), .Q(targetY[4]) );
  DFFQX2 \VX_reg[5][4]  ( .D(n835), .CK(clk), .Q(\VX[5][4] ) );
  DFFX2 \VY_reg[0][3]  ( .D(n715), .CK(clk), .Q(\VY[0][3] ), .QN(n235) );
  DFFX2 \VX_reg[0][3]  ( .D(n781), .CK(clk), .Q(\VX[0][3] ), .QN(n133) );
  DFFQX2 \VX_reg[3][3]  ( .D(n814), .CK(clk), .Q(\VX[3][3] ) );
  DFFQX2 \targetX_reg[4]  ( .D(n855), .CK(clk), .Q(targetX[4]) );
  DFFQX2 \VY_reg[3][3]  ( .D(n748), .CK(clk), .Q(\VY[3][3] ) );
  DFFQX2 \VX_reg[4][3]  ( .D(n825), .CK(clk), .Q(\VX[4][3] ) );
  DFFQX2 \VY_reg[5][3]  ( .D(n770), .CK(clk), .Q(\VY[5][3] ) );
  DFFQX2 \VX_reg[2][3]  ( .D(n803), .CK(clk), .Q(\VX[2][3] ) );
  DFFQX2 \VX_reg[5][3]  ( .D(n836), .CK(clk), .Q(\VX[5][3] ) );
  DFFX2 \VY_reg[0][2]  ( .D(n716), .CK(clk), .Q(\VY[0][2] ), .QN(n238) );
  DFFQX2 \VX_reg[3][2]  ( .D(n815), .CK(clk), .Q(\VX[3][2] ) );
  DFFQX2 \VY_reg[4][2]  ( .D(n760), .CK(clk), .Q(\VY[4][2] ) );
  DFFQX2 \VY_reg[3][2]  ( .D(n749), .CK(clk), .Q(\VY[3][2] ) );
  DFFQX2 \targetX_reg[3]  ( .D(n856), .CK(clk), .Q(targetX[3]) );
  DFFQX2 \VY_reg[5][2]  ( .D(n771), .CK(clk), .Q(\VY[5][2] ) );
  DFFQX2 \VX_reg[4][2]  ( .D(n826), .CK(clk), .Q(\VX[4][2] ) );
  DFFQX2 \VY_reg[2][1]  ( .D(n739), .CK(clk), .Q(\VY[2][1] ) );
  DFFQX2 \VX_reg[2][2]  ( .D(n804), .CK(clk), .Q(\VX[2][2] ) );
  DFFQX2 \VX_reg[5][2]  ( .D(n837), .CK(clk), .Q(\VX[5][2] ) );
  DFFQX2 \targetY_reg[2]  ( .D(n847), .CK(clk), .Q(targetY[2]) );
  DFFQX2 \VY_reg[4][1]  ( .D(n761), .CK(clk), .Q(\VY[4][1] ) );
  DFFX2 \VY_reg[0][1]  ( .D(n717), .CK(clk), .Q(\VY[0][1] ), .QN(n241) );
  DFFQX2 \VX_reg[3][1]  ( .D(n816), .CK(clk), .Q(\VX[3][1] ) );
  DFFQX2 \VY_reg[3][1]  ( .D(n750), .CK(clk), .Q(\VY[3][1] ) );
  DFFQX2 \VY_reg[1][0]  ( .D(n729), .CK(clk), .Q(\VY[1][0] ) );
  DFFX2 \VX_reg[0][1]  ( .D(n783), .CK(clk), .Q(\VX[0][1] ), .QN(n139) );
  DFFQX2 \VY_reg[5][1]  ( .D(n772), .CK(clk), .Q(\VY[5][1] ) );
  DFFQX2 \VX_reg[4][1]  ( .D(n827), .CK(clk), .Q(\VX[4][1] ) );
  DFFQX2 \VX_reg[1][0]  ( .D(n795), .CK(clk), .Q(\VX[1][0] ) );
  DFFQX2 \VX_reg[2][1]  ( .D(n805), .CK(clk), .Q(\VX[2][1] ) );
  DFFHQX8 \targetX_reg[0]  ( .D(n859), .CK(clk), .Q(targetX[0]) );
  DFFHQX8 \targetY_reg[0]  ( .D(n849), .CK(clk), .Q(targetY[0]) );
  DFFHQX8 \targetX_reg[1]  ( .D(n858), .CK(clk), .Q(targetX[1]) );
  DFFX1 \VX_reg[2][10]  ( .D(n796), .CK(clk), .Q(\VX[2][10] ), .QN(n154) );
  DFFX1 \VY_reg[2][10]  ( .D(n730), .CK(clk), .Q(\VY[2][10] ), .QN(n256) );
  DFFQX2 \VX_reg[2][0]  ( .D(n806), .CK(clk), .Q(\VX[2][0] ) );
  DFFQX2 \VY_reg[5][0]  ( .D(n773), .CK(clk), .Q(\VY[5][0] ) );
  DFFHQX8 \VX_reg[5][0]  ( .D(n839), .CK(clk), .Q(\VX[5][0] ) );
  DFFX1 \input_cnt_reg[1]  ( .D(N236), .CK(clk), .Q(input_cnt[1]), .QN(n1091)
         );
  DFFX1 \jdx_reg[1]  ( .D(N1503), .CK(clk), .Q(jdx[1]), .QN(n1062) );
  DFFX1 \input_cnt_reg[0]  ( .D(N235), .CK(clk), .Q(input_cnt[0]), .QN(n1090)
         );
  DFFX1 \jdx_reg[2]  ( .D(N1504), .CK(clk), .Q(jdx[2]), .QN(n1063) );
  DFFX1 \jdx_reg[0]  ( .D(N1502), .CK(clk), .Q(jdx[0]), .QN(n1060) );
  DFFX1 \idx_reg[2]  ( .D(N1501), .CK(clk), .Q(idx[2]), .QN(n1088) );
  DFFX1 \S_reg[1]  ( .D(N222), .CK(clk), .Q(S[1]) );
  DFFX1 \S_reg[0]  ( .D(N221), .CK(clk), .Q(S[0]) );
  DFFX1 \input_cnt_reg[2]  ( .D(N237), .CK(clk), .Q(input_cnt[2]), .QN(n1092)
         );
  DFFX1 \VY_reg[1][9]  ( .D(n720), .CK(clk), .Q(\VY[1][9] ), .QN(n1097) );
  DFFX1 \VY_reg[1][6]  ( .D(n723), .CK(clk), .Q(\VY[1][6] ), .QN(n1109) );
  DFFX1 \VY_reg[1][3]  ( .D(n726), .CK(clk), .Q(\VY[1][3] ), .QN(n1121) );
  DFFX1 \VX_reg[1][7]  ( .D(n788), .CK(clk), .Q(\VX[1][7] ), .QN(n1150) );
  DFFX1 \VX_reg[1][4]  ( .D(n791), .CK(clk), .Q(\VX[1][4] ), .QN(n1162) );
  DFFX1 \VY_reg[1][8]  ( .D(n721), .CK(clk), .Q(\VY[1][8] ), .QN(n1101) );
  DFFX1 \VY_reg[1][7]  ( .D(n722), .CK(clk), .Q(\VY[1][7] ), .QN(n1105) );
  DFFX1 \VY_reg[1][5]  ( .D(n724), .CK(clk), .Q(\VY[1][5] ), .QN(n1113) );
  DFFX1 \VY_reg[1][4]  ( .D(n725), .CK(clk), .Q(\VY[1][4] ), .QN(n1117) );
  DFFX1 \VX_reg[1][9]  ( .D(n786), .CK(clk), .Q(\VX[1][9] ), .QN(n1142) );
  DFFX1 \VX_reg[1][8]  ( .D(n787), .CK(clk), .Q(\VX[1][8] ), .QN(n1146) );
  DFFX1 \VX_reg[1][6]  ( .D(n789), .CK(clk), .Q(\VX[1][6] ), .QN(n1154) );
  DFFX1 \VX_reg[1][5]  ( .D(n790), .CK(clk), .Q(\VX[1][5] ), .QN(n1158) );
  DFFX1 \VX_reg[1][3]  ( .D(n792), .CK(clk), .Q(\VX[1][3] ), .QN(n1166) );
  DFFX1 \VX_reg[1][2]  ( .D(n793), .CK(clk), .Q(\VX[1][2] ), .QN(n1170) );
  DFFX1 \VX_reg[0][7]  ( .D(n777), .CK(clk), .Q(\VX[0][7] ), .QN(n121) );
  DFFX1 \idx_reg[0]  ( .D(N1499), .CK(clk), .Q(N1487), .QN(n887) );
  DFFX1 \VX_reg[5][9]  ( .D(n830), .CK(clk), .Q(\VX[5][9] ), .QN(n1141) );
  DFFQX2 \idx_reg[1]  ( .D(N1500), .CK(clk), .Q(idx[1]) );
  DFFQX2 \VY_reg[3][0]  ( .D(n751), .CK(clk), .Q(\VY[3][0] ) );
  DFFQX2 \VY_reg[4][0]  ( .D(n762), .CK(clk), .Q(\VY[4][0] ) );
  DFFQX4 \targetX_reg[2]  ( .D(n857), .CK(clk), .Q(targetX[2]) );
  DFFQX4 \VX_reg[5][1]  ( .D(n838), .CK(clk), .Q(\VX[5][1] ) );
  DFFQX2 \VX_reg[1][1]  ( .D(n794), .CK(clk), .Q(\VX[1][1] ) );
  DFFQX2 \VY_reg[1][1]  ( .D(n728), .CK(clk), .Q(\VY[1][1] ) );
  DFFQX1 \VY_reg[2][8]  ( .D(n732), .CK(clk), .Q(\VY[2][8] ) );
  DFFQX1 \targetY_reg[8]  ( .D(n841), .CK(clk), .Q(targetY[8]) );
  DFFX1 \VY_reg[0][8]  ( .D(n710), .CK(clk), .Q(\VY[0][8] ), .QN(n220) );
  DFFQX1 \targetY_reg[7]  ( .D(n842), .CK(clk), .Q(targetY[7]) );
  DFFQX1 \VY_reg[2][6]  ( .D(n734), .CK(clk), .Q(\VY[2][6] ) );
  DFFQX1 \targetX_reg[8]  ( .D(n851), .CK(clk), .Q(targetX[8]) );
  DFFQX1 \targetY_reg[6]  ( .D(n843), .CK(clk), .Q(targetY[6]) );
  DFFQX1 \targetX_reg[7]  ( .D(n852), .CK(clk), .Q(targetX[7]) );
  DFFQX1 \targetY_reg[5]  ( .D(n844), .CK(clk), .Q(targetY[5]) );
  DFFQX1 \targetX_reg[5]  ( .D(n854), .CK(clk), .Q(targetX[5]) );
  DFFQX1 \targetY_reg[3]  ( .D(n846), .CK(clk), .Q(targetY[3]) );
  DFFQX2 \VY_reg[4][5]  ( .D(n757), .CK(clk), .Q(\VY[4][5] ) );
  DFFX2 \VX_reg[4][0]  ( .D(n828), .CK(clk), .Q(n883), .QN(n882) );
  DFFQX4 \targetY_reg[1]  ( .D(n848), .CK(clk), .Q(targetY[1]) );
  DFFQX2 \VY_reg[1][2]  ( .D(n727), .CK(clk), .Q(\VY[1][2] ) );
  DFFQX4 \VX_reg[3][0]  ( .D(n817), .CK(clk), .Q(\VX[3][0] ) );
  DFFHQX8 \VY_reg[2][0]  ( .D(n740), .CK(clk), .Q(\VY[2][0] ) );
  DFFQX2 \VY_reg[2][2]  ( .D(n738), .CK(clk), .Q(\VY[2][2] ) );
  DFFX2 \VX_reg[0][2]  ( .D(n782), .CK(clk), .Q(\VX[0][2] ), .QN(n136) );
  BUFX4 U859 ( .A(\VY[5][0] ), .Y(n876) );
  CLKBUFX3 U860 ( .A(\V0Y[1][0] ), .Y(n860) );
  INVX3 U861 ( .A(n413), .Y(n1087) );
  CLKBUFX3 U862 ( .A(\VX[0][2] ), .Y(n861) );
  CLKBUFX3 U863 ( .A(\VX[0][2] ), .Y(n862) );
  CLKBUFX2 U864 ( .A(\VX[0][2] ), .Y(n863) );
  CLKBUFX3 U865 ( .A(targetY[3]), .Y(n864) );
  CLKBUFX3 U866 ( .A(targetY[3]), .Y(n865) );
  CLKBUFX2 U867 ( .A(targetY[3]), .Y(n866) );
  BUFX16 U868 ( .A(\VY[2][0] ), .Y(n867) );
  CLKBUFX2 U869 ( .A(\VY[2][0] ), .Y(n868) );
  CLKBUFX4 U870 ( .A(\VY[2][0] ), .Y(n869) );
  OAI221XL U871 ( .A0(n926), .A1(n999), .B0(n928), .B1(n975), .C0(n696), .Y(
        N1378) );
  OAI221X1 U872 ( .A0(n927), .A1(n1010), .B0(n929), .B1(n986), .C0(n673), .Y(
        N1413) );
  OAI221XL U873 ( .A0(n927), .A1(n1009), .B0(n929), .B1(n985), .C0(n674), .Y(
        N1412) );
  INVX3 U874 ( .A(n882), .Y(n884) );
  OAI211X4 U875 ( .A0(n499), .A1(n500), .B0(n1013), .C0(n501), .Y(n327) );
  BUFX6 U876 ( .A(\VY[3][0] ), .Y(n879) );
  NOR2X1 U877 ( .A(n1063), .B(jdx[0]), .Y(n404) );
  INVX3 U878 ( .A(n886), .Y(n423) );
  NAND2X4 U879 ( .A(n1012), .B(n956), .Y(n870) );
  NAND2X4 U880 ( .A(n1012), .B(n955), .Y(n871) );
  OAI211X1 U881 ( .A0(n542), .A1(n962), .B0(n543), .C0(n1013), .Y(n369) );
  OA21X4 U882 ( .A0(n1089), .A1(n637), .B0(n1013), .Y(n872) );
  AND2X2 U883 ( .A(n1058), .B(n633), .Y(n873) );
  NOR2X4 U884 ( .A(n872), .B(reset), .Y(n874) );
  OA21X1 U885 ( .A0(n634), .A1(n887), .B0(jdx[0]), .Y(n654) );
  AND3X1 U886 ( .A(n889), .B(n1088), .C(n887), .Y(n892) );
  INVXL U887 ( .A(n121), .Y(n875) );
  CLKBUFX3 U888 ( .A(\VY[5][0] ), .Y(n877) );
  CLKBUFX3 U889 ( .A(\VY[5][0] ), .Y(n878) );
  BUFX12 U890 ( .A(N1508), .Y(valid) );
  NOR2BX1 U891 ( .AN(S[1]), .B(S[0]), .Y(N1508) );
  CLKBUFX2 U892 ( .A(\VY[4][0] ), .Y(n881) );
  INVXL U893 ( .A(\VX[1][1] ), .Y(n885) );
  NOR2X4 U894 ( .A(\tmp_dot[31] ), .B(n1014), .Y(n498) );
  AND2X2 U895 ( .A(n961), .B(n498), .Y(n497) );
  NOR2X1 U896 ( .A(n1088), .B(N1487), .Y(n412) );
  CLKBUFX3 U897 ( .A(n412), .Y(n932) );
  CLKBUFX3 U898 ( .A(n886), .Y(n926) );
  CLKBUFX3 U899 ( .A(n341), .Y(n958) );
  CLKBUFX3 U900 ( .A(n404), .Y(n944) );
  CLKBUFX3 U901 ( .A(n930), .Y(n931) );
  OAI221XL U902 ( .A0(n927), .A1(n1011), .B0(n929), .B1(n987), .C0(n672), .Y(
        N1414) );
  AOI222XL U903 ( .A0(\V0Y[3][0] ), .A1(n936), .B0(\V0Y[5][0] ), .B1(n934), 
        .C0(\V0Y[4][0] ), .C1(n931), .Y(n672) );
  CLKBUFX3 U904 ( .A(n383), .Y(n956) );
  OR2X1 U905 ( .A(n1062), .B(jdx[0]), .Y(n888) );
  INVX4 U906 ( .A(n888), .Y(n419) );
  AND3X6 U907 ( .A(\dot1[31] ), .B(\dot0[31] ), .C(\dot2[31] ), .Y(n643) );
  OAI211X1 U908 ( .A0(n558), .A1(n962), .B0(n559), .C0(n1013), .Y(n383) );
  NAND4X6 U909 ( .A(\dot4[31] ), .B(\dot3[31] ), .C(\dot5[31] ), .D(n643), .Y(
        n890) );
  AND2X2 U910 ( .A(n369), .B(n498), .Y(n540) );
  CLKBUFX3 U911 ( .A(n354), .Y(n908) );
  CLKBUFX3 U912 ( .A(n404), .Y(n943) );
  CLKBUFX3 U913 ( .A(n369), .Y(n957) );
  AO21X1 U914 ( .A0(n953), .A1(n895), .B0(n962), .Y(n501) );
  CLKBUFX3 U915 ( .A(n327), .Y(n960) );
  CLKINVX1 U916 ( .A(\V0X[2][3] ), .Y(n996) );
  AOI222XL U917 ( .A0(\V0X[3][0] ), .A1(n937), .B0(\V0X[5][0] ), .B1(n935), 
        .C0(\V0X[4][0] ), .C1(n932), .Y(n696) );
  OAI221XL U918 ( .A0(n925), .A1(n999), .B0(n941), .B1(n975), .C0(n660), .Y(
        N1432) );
  AOI222XL U919 ( .A0(\V0X[3][0] ), .A1(n950), .B0(\V0X[5][0] ), .B1(n947), 
        .C0(\V0X[4][0] ), .C1(n943), .Y(n660) );
  CLKBUFX3 U920 ( .A(n397), .Y(n954) );
  CLKINVX1 U921 ( .A(idx[1]), .Y(n889) );
  NAND2X1 U922 ( .A(idx[1]), .B(n887), .Y(n886) );
  AND2XL U923 ( .A(n1012), .B(n957), .Y(n891) );
  AND2X1 U924 ( .A(n961), .B(n1012), .Y(n329) );
  AND2X1 U925 ( .A(n955), .B(n498), .Y(n633) );
  AND2X1 U926 ( .A(n956), .B(n498), .Y(n556) );
  CLKBUFX2 U927 ( .A(n886), .Y(n927) );
  CLKBUFX2 U928 ( .A(n402), .Y(n949) );
  CLKBUFX2 U929 ( .A(n341), .Y(n959) );
  CLKBUFX2 U930 ( .A(n404), .Y(n945) );
  INVX3 U931 ( .A(n499), .Y(n1012) );
  CLKINVX1 U932 ( .A(n557), .Y(n1061) );
  CLKINVX1 U933 ( .A(n541), .Y(n1059) );
  NOR2X1 U934 ( .A(n1088), .B(n887), .Y(n411) );
  INVX1 U935 ( .A(n906), .Y(n963) );
  OAI221XL U936 ( .A0(n926), .A1(n995), .B0(n928), .B1(n971), .C0(n700), .Y(
        N1374) );
  INVX1 U937 ( .A(\V0X[2][5] ), .Y(n994) );
  INVX1 U938 ( .A(\V0X[2][4] ), .Y(n995) );
  INVX1 U939 ( .A(\V0Y[2][3] ), .Y(n1008) );
  INVXL U940 ( .A(\V0X[1][1] ), .Y(n974) );
  OAI221XL U941 ( .A0(n927), .A1(n1007), .B0(n929), .B1(n983), .C0(n676), .Y(
        N1410) );
  INVX1 U942 ( .A(\V0Y[2][5] ), .Y(n1006) );
  INVXL U943 ( .A(\V0Y[1][1] ), .Y(n986) );
  INVX1 U944 ( .A(\V0Y[2][2] ), .Y(n1009) );
  INVX1 U945 ( .A(\V0Y[2][1] ), .Y(n1010) );
  INVX1 U946 ( .A(\V0Y[2][4] ), .Y(n1007) );
  OAI221XL U947 ( .A0(n926), .A1(n993), .B0(n928), .B1(n969), .C0(n702), .Y(
        N1372) );
  INVX1 U948 ( .A(\V0X[2][7] ), .Y(n992) );
  INVX1 U949 ( .A(\V0X[2][6] ), .Y(n993) );
  OAI221XL U950 ( .A0(n926), .A1(n991), .B0(n928), .B1(n967), .C0(n704), .Y(
        N1370) );
  OAI221XL U951 ( .A0(n927), .A1(n1005), .B0(n929), .B1(n981), .C0(n678), .Y(
        N1408) );
  OAI221XL U952 ( .A0(n927), .A1(n1003), .B0(n929), .B1(n979), .C0(n680), .Y(
        N1406) );
  OAI221XL U953 ( .A0(n926), .A1(n989), .B0(n928), .B1(n965), .C0(n706), .Y(
        N1368) );
  INVXL U954 ( .A(\V0X[1][9] ), .Y(n966) );
  OAI221XL U955 ( .A0(n926), .A1(n1001), .B0(n929), .B1(n977), .C0(n682), .Y(
        N1404) );
  NAND2X1 U956 ( .A(n951), .B(n1063), .Y(n541) );
  OAI211XL U957 ( .A0(n635), .A1(n962), .B0(n636), .C0(n1013), .Y(n397) );
  INVXL U958 ( .A(\VY[5][1] ), .Y(n1130) );
  INVXL U959 ( .A(\VY[5][2] ), .Y(n1126) );
  INVXL U960 ( .A(\VY[5][3] ), .Y(n1122) );
  INVXL U961 ( .A(\VY[5][5] ), .Y(n1114) );
  INVXL U962 ( .A(\VY[5][6] ), .Y(n1110) );
  INVXL U963 ( .A(\VY[5][7] ), .Y(n1106) );
  INVXL U964 ( .A(\VX[5][2] ), .Y(n1169) );
  INVXL U965 ( .A(\VX[5][3] ), .Y(n1165) );
  INVXL U966 ( .A(\VX[5][4] ), .Y(n1161) );
  INVXL U967 ( .A(\VX[5][6] ), .Y(n1153) );
  INVXL U968 ( .A(\VX[5][7] ), .Y(n1149) );
  INVXL U969 ( .A(\VX[5][8] ), .Y(n1145) );
  INVXL U970 ( .A(n881), .Y(n1136) );
  OA22XL U971 ( .A0(n901), .A1(n1047), .B0(n1035), .B1(n870), .Y(n394) );
  INVXL U972 ( .A(\VY[4][1] ), .Y(n1132) );
  INVXL U973 ( .A(\VY[4][2] ), .Y(n1128) );
  INVXL U974 ( .A(\VY[4][3] ), .Y(n1124) );
  INVXL U975 ( .A(\VY[4][4] ), .Y(n1120) );
  INVXL U976 ( .A(\VY[4][5] ), .Y(n1116) );
  INVXL U977 ( .A(\VY[4][6] ), .Y(n1112) );
  INVXL U978 ( .A(\VY[4][7] ), .Y(n1108) );
  INVXL U979 ( .A(\VY[4][8] ), .Y(n1104) );
  INVXL U980 ( .A(\VY[4][9] ), .Y(n1100) );
  INVXL U981 ( .A(n884), .Y(n1179) );
  OA22XL U982 ( .A0(n901), .A1(n1036), .B0(n870), .B1(n1025), .Y(n555) );
  INVXL U983 ( .A(\VX[4][1] ), .Y(n1175) );
  INVXL U984 ( .A(\VX[4][2] ), .Y(n1172) );
  INVXL U985 ( .A(\VX[4][3] ), .Y(n1168) );
  INVXL U986 ( .A(\VX[4][4] ), .Y(n1164) );
  INVXL U987 ( .A(\VX[4][5] ), .Y(n1160) );
  INVXL U988 ( .A(\VX[4][6] ), .Y(n1156) );
  INVXL U989 ( .A(\VX[4][7] ), .Y(n1152) );
  INVXL U990 ( .A(\VX[4][8] ), .Y(n1148) );
  INVXL U991 ( .A(\VX[4][9] ), .Y(n1144) );
  INVXL U992 ( .A(\VY[3][0] ), .Y(n1135) );
  OA22XL U993 ( .A0(n904), .A1(n1047), .B0(n1035), .B1(n905), .Y(n380) );
  INVXL U994 ( .A(\VY[3][1] ), .Y(n1131) );
  INVXL U995 ( .A(\VY[3][2] ), .Y(n1127) );
  INVXL U996 ( .A(\VY[3][3] ), .Y(n1123) );
  INVXL U997 ( .A(\VY[3][4] ), .Y(n1119) );
  INVXL U998 ( .A(\VY[3][5] ), .Y(n1115) );
  INVXL U999 ( .A(\VY[3][6] ), .Y(n1111) );
  INVXL U1000 ( .A(\VY[3][7] ), .Y(n1107) );
  INVXL U1001 ( .A(\VY[3][8] ), .Y(n1103) );
  INVXL U1002 ( .A(\VY[3][9] ), .Y(n1099) );
  INVXL U1003 ( .A(\VX[3][0] ), .Y(n1178) );
  OA22XL U1004 ( .A0(n904), .A1(n1036), .B0(n905), .B1(n1025), .Y(n539) );
  INVXL U1005 ( .A(\VX[3][1] ), .Y(n1174) );
  INVXL U1006 ( .A(\VX[3][2] ), .Y(n1171) );
  INVXL U1007 ( .A(\VX[3][3] ), .Y(n1167) );
  INVXL U1008 ( .A(\VX[3][4] ), .Y(n1163) );
  INVXL U1009 ( .A(\VX[3][5] ), .Y(n1159) );
  INVXL U1010 ( .A(\VX[3][6] ), .Y(n1155) );
  INVXL U1011 ( .A(\VX[3][7] ), .Y(n1151) );
  INVXL U1012 ( .A(\VX[3][8] ), .Y(n1147) );
  INVXL U1013 ( .A(\VX[3][9] ), .Y(n1143) );
  INVXL U1014 ( .A(\VX[4][10] ), .Y(n1140) );
  INVXL U1015 ( .A(\VY[4][10] ), .Y(n1096) );
  INVXL U1016 ( .A(\VX[3][10] ), .Y(n1139) );
  INVXL U1017 ( .A(\VY[3][10] ), .Y(n1095) );
  INVXL U1018 ( .A(n877), .Y(n1134) );
  OA22XL U1019 ( .A0(n898), .A1(n1047), .B0(n1035), .B1(n871), .Y(n480) );
  INVXL U1020 ( .A(\VY[5][4] ), .Y(n1118) );
  INVXL U1021 ( .A(\VY[5][8] ), .Y(n1102) );
  INVXL U1022 ( .A(\VX[5][0] ), .Y(n1176) );
  OA22XL U1023 ( .A0(n898), .A1(n1036), .B0(n871), .B1(n1025), .Y(n629) );
  INVXL U1024 ( .A(\VX[5][1] ), .Y(n1173) );
  INVXL U1025 ( .A(\VX[5][5] ), .Y(n1157) );
  AOI2BB2XL U1026 ( .B0(X[2]), .B1(n343), .A0N(n1038), .A1N(n340), .Y(n509) );
  AOI2BB2XL U1027 ( .B0(X[3]), .B1(n914), .A0N(n1039), .A1N(n916), .Y(n508) );
  AOI2BB2XL U1028 ( .B0(X[5]), .B1(n343), .A0N(n1041), .A1N(n340), .Y(n506) );
  AOI2BB2XL U1029 ( .B0(X[6]), .B1(n914), .A0N(n1042), .A1N(n916), .Y(n505) );
  AOI2BB2XL U1030 ( .B0(X[8]), .B1(n343), .A0N(n1044), .A1N(n340), .Y(n503) );
  AOI2BB2XL U1031 ( .B0(X[9]), .B1(n914), .A0N(n1045), .A1N(n916), .Y(n502) );
  AOI2BB2XL U1032 ( .B0(n343), .B1(Y[1]), .A0N(n1048), .A1N(n340), .Y(n351) );
  AOI2BB2XL U1033 ( .B0(n914), .B1(Y[2]), .A0N(n1049), .A1N(n916), .Y(n350) );
  AOI2BB2XL U1034 ( .B0(n343), .B1(Y[4]), .A0N(n1051), .A1N(n340), .Y(n348) );
  AOI2BB2XL U1035 ( .B0(n914), .B1(Y[5]), .A0N(n1052), .A1N(n916), .Y(n347) );
  AOI2BB2XL U1036 ( .B0(n343), .B1(Y[7]), .A0N(n1054), .A1N(n340), .Y(n345) );
  AOI2BB2XL U1037 ( .B0(n914), .B1(Y[8]), .A0N(n1055), .A1N(n916), .Y(n344) );
  INVXL U1038 ( .A(\VX[1][10] ), .Y(n1138) );
  INVXL U1039 ( .A(\VY[1][10] ), .Y(n1093) );
  AOI2BB2XL U1040 ( .B0(n906), .B1(n868), .A0N(n911), .A1N(n1075), .Y(n366) );
  AOI2BB2XL U1041 ( .B0(n906), .B1(\VY[2][1] ), .A0N(n909), .A1N(n1076), .Y(
        n365) );
  AOI2BB2XL U1042 ( .B0(n906), .B1(\VY[2][2] ), .A0N(n911), .A1N(n1077), .Y(
        n364) );
  AOI2BB2XL U1043 ( .B0(n906), .B1(\VY[2][3] ), .A0N(n909), .A1N(n1078), .Y(
        n363) );
  AOI2BB2XL U1044 ( .B0(n906), .B1(\VY[2][4] ), .A0N(n911), .A1N(n1079), .Y(
        n362) );
  AOI2BB2XL U1045 ( .B0(n906), .B1(\VY[2][5] ), .A0N(n909), .A1N(n1080), .Y(
        n361) );
  AOI2BB2XL U1046 ( .B0(n906), .B1(\VY[2][6] ), .A0N(n911), .A1N(n1081), .Y(
        n360) );
  AOI2BB2XL U1047 ( .B0(n906), .B1(\VY[2][7] ), .A0N(n909), .A1N(n1082), .Y(
        n359) );
  AOI2BB2XL U1048 ( .B0(n906), .B1(\VY[2][8] ), .A0N(n911), .A1N(n1083), .Y(
        n358) );
  AOI2BB2XL U1049 ( .B0(n906), .B1(\VY[2][9] ), .A0N(n909), .A1N(n1084), .Y(
        n356) );
  AOI2BB2XL U1050 ( .B0(\VX[2][0] ), .B1(n906), .A0N(n911), .A1N(n1064), .Y(
        n525) );
  AOI2BB2XL U1051 ( .B0(\VX[2][1] ), .B1(n906), .A0N(n909), .A1N(n1065), .Y(
        n524) );
  AOI2BB2XL U1052 ( .B0(\VX[2][2] ), .B1(n906), .A0N(n911), .A1N(n1066), .Y(
        n523) );
  AOI2BB2XL U1053 ( .B0(\VX[2][3] ), .B1(n906), .A0N(n911), .A1N(n1067), .Y(
        n522) );
  AOI2BB2XL U1054 ( .B0(\VX[2][4] ), .B1(n906), .A0N(n911), .A1N(n1068), .Y(
        n521) );
  AOI2BB2XL U1055 ( .B0(\VX[2][5] ), .B1(n906), .A0N(n911), .A1N(n1069), .Y(
        n520) );
  AOI2BB2XL U1056 ( .B0(\VX[2][6] ), .B1(n906), .A0N(n911), .A1N(n1070), .Y(
        n519) );
  AOI2BB2XL U1057 ( .B0(\VX[2][7] ), .B1(n906), .A0N(n911), .A1N(n1071), .Y(
        n518) );
  AOI2BB2XL U1058 ( .B0(\VX[2][8] ), .B1(n906), .A0N(n911), .A1N(n1072), .Y(
        n517) );
  AOI2BB2XL U1059 ( .B0(\VX[2][9] ), .B1(n906), .A0N(n911), .A1N(n1073), .Y(
        n516) );
  AOI2BB2XL U1060 ( .B0(n915), .B1(Y[3]), .A0N(n1050), .A1N(n917), .Y(n349) );
  AOI2BB2XL U1061 ( .B0(n915), .B1(Y[6]), .A0N(n1053), .A1N(n917), .Y(n346) );
  AOI2BB2XL U1062 ( .B0(n915), .B1(Y[9]), .A0N(n1056), .A1N(n917), .Y(n342) );
  AOI2BB2XL U1063 ( .B0(X[1]), .B1(n343), .A0N(n1037), .A1N(n917), .Y(n510) );
  AOI2BB2XL U1064 ( .B0(X[4]), .B1(n915), .A0N(n1040), .A1N(n917), .Y(n507) );
  AOI2BB2XL U1065 ( .B0(X[7]), .B1(n915), .A0N(n1043), .A1N(n917), .Y(n504) );
  NOR3X1 U1066 ( .A(idx[1]), .B(idx[2]), .C(n887), .Y(n413) );
  OR3X1 U1067 ( .A(jdx[1]), .B(jdx[2]), .C(n1060), .Y(n893) );
  AO22XL U1068 ( .A0(targetX[0]), .A1(n872), .B0(n874), .B1(X[0]), .Y(n859) );
  AO22XL U1069 ( .A0(targetY[0]), .A1(n872), .B0(n874), .B1(Y[0]), .Y(n849) );
  AO22XL U1070 ( .A0(targetX[1]), .A1(n872), .B0(n874), .B1(X[1]), .Y(n858) );
  AO22XL U1071 ( .A0(targetX[2]), .A1(n872), .B0(n874), .B1(X[2]), .Y(n857) );
  AO22XL U1072 ( .A0(targetX[3]), .A1(n872), .B0(n874), .B1(X[3]), .Y(n856) );
  AO22XL U1073 ( .A0(targetX[4]), .A1(n872), .B0(n874), .B1(X[4]), .Y(n855) );
  AO22XL U1074 ( .A0(targetX[5]), .A1(n872), .B0(n874), .B1(X[5]), .Y(n854) );
  AO22XL U1075 ( .A0(targetX[6]), .A1(n872), .B0(n874), .B1(X[6]), .Y(n853) );
  AO22XL U1076 ( .A0(targetX[7]), .A1(n872), .B0(n874), .B1(X[7]), .Y(n852) );
  AO22XL U1077 ( .A0(targetX[8]), .A1(n872), .B0(n874), .B1(X[8]), .Y(n851) );
  AO22XL U1078 ( .A0(targetX[9]), .A1(n872), .B0(n874), .B1(X[9]), .Y(n850) );
  AO22XL U1079 ( .A0(targetY[1]), .A1(n872), .B0(n874), .B1(Y[1]), .Y(n848) );
  AO22XL U1080 ( .A0(targetY[2]), .A1(n872), .B0(n874), .B1(Y[2]), .Y(n847) );
  AO22XL U1081 ( .A0(n865), .A1(n872), .B0(n874), .B1(Y[3]), .Y(n846) );
  AO22XL U1082 ( .A0(targetY[4]), .A1(n872), .B0(n874), .B1(Y[4]), .Y(n845) );
  AO22XL U1083 ( .A0(targetY[5]), .A1(n872), .B0(n874), .B1(Y[5]), .Y(n844) );
  AO22XL U1084 ( .A0(targetY[6]), .A1(n872), .B0(n874), .B1(Y[6]), .Y(n843) );
  AO22XL U1085 ( .A0(targetY[7]), .A1(n872), .B0(n874), .B1(Y[7]), .Y(n842) );
  AO22XL U1086 ( .A0(targetY[8]), .A1(n872), .B0(n874), .B1(Y[8]), .Y(n841) );
  AO22XL U1087 ( .A0(targetY[9]), .A1(n872), .B0(n874), .B1(Y[9]), .Y(n840) );
  AOI211XL U1088 ( .A0(idx[1]), .A1(n634), .B0(n423), .C0(n658), .Y(n657) );
  NOR3XL U1089 ( .A(n634), .B(idx[1]), .C(n887), .Y(n658) );
  AOI22XL U1090 ( .A0(idx[2]), .A1(n656), .B0(n545), .B1(n1058), .Y(n655) );
  XNOR2XL U1091 ( .A(n1088), .B(idx[1]), .Y(n651) );
  AOI2BB1XL U1092 ( .A0N(jdx[1]), .A1N(n1060), .B0(n419), .Y(n652) );
  XNOR2XL U1093 ( .A(N1487), .B(n1058), .Y(n659) );
  NOR2X1 U1094 ( .A(n1092), .B(input_cnt[1]), .Y(n544) );
  CLKINVX1 U1095 ( .A(n563), .Y(n1074) );
  AOI2BB2XL U1096 ( .B0(n413), .B1(\VX[1][10] ), .A0N(n927), .A1N(n154), .Y(
        n564) );
  CLKINVX1 U1097 ( .A(n406), .Y(n1085) );
  AOI2BB2XL U1098 ( .B0(\VY[1][10] ), .B1(n413), .A0N(n256), .A1N(n927), .Y(
        n408) );
  AOI2BB2XL U1099 ( .B0(n423), .B1(n868), .A0N(n929), .A1N(n1133), .Y(n485) );
  CLKINVX1 U1100 ( .A(n484), .Y(n1075) );
  CLKINVX1 U1101 ( .A(n639), .Y(n1064) );
  AOI2BB2XL U1102 ( .B0(n423), .B1(\VX[2][0] ), .A0N(n929), .A1N(n1177), .Y(
        n640) );
  CLKINVX1 U1103 ( .A(n626), .Y(n1065) );
  AOI2BB2XL U1104 ( .B0(n423), .B1(\VX[2][1] ), .A0N(n1087), .A1N(n885), .Y(
        n627) );
  CLKINVX1 U1105 ( .A(n619), .Y(n1066) );
  AOI2BB2XL U1106 ( .B0(n423), .B1(\VX[2][2] ), .A0N(n1087), .A1N(n1170), .Y(
        n620) );
  CLKINVX1 U1107 ( .A(n612), .Y(n1067) );
  AOI2BB2XL U1108 ( .B0(n423), .B1(\VX[2][3] ), .A0N(n928), .A1N(n1166), .Y(
        n613) );
  CLKINVX1 U1109 ( .A(n605), .Y(n1068) );
  AOI2BB2XL U1110 ( .B0(n423), .B1(\VX[2][4] ), .A0N(n1087), .A1N(n1162), .Y(
        n606) );
  CLKINVX1 U1111 ( .A(n598), .Y(n1069) );
  AOI2BB2XL U1112 ( .B0(n423), .B1(\VX[2][5] ), .A0N(n928), .A1N(n1158), .Y(
        n599) );
  CLKINVX1 U1113 ( .A(n591), .Y(n1070) );
  AOI2BB2XL U1114 ( .B0(n423), .B1(\VX[2][6] ), .A0N(n1087), .A1N(n1154), .Y(
        n592) );
  CLKINVX1 U1115 ( .A(n584), .Y(n1071) );
  AOI2BB2XL U1116 ( .B0(n423), .B1(\VX[2][7] ), .A0N(n928), .A1N(n1150), .Y(
        n585) );
  CLKINVX1 U1117 ( .A(n477), .Y(n1076) );
  AOI2BB2XL U1118 ( .B0(n423), .B1(\VY[2][1] ), .A0N(n928), .A1N(n1129), .Y(
        n478) );
  CLKINVX1 U1119 ( .A(n470), .Y(n1077) );
  AOI2BB2XL U1120 ( .B0(n423), .B1(\VY[2][2] ), .A0N(n929), .A1N(n1125), .Y(
        n471) );
  CLKINVX1 U1121 ( .A(n463), .Y(n1078) );
  AOI2BB2XL U1122 ( .B0(n423), .B1(\VY[2][3] ), .A0N(n928), .A1N(n1121), .Y(
        n464) );
  CLKINVX1 U1123 ( .A(n574), .Y(n1044) );
  AOI22XL U1124 ( .A0(\VX[2][8] ), .A1(n419), .B0(n940), .B1(\VX[1][8] ), .Y(
        n575) );
  CLKINVX1 U1125 ( .A(n616), .Y(n1038) );
  AOI22XL U1126 ( .A0(\VX[2][2] ), .A1(n419), .B0(n940), .B1(\VX[1][2] ), .Y(
        n617) );
  CLKINVX1 U1127 ( .A(n609), .Y(n1039) );
  AOI22XL U1128 ( .A0(\VX[2][3] ), .A1(n419), .B0(n940), .B1(\VX[1][3] ), .Y(
        n610) );
  CLKINVX1 U1129 ( .A(n595), .Y(n1041) );
  AOI22XL U1130 ( .A0(\VX[2][5] ), .A1(n419), .B0(n940), .B1(\VX[1][5] ), .Y(
        n596) );
  CLKINVX1 U1131 ( .A(n588), .Y(n1042) );
  AOI22XL U1132 ( .A0(\VX[2][6] ), .A1(n419), .B0(n939), .B1(\VX[1][6] ), .Y(
        n589) );
  CLKINVX1 U1133 ( .A(n577), .Y(n1072) );
  AOI2BB2XL U1134 ( .B0(n423), .B1(\VX[2][8] ), .A0N(n928), .A1N(n1146), .Y(
        n578) );
  CLKINVX1 U1135 ( .A(n570), .Y(n1073) );
  AOI2BB2XL U1136 ( .B0(n423), .B1(\VX[2][9] ), .A0N(n1087), .A1N(n1142), .Y(
        n571) );
  CLKINVX1 U1137 ( .A(n602), .Y(n1040) );
  AOI22XL U1138 ( .A0(\VX[2][4] ), .A1(n419), .B0(n940), .B1(\VX[1][4] ), .Y(
        n603) );
  CLKINVX1 U1139 ( .A(n581), .Y(n1043) );
  AOI22XL U1140 ( .A0(\VX[2][7] ), .A1(n419), .B0(n940), .B1(\VX[1][7] ), .Y(
        n582) );
  CLKINVX1 U1141 ( .A(n630), .Y(n1036) );
  AOI22XL U1142 ( .A0(\VX[2][0] ), .A1(n419), .B0(n939), .B1(\VX[1][0] ), .Y(
        n631) );
  CLKINVX1 U1143 ( .A(n623), .Y(n1037) );
  AOI22XL U1144 ( .A0(\VX[2][1] ), .A1(n419), .B0(n940), .B1(\VX[1][1] ), .Y(
        n624) );
  CLKINVX1 U1145 ( .A(n456), .Y(n1079) );
  AOI2BB2XL U1146 ( .B0(n423), .B1(\VY[2][4] ), .A0N(n929), .A1N(n1117), .Y(
        n457) );
  CLKINVX1 U1147 ( .A(n449), .Y(n1080) );
  AOI2BB2XL U1148 ( .B0(n423), .B1(\VY[2][5] ), .A0N(n928), .A1N(n1113), .Y(
        n450) );
  CLKINVX1 U1149 ( .A(n442), .Y(n1081) );
  AOI2BB2XL U1150 ( .B0(n423), .B1(\VY[2][6] ), .A0N(n929), .A1N(n1109), .Y(
        n443) );
  CLKINVX1 U1151 ( .A(n435), .Y(n1082) );
  AOI2BB2XL U1152 ( .B0(n423), .B1(\VY[2][7] ), .A0N(n929), .A1N(n1105), .Y(
        n436) );
  CLKINVX1 U1153 ( .A(n428), .Y(n1083) );
  AOI2BB2XL U1154 ( .B0(n423), .B1(\VY[2][8] ), .A0N(n929), .A1N(n1101), .Y(
        n429) );
  CLKINVX1 U1155 ( .A(n420), .Y(n1084) );
  AOI2BB2XL U1156 ( .B0(n423), .B1(\VY[2][9] ), .A0N(n929), .A1N(n1097), .Y(
        n421) );
  CLKINVX1 U1157 ( .A(n567), .Y(n1045) );
  AOI22XL U1158 ( .A0(\VX[2][9] ), .A1(n419), .B0(n940), .B1(\VX[1][9] ), .Y(
        n568) );
  CLKINVX1 U1159 ( .A(n474), .Y(n1048) );
  AOI22XL U1160 ( .A0(\VY[2][1] ), .A1(n419), .B0(n939), .B1(\VY[1][1] ), .Y(
        n475) );
  CLKINVX1 U1161 ( .A(n467), .Y(n1049) );
  AOI22XL U1162 ( .A0(\VY[2][2] ), .A1(n419), .B0(n939), .B1(\VY[1][2] ), .Y(
        n468) );
  CLKINVX1 U1163 ( .A(n453), .Y(n1051) );
  AOI22XL U1164 ( .A0(\VY[2][4] ), .A1(n419), .B0(n939), .B1(\VY[1][4] ), .Y(
        n454) );
  CLKINVX1 U1165 ( .A(n446), .Y(n1052) );
  AOI22XL U1166 ( .A0(\VY[2][5] ), .A1(n419), .B0(n939), .B1(\VY[1][5] ), .Y(
        n447) );
  CLKINVX1 U1167 ( .A(n432), .Y(n1054) );
  AOI22XL U1168 ( .A0(\VY[2][7] ), .A1(n419), .B0(n939), .B1(\VY[1][7] ), .Y(
        n433) );
  CLKINVX1 U1169 ( .A(n425), .Y(n1055) );
  AOI22XL U1170 ( .A0(\VY[2][8] ), .A1(n419), .B0(n939), .B1(\VY[1][8] ), .Y(
        n426) );
  CLKINVX1 U1171 ( .A(n460), .Y(n1050) );
  AOI22XL U1172 ( .A0(\VY[2][3] ), .A1(n419), .B0(n939), .B1(\VY[1][3] ), .Y(
        n461) );
  CLKINVX1 U1173 ( .A(n439), .Y(n1053) );
  AOI22XL U1174 ( .A0(\VY[2][6] ), .A1(n419), .B0(n939), .B1(\VY[1][6] ), .Y(
        n440) );
  AOI22XL U1175 ( .A0(n869), .A1(n419), .B0(n939), .B1(\VY[1][0] ), .Y(n482)
         );
  CLKINVX1 U1176 ( .A(n481), .Y(n1047) );
  CLKINVX1 U1177 ( .A(n416), .Y(n1056) );
  AOI22XL U1178 ( .A0(\VY[2][9] ), .A1(n419), .B0(n939), .B1(\VY[1][9] ), .Y(
        n417) );
  CLKINVX1 U1179 ( .A(n398), .Y(n1057) );
  AOI2BB2XL U1180 ( .B0(n940), .B1(\VY[1][10] ), .A0N(n256), .A1N(n925), .Y(
        n400) );
  CLKINVX1 U1181 ( .A(n560), .Y(n1046) );
  AOI2BB2XL U1182 ( .B0(n940), .B1(\VX[1][10] ), .A0N(n154), .A1N(n925), .Y(
        n561) );
  INVXL U1183 ( .A(\VY[1][1] ), .Y(n1129) );
  INVXL U1184 ( .A(\VY[1][2] ), .Y(n1125) );
  INVXL U1185 ( .A(\VY[1][0] ), .Y(n1133) );
  INVXL U1186 ( .A(\VX[1][0] ), .Y(n1177) );
  CLKINVX20 U1187 ( .A(n890), .Y(is_inside) );
  CLKINVX1 U1188 ( .A(n873), .Y(n897) );
  INVX3 U1189 ( .A(n873), .Y(n896) );
  INVX3 U1190 ( .A(n891), .Y(n905) );
  CLKINVX1 U1191 ( .A(n498), .Y(n962) );
  CLKBUFX3 U1192 ( .A(n918), .Y(n919) );
  NAND2BX1 U1193 ( .AN(n953), .B(n497), .Y(n918) );
  NAND2X2 U1194 ( .A(n497), .B(n952), .Y(n923) );
  NAND2X1 U1195 ( .A(n497), .B(n952), .Y(n922) );
  NAND2X1 U1196 ( .A(n497), .B(n952), .Y(n326) );
  NAND2X1 U1197 ( .A(n1059), .B(n540), .Y(n367) );
  NAND2X1 U1198 ( .A(n1059), .B(n540), .Y(n902) );
  NAND2X1 U1199 ( .A(n1061), .B(n556), .Y(n381) );
  NAND2X1 U1200 ( .A(n1061), .B(n556), .Y(n899) );
  NAND2X2 U1201 ( .A(n1061), .B(n556), .Y(n900) );
  NAND2X2 U1202 ( .A(n1059), .B(n540), .Y(n903) );
  AND2X2 U1203 ( .A(n958), .B(n498), .Y(n512) );
  AND2X2 U1204 ( .A(n961), .B(n1012), .Y(n920) );
  AND2X2 U1205 ( .A(n961), .B(n1012), .Y(n921) );
  NAND2X1 U1206 ( .A(n512), .B(n940), .Y(n339) );
  NAND2X1 U1207 ( .A(n512), .B(n940), .Y(n912) );
  CLKBUFX3 U1208 ( .A(n410), .Y(n937) );
  NAND2X2 U1209 ( .A(n512), .B(n940), .Y(n913) );
  CLKBUFX3 U1210 ( .A(n403), .Y(n948) );
  CLKBUFX3 U1211 ( .A(n402), .Y(n951) );
  AND2X2 U1212 ( .A(n958), .B(n1012), .Y(n343) );
  AND2X2 U1213 ( .A(n958), .B(n1012), .Y(n914) );
  AND2X2 U1214 ( .A(n958), .B(n1012), .Y(n915) );
  CLKBUFX3 U1215 ( .A(n410), .Y(n936) );
  CLKBUFX3 U1216 ( .A(n403), .Y(n947) );
  CLKBUFX3 U1217 ( .A(n949), .Y(n950) );
  CLKBUFX3 U1218 ( .A(n410), .Y(n938) );
  CLKBUFX3 U1219 ( .A(n403), .Y(n946) );
  NAND2X2 U1220 ( .A(n556), .B(n557), .Y(n901) );
  NAND2X2 U1221 ( .A(n540), .B(n541), .Y(n368) );
  NAND2X2 U1222 ( .A(n540), .B(n541), .Y(n904) );
  NAND2X2 U1223 ( .A(n556), .B(n557), .Y(n382) );
  CLKBUFX3 U1224 ( .A(n1087), .Y(n928) );
  BUFX4 U1225 ( .A(n396), .Y(n898) );
  NAND2X1 U1226 ( .A(n633), .B(n634), .Y(n396) );
  CLKBUFX3 U1227 ( .A(n960), .Y(n961) );
  NAND2X2 U1228 ( .A(n512), .B(n942), .Y(n917) );
  NAND2X1 U1229 ( .A(n512), .B(n893), .Y(n340) );
  NAND2X1 U1230 ( .A(n512), .B(n941), .Y(n916) );
  CLKBUFX3 U1231 ( .A(n411), .Y(n935) );
  CLKBUFX3 U1232 ( .A(n888), .Y(n924) );
  INVX3 U1233 ( .A(n910), .Y(n911) );
  CLKINVX1 U1234 ( .A(n909), .Y(n910) );
  NAND2BX1 U1235 ( .AN(n526), .B(n527), .Y(n909) );
  NAND2X1 U1236 ( .A(n527), .B(n526), .Y(n354) );
  CLKBUFX3 U1237 ( .A(n1087), .Y(n929) );
  CLKBUFX3 U1238 ( .A(n355), .Y(n907) );
  NAND2X1 U1239 ( .A(n1012), .B(n963), .Y(n355) );
  CLKBUFX3 U1240 ( .A(n411), .Y(n934) );
  CLKBUFX3 U1241 ( .A(n888), .Y(n925) );
  OAI221X1 U1242 ( .A0(n926), .A1(n988), .B0(n928), .B1(n964), .C0(n707), .Y(
        N1367) );
  AOI222XL U1243 ( .A0(\V0X[3][11] ), .A1(n938), .B0(\V0X[5][11] ), .B1(n933), 
        .C0(\V0X[4][11] ), .C1(n931), .Y(n707) );
  INVXL U1244 ( .A(\V0X[1][11] ), .Y(n964) );
  AOI222XL U1245 ( .A0(\V0Y[3][11] ), .A1(n951), .B0(\V0Y[5][11] ), .B1(n946), 
        .C0(\V0Y[4][11] ), .C1(n945), .Y(n695) );
  INVXL U1246 ( .A(\V0Y[1][11] ), .Y(n976) );
  OAI221X1 U1247 ( .A0(n926), .A1(n1000), .B0(n929), .B1(n976), .C0(n683), .Y(
        N1403) );
  AOI222XL U1248 ( .A0(\V0Y[3][11] ), .A1(n937), .B0(\V0Y[5][11] ), .B1(n935), 
        .C0(\V0Y[4][11] ), .C1(n932), .Y(n683) );
  AOI222XL U1249 ( .A0(\V0X[3][11] ), .A1(n951), .B0(\V0X[5][11] ), .B1(n948), 
        .C0(\V0X[4][11] ), .C1(n944), .Y(n671) );
  CLKBUFX3 U1250 ( .A(n411), .Y(n933) );
  NOR2X1 U1251 ( .A(n1014), .B(n647), .Y(N222) );
  INVX3 U1252 ( .A(n634), .Y(n1058) );
  CLKINVX1 U1253 ( .A(n647), .Y(n1086) );
  INVX3 U1254 ( .A(n893), .Y(n939) );
  INVX3 U1255 ( .A(n892), .Y(n895) );
  CLKBUFX3 U1256 ( .A(n399), .Y(n953) );
  INVX3 U1257 ( .A(n942), .Y(n940) );
  INVX3 U1258 ( .A(n892), .Y(n894) );
  CLKBUFX3 U1259 ( .A(n399), .Y(n952) );
  AOI222XL U1260 ( .A0(\V0X[3][1] ), .A1(n937), .B0(\V0X[5][1] ), .B1(n935), 
        .C0(\V0X[4][1] ), .C1(n932), .Y(n697) );
  NOR2X1 U1261 ( .A(n545), .B(n1059), .Y(n542) );
  NAND3X1 U1262 ( .A(n1012), .B(n1090), .C(n544), .Y(n543) );
  CLKBUFX3 U1263 ( .A(n954), .Y(n955) );
  NAND2X1 U1264 ( .A(n1091), .B(n1092), .Y(n500) );
  AOI222XL U1265 ( .A0(\V0Y[3][1] ), .A1(n951), .B0(\V0Y[5][1] ), .B1(n948), 
        .C0(\V0Y[4][1] ), .C1(n944), .Y(n685) );
  CLKINVX1 U1266 ( .A(\V0X[2][1] ), .Y(n998) );
  OAI211X1 U1267 ( .A0(n513), .A1(n514), .B0(n1013), .C0(n515), .Y(n341) );
  NAND2X1 U1268 ( .A(n1012), .B(n1092), .Y(n514) );
  OAI21XL U1269 ( .A0(n939), .A1(n413), .B0(n498), .Y(n515) );
  NOR2X1 U1270 ( .A(n889), .B(n887), .Y(n410) );
  NOR2X1 U1271 ( .A(n962), .B(n906), .Y(n527) );
  CLKBUFX3 U1272 ( .A(n893), .Y(n942) );
  NOR2X1 U1273 ( .A(n1063), .B(n1060), .Y(n403) );
  NOR2X1 U1274 ( .A(n1062), .B(n1060), .Y(n402) );
  AOI222XL U1275 ( .A0(\V0Y[3][1] ), .A1(n936), .B0(\V0Y[5][1] ), .B1(n934), 
        .C0(\V0Y[4][1] ), .C1(n931), .Y(n673) );
  AOI222XL U1276 ( .A0(\V0Y[3][3] ), .A1(n951), .B0(\V0Y[5][3] ), .B1(n948), 
        .C0(\V0Y[4][3] ), .C1(n944), .Y(n687) );
  CLKINVX1 U1277 ( .A(\V0Y[1][3] ), .Y(n984) );
  OAI221X1 U1278 ( .A0(n926), .A1(n996), .B0(n928), .B1(n972), .C0(n699), .Y(
        N1375) );
  AOI222XL U1279 ( .A0(\V0X[3][3] ), .A1(n937), .B0(\V0X[5][3] ), .B1(n935), 
        .C0(\V0X[4][3] ), .C1(n932), .Y(n699) );
  CLKINVX1 U1280 ( .A(\V0X[1][3] ), .Y(n972) );
  AOI222XL U1281 ( .A0(\V0X[3][1] ), .A1(n950), .B0(\V0X[5][1] ), .B1(n947), 
        .C0(\V0X[4][1] ), .C1(n943), .Y(n661) );
  AOI222XL U1282 ( .A0(\V0Y[3][2] ), .A1(n951), .B0(\V0Y[5][2] ), .B1(n948), 
        .C0(\V0Y[4][2] ), .C1(n944), .Y(n686) );
  CLKINVX1 U1283 ( .A(\V0Y[1][2] ), .Y(n985) );
  CLKINVX1 U1284 ( .A(\V0X[1][0] ), .Y(n975) );
  CLKBUFX3 U1285 ( .A(n412), .Y(n930) );
  CLKBUFX3 U1286 ( .A(n893), .Y(n941) );
  OAI221XL U1287 ( .A0(n924), .A1(n1011), .B0(n942), .B1(n987), .C0(n684), .Y(
        N1396) );
  AOI222XL U1288 ( .A0(\V0Y[3][0] ), .A1(n951), .B0(\V0Y[5][0] ), .B1(n948), 
        .C0(\V0Y[4][0] ), .C1(n944), .Y(n684) );
  OAI221X1 U1289 ( .A0(n926), .A1(n997), .B0(n928), .B1(n973), .C0(n698), .Y(
        N1376) );
  AOI222XL U1290 ( .A0(\V0X[3][2] ), .A1(n937), .B0(\V0X[5][2] ), .B1(n935), 
        .C0(\V0X[4][2] ), .C1(n932), .Y(n698) );
  CLKINVX1 U1291 ( .A(\V0X[1][2] ), .Y(n973) );
  OAI221X1 U1292 ( .A0(n927), .A1(n1008), .B0(n929), .B1(n984), .C0(n675), .Y(
        N1411) );
  AOI222XL U1293 ( .A0(\V0Y[3][3] ), .A1(n936), .B0(\V0Y[5][3] ), .B1(n934), 
        .C0(\V0Y[4][3] ), .C1(n931), .Y(n675) );
  AOI222XL U1294 ( .A0(\V0X[3][3] ), .A1(n950), .B0(\V0X[5][3] ), .B1(n947), 
        .C0(\V0X[4][3] ), .C1(n943), .Y(n663) );
  CLKINVX1 U1295 ( .A(n860), .Y(n987) );
  CLKINVX1 U1296 ( .A(\V0X[2][2] ), .Y(n997) );
  AOI222XL U1297 ( .A0(\V0X[3][2] ), .A1(n950), .B0(\V0X[5][2] ), .B1(n947), 
        .C0(\V0X[4][2] ), .C1(n943), .Y(n662) );
  OAI221X1 U1298 ( .A0(n926), .A1(n994), .B0(n928), .B1(n970), .C0(n701), .Y(
        N1373) );
  AOI222XL U1299 ( .A0(\V0X[3][5] ), .A1(n938), .B0(\V0X[5][5] ), .B1(n935), 
        .C0(\V0X[4][5] ), .C1(n932), .Y(n701) );
  CLKINVX1 U1300 ( .A(\V0X[1][5] ), .Y(n970) );
  AOI222XL U1301 ( .A0(\V0Y[3][4] ), .A1(n951), .B0(\V0Y[5][4] ), .B1(n948), 
        .C0(\V0Y[4][4] ), .C1(n944), .Y(n688) );
  CLKINVX1 U1302 ( .A(\V0Y[1][4] ), .Y(n983) );
  AOI222XL U1303 ( .A0(\V0Y[3][2] ), .A1(n936), .B0(\V0Y[5][2] ), .B1(n934), 
        .C0(\V0Y[4][2] ), .C1(n931), .Y(n674) );
  AOI222XL U1304 ( .A0(\V0Y[3][5] ), .A1(n951), .B0(\V0Y[5][5] ), .B1(n948), 
        .C0(\V0Y[4][5] ), .C1(n944), .Y(n689) );
  CLKINVX1 U1305 ( .A(\V0Y[1][5] ), .Y(n982) );
  AOI222XL U1306 ( .A0(\V0X[3][4] ), .A1(n937), .B0(\V0X[5][4] ), .B1(n935), 
        .C0(\V0X[4][4] ), .C1(n932), .Y(n700) );
  CLKINVX1 U1307 ( .A(\V0X[1][4] ), .Y(n971) );
  AOI222XL U1308 ( .A0(\V0X[3][4] ), .A1(n950), .B0(\V0X[5][4] ), .B1(n947), 
        .C0(\V0X[4][4] ), .C1(n943), .Y(n664) );
  OAI221X1 U1309 ( .A0(n927), .A1(n1006), .B0(n929), .B1(n982), .C0(n677), .Y(
        N1409) );
  AOI222XL U1310 ( .A0(\V0Y[3][5] ), .A1(n937), .B0(\V0Y[5][5] ), .B1(n934), 
        .C0(\V0Y[4][5] ), .C1(n931), .Y(n677) );
  AOI222XL U1311 ( .A0(\V0X[3][5] ), .A1(n950), .B0(\V0X[5][5] ), .B1(n948), 
        .C0(\V0X[4][5] ), .C1(n944), .Y(n665) );
  AOI222XL U1312 ( .A0(\V0Y[3][4] ), .A1(n937), .B0(\V0Y[5][4] ), .B1(n934), 
        .C0(\V0Y[4][4] ), .C1(n931), .Y(n676) );
  AOI222XL U1313 ( .A0(\V0Y[3][6] ), .A1(n951), .B0(\V0Y[5][6] ), .B1(n948), 
        .C0(\V0Y[4][6] ), .C1(n944), .Y(n690) );
  CLKINVX1 U1314 ( .A(\V0Y[1][6] ), .Y(n981) );
  CLKINVX1 U1315 ( .A(\V0Y[2][6] ), .Y(n1005) );
  AOI222XL U1316 ( .A0(\V0X[3][6] ), .A1(n951), .B0(\V0X[5][6] ), .B1(n948), 
        .C0(\V0X[4][6] ), .C1(n944), .Y(n666) );
  CLKINVX1 U1317 ( .A(\V0X[1][6] ), .Y(n969) );
  OAI221X1 U1318 ( .A0(n926), .A1(n992), .B0(n928), .B1(n968), .C0(n703), .Y(
        N1371) );
  AOI222XL U1319 ( .A0(\V0X[3][7] ), .A1(n938), .B0(\V0X[5][7] ), .B1(n935), 
        .C0(\V0X[4][7] ), .C1(n932), .Y(n703) );
  CLKINVX1 U1320 ( .A(\V0X[1][7] ), .Y(n968) );
  AOI222XL U1321 ( .A0(\V0Y[3][7] ), .A1(n951), .B0(\V0Y[5][7] ), .B1(n948), 
        .C0(\V0Y[4][7] ), .C1(n944), .Y(n691) );
  CLKINVX1 U1322 ( .A(\V0Y[1][7] ), .Y(n980) );
  CLKINVX1 U1323 ( .A(\V0Y[2][7] ), .Y(n1004) );
  AOI222XL U1324 ( .A0(\V0X[3][6] ), .A1(n937), .B0(\V0X[5][6] ), .B1(n935), 
        .C0(\V0X[4][6] ), .C1(n932), .Y(n702) );
  OAI221X1 U1325 ( .A0(n927), .A1(n1004), .B0(n929), .B1(n980), .C0(n679), .Y(
        N1407) );
  AOI222XL U1326 ( .A0(\V0Y[3][7] ), .A1(n937), .B0(\V0Y[5][7] ), .B1(n934), 
        .C0(\V0Y[4][7] ), .C1(n932), .Y(n679) );
  AOI222XL U1327 ( .A0(\V0X[3][7] ), .A1(n951), .B0(\V0X[5][7] ), .B1(n948), 
        .C0(\V0X[4][7] ), .C1(n944), .Y(n667) );
  AOI222XL U1328 ( .A0(\V0Y[3][6] ), .A1(n937), .B0(\V0Y[5][6] ), .B1(n934), 
        .C0(\V0Y[4][6] ), .C1(n932), .Y(n678) );
  AOI222XL U1329 ( .A0(\V0Y[3][8] ), .A1(n951), .B0(\V0Y[5][8] ), .B1(n946), 
        .C0(\V0Y[4][8] ), .C1(n945), .Y(n692) );
  CLKINVX1 U1330 ( .A(\V0Y[1][8] ), .Y(n979) );
  OAI221X1 U1331 ( .A0(n926), .A1(n990), .B0(n928), .B1(n966), .C0(n705), .Y(
        N1369) );
  AOI222XL U1332 ( .A0(\V0X[3][9] ), .A1(n938), .B0(\V0X[5][9] ), .B1(n935), 
        .C0(\V0X[4][9] ), .C1(n930), .Y(n705) );
  CLKINVX1 U1333 ( .A(\V0Y[2][8] ), .Y(n1003) );
  CLKINVX1 U1334 ( .A(\V0X[2][9] ), .Y(n990) );
  AOI222XL U1335 ( .A0(\V0X[3][8] ), .A1(n951), .B0(\V0X[5][8] ), .B1(n948), 
        .C0(\V0X[4][8] ), .C1(n944), .Y(n668) );
  CLKINVX1 U1336 ( .A(\V0X[1][8] ), .Y(n967) );
  AOI222XL U1337 ( .A0(\V0X[3][8] ), .A1(n938), .B0(\V0X[5][8] ), .B1(n935), 
        .C0(\V0X[4][8] ), .C1(n931), .Y(n704) );
  OAI221X1 U1338 ( .A0(n926), .A1(n1002), .B0(n929), .B1(n978), .C0(n681), .Y(
        N1405) );
  AOI222XL U1339 ( .A0(\V0Y[3][9] ), .A1(n937), .B0(\V0Y[5][9] ), .B1(n935), 
        .C0(\V0Y[4][9] ), .C1(n932), .Y(n681) );
  CLKINVX1 U1340 ( .A(\V0Y[1][9] ), .Y(n978) );
  AOI222XL U1341 ( .A0(\V0Y[3][9] ), .A1(n951), .B0(\V0Y[5][9] ), .B1(n946), 
        .C0(\V0Y[4][9] ), .C1(n945), .Y(n693) );
  CLKINVX1 U1342 ( .A(\V0X[2][8] ), .Y(n991) );
  CLKINVX1 U1343 ( .A(\V0Y[2][9] ), .Y(n1002) );
  AOI222XL U1344 ( .A0(\V0Y[3][8] ), .A1(n937), .B0(\V0Y[5][8] ), .B1(n935), 
        .C0(\V0Y[4][8] ), .C1(n932), .Y(n680) );
  AOI222XL U1345 ( .A0(\V0Y[3][10] ), .A1(n951), .B0(\V0Y[5][10] ), .B1(n946), 
        .C0(\V0Y[4][10] ), .C1(n945), .Y(n694) );
  CLKINVX1 U1346 ( .A(\V0Y[1][10] ), .Y(n977) );
  AOI222XL U1347 ( .A0(\V0X[3][9] ), .A1(n951), .B0(\V0X[5][9] ), .B1(n948), 
        .C0(\V0X[4][9] ), .C1(n944), .Y(n669) );
  CLKINVX1 U1348 ( .A(\V0Y[2][10] ), .Y(n1001) );
  AOI222XL U1349 ( .A0(\V0X[3][10] ), .A1(n951), .B0(\V0X[5][10] ), .B1(n948), 
        .C0(\V0X[4][10] ), .C1(n944), .Y(n670) );
  CLKINVX1 U1350 ( .A(\V0X[1][10] ), .Y(n965) );
  AOI222XL U1351 ( .A0(\V0X[3][10] ), .A1(n938), .B0(\V0X[5][10] ), .B1(n935), 
        .C0(\V0X[4][10] ), .C1(n932), .Y(n706) );
  CLKINVX1 U1352 ( .A(\V0X[2][10] ), .Y(n989) );
  CLKINVX1 U1353 ( .A(\V0X[2][11] ), .Y(n988) );
  CLKINVX1 U1354 ( .A(\V0Y[2][11] ), .Y(n1000) );
  AOI222XL U1355 ( .A0(\V0Y[3][10] ), .A1(n937), .B0(\V0Y[5][10] ), .B1(n935), 
        .C0(\V0Y[4][10] ), .C1(n932), .Y(n682) );
  INVX3 U1356 ( .A(n653), .Y(n1014) );
  NAND3X1 U1357 ( .A(n637), .B(n1013), .C(n638), .Y(n499) );
  CLKINVX1 U1358 ( .A(n645), .Y(n1015) );
  NAND2X2 U1359 ( .A(n946), .B(n1062), .Y(n634) );
  NAND2X1 U1360 ( .A(n945), .B(n1062), .Y(n557) );
  AND2X2 U1361 ( .A(n938), .B(n1088), .Y(n545) );
  NAND2X1 U1362 ( .A(n930), .B(n889), .Y(n647) );
  NAND3X1 U1363 ( .A(n1091), .B(n1092), .C(n1090), .Y(n637) );
  NAND2X1 U1364 ( .A(n419), .B(n1063), .Y(n526) );
  NAND3X1 U1365 ( .A(n1062), .B(n1063), .C(n1060), .Y(n399) );
  CLKINVX1 U1366 ( .A(n638), .Y(n1089) );
  OAI221XL U1367 ( .A0(n1075), .A1(n900), .B0(n1136), .B1(n956), .C0(n394), 
        .Y(n762) );
  NOR2X1 U1368 ( .A(n1086), .B(n1061), .Y(n558) );
  NAND3X1 U1369 ( .A(input_cnt[0]), .B(n1012), .C(n544), .Y(n559) );
  OAI221XL U1370 ( .A0(n1064), .A1(n903), .B0(n957), .B1(n1178), .C0(n539), 
        .Y(n817) );
  OAI221XL U1371 ( .A0(n1065), .A1(n903), .B0(n957), .B1(n1174), .C0(n538), 
        .Y(n816) );
  OA22X1 U1372 ( .A0(n368), .A1(n1037), .B0(n905), .B1(n1024), .Y(n538) );
  OAI221XL U1373 ( .A0(n1066), .A1(n367), .B0(n957), .B1(n1171), .C0(n537), 
        .Y(n815) );
  OA22X1 U1374 ( .A0(n904), .A1(n1038), .B0(n905), .B1(n1023), .Y(n537) );
  OAI221XL U1375 ( .A0(n1067), .A1(n902), .B0(n957), .B1(n1167), .C0(n536), 
        .Y(n814) );
  OA22X1 U1376 ( .A0(n368), .A1(n1039), .B0(n905), .B1(n1022), .Y(n536) );
  OAI221XL U1377 ( .A0(n1068), .A1(n903), .B0(n957), .B1(n1163), .C0(n535), 
        .Y(n813) );
  OA22X1 U1378 ( .A0(n904), .A1(n1040), .B0(n905), .B1(n1021), .Y(n535) );
  OAI221XL U1379 ( .A0(n1069), .A1(n367), .B0(n957), .B1(n1159), .C0(n534), 
        .Y(n812) );
  OA22X1 U1380 ( .A0(n368), .A1(n1041), .B0(n905), .B1(n1020), .Y(n534) );
  OAI221XL U1381 ( .A0(n1070), .A1(n902), .B0(n957), .B1(n1155), .C0(n533), 
        .Y(n811) );
  OA22X1 U1382 ( .A0(n904), .A1(n1042), .B0(n905), .B1(n1019), .Y(n533) );
  OAI221XL U1383 ( .A0(n1071), .A1(n903), .B0(n957), .B1(n1151), .C0(n532), 
        .Y(n810) );
  OA22X1 U1384 ( .A0(n368), .A1(n1043), .B0(n905), .B1(n1018), .Y(n532) );
  OAI221XL U1385 ( .A0(n1072), .A1(n367), .B0(n957), .B1(n1147), .C0(n531), 
        .Y(n809) );
  OA22X1 U1386 ( .A0(n904), .A1(n1044), .B0(n905), .B1(n1017), .Y(n531) );
  OAI221XL U1387 ( .A0(n1073), .A1(n902), .B0(n957), .B1(n1143), .C0(n530), 
        .Y(n808) );
  OA22X1 U1388 ( .A0(n368), .A1(n1045), .B0(n905), .B1(n1016), .Y(n530) );
  OAI221XL U1389 ( .A0(n1075), .A1(n903), .B0(n1135), .B1(n957), .C0(n380), 
        .Y(n751) );
  OAI221XL U1390 ( .A0(n1076), .A1(n367), .B0(n1131), .B1(n957), .C0(n379), 
        .Y(n750) );
  OA22X1 U1391 ( .A0(n368), .A1(n1048), .B0(n1034), .B1(n905), .Y(n379) );
  OAI221XL U1392 ( .A0(n1077), .A1(n902), .B0(n1127), .B1(n957), .C0(n378), 
        .Y(n749) );
  OA22X1 U1393 ( .A0(n904), .A1(n1049), .B0(n1033), .B1(n905), .Y(n378) );
  OAI221XL U1394 ( .A0(n1078), .A1(n903), .B0(n1123), .B1(n957), .C0(n377), 
        .Y(n748) );
  OA22X1 U1395 ( .A0(n368), .A1(n1050), .B0(n1032), .B1(n905), .Y(n377) );
  OAI221XL U1396 ( .A0(n1079), .A1(n367), .B0(n1119), .B1(n957), .C0(n376), 
        .Y(n747) );
  OA22X1 U1397 ( .A0(n904), .A1(n1051), .B0(n1031), .B1(n905), .Y(n376) );
  OAI221XL U1398 ( .A0(n1080), .A1(n902), .B0(n1115), .B1(n957), .C0(n375), 
        .Y(n746) );
  OA22X1 U1399 ( .A0(n368), .A1(n1052), .B0(n1030), .B1(n905), .Y(n375) );
  OAI221XL U1400 ( .A0(n1081), .A1(n903), .B0(n1111), .B1(n957), .C0(n374), 
        .Y(n745) );
  OA22X1 U1401 ( .A0(n904), .A1(n1053), .B0(n1029), .B1(n905), .Y(n374) );
  OAI221XL U1402 ( .A0(n1082), .A1(n367), .B0(n1107), .B1(n957), .C0(n373), 
        .Y(n744) );
  OA22X1 U1403 ( .A0(n368), .A1(n1054), .B0(n1028), .B1(n905), .Y(n373) );
  OAI221XL U1404 ( .A0(n1083), .A1(n902), .B0(n1103), .B1(n957), .C0(n372), 
        .Y(n743) );
  OA22X1 U1405 ( .A0(n904), .A1(n1055), .B0(n1027), .B1(n905), .Y(n372) );
  OAI221XL U1406 ( .A0(n1084), .A1(n903), .B0(n1099), .B1(n957), .C0(n370), 
        .Y(n742) );
  OA22X1 U1407 ( .A0(n368), .A1(n1056), .B0(n1026), .B1(n905), .Y(n370) );
  OAI221XL U1408 ( .A0(n1064), .A1(n900), .B0(n956), .B1(n1179), .C0(n555), 
        .Y(n828) );
  OAI221XL U1409 ( .A0(n1065), .A1(n900), .B0(n956), .B1(n1175), .C0(n554), 
        .Y(n827) );
  OA22X1 U1410 ( .A0(n382), .A1(n1037), .B0(n870), .B1(n1024), .Y(n554) );
  OAI221XL U1411 ( .A0(n1066), .A1(n381), .B0(n956), .B1(n1172), .C0(n553), 
        .Y(n826) );
  OA22X1 U1412 ( .A0(n901), .A1(n1038), .B0(n870), .B1(n1023), .Y(n553) );
  OAI221XL U1413 ( .A0(n1067), .A1(n899), .B0(n956), .B1(n1168), .C0(n552), 
        .Y(n825) );
  OA22X1 U1414 ( .A0(n382), .A1(n1039), .B0(n870), .B1(n1022), .Y(n552) );
  OAI221XL U1415 ( .A0(n1068), .A1(n900), .B0(n956), .B1(n1164), .C0(n551), 
        .Y(n824) );
  OA22X1 U1416 ( .A0(n901), .A1(n1040), .B0(n870), .B1(n1021), .Y(n551) );
  OAI221XL U1417 ( .A0(n1069), .A1(n381), .B0(n383), .B1(n1160), .C0(n550), 
        .Y(n823) );
  OA22X1 U1418 ( .A0(n382), .A1(n1041), .B0(n870), .B1(n1020), .Y(n550) );
  OAI221XL U1419 ( .A0(n1070), .A1(n899), .B0(n383), .B1(n1156), .C0(n549), 
        .Y(n822) );
  OA22X1 U1420 ( .A0(n901), .A1(n1042), .B0(n870), .B1(n1019), .Y(n549) );
  OAI221XL U1421 ( .A0(n1071), .A1(n900), .B0(n383), .B1(n1152), .C0(n548), 
        .Y(n821) );
  OA22X1 U1422 ( .A0(n382), .A1(n1043), .B0(n870), .B1(n1018), .Y(n548) );
  OAI221XL U1423 ( .A0(n1072), .A1(n381), .B0(n383), .B1(n1148), .C0(n547), 
        .Y(n820) );
  OA22X1 U1424 ( .A0(n901), .A1(n1044), .B0(n870), .B1(n1017), .Y(n547) );
  OAI221XL U1425 ( .A0(n1073), .A1(n899), .B0(n956), .B1(n1144), .C0(n546), 
        .Y(n819) );
  OA22X1 U1426 ( .A0(n382), .A1(n1045), .B0(n870), .B1(n1016), .Y(n546) );
  OAI221XL U1427 ( .A0(n1076), .A1(n381), .B0(n1132), .B1(n956), .C0(n393), 
        .Y(n761) );
  OA22X1 U1428 ( .A0(n382), .A1(n1048), .B0(n1034), .B1(n870), .Y(n393) );
  OAI221XL U1429 ( .A0(n1077), .A1(n899), .B0(n1128), .B1(n956), .C0(n392), 
        .Y(n760) );
  OA22X1 U1430 ( .A0(n901), .A1(n1049), .B0(n1033), .B1(n870), .Y(n392) );
  OAI221XL U1431 ( .A0(n1078), .A1(n900), .B0(n1124), .B1(n956), .C0(n391), 
        .Y(n759) );
  OA22X1 U1432 ( .A0(n382), .A1(n1050), .B0(n1032), .B1(n870), .Y(n391) );
  OAI221XL U1433 ( .A0(n1079), .A1(n381), .B0(n1120), .B1(n956), .C0(n390), 
        .Y(n758) );
  OA22X1 U1434 ( .A0(n901), .A1(n1051), .B0(n1031), .B1(n870), .Y(n390) );
  OAI221XL U1435 ( .A0(n1080), .A1(n899), .B0(n1116), .B1(n956), .C0(n389), 
        .Y(n757) );
  OA22X1 U1436 ( .A0(n382), .A1(n1052), .B0(n1030), .B1(n870), .Y(n389) );
  OAI221XL U1437 ( .A0(n1081), .A1(n900), .B0(n1112), .B1(n956), .C0(n388), 
        .Y(n756) );
  OA22X1 U1438 ( .A0(n901), .A1(n1053), .B0(n1029), .B1(n870), .Y(n388) );
  OAI221XL U1439 ( .A0(n1082), .A1(n381), .B0(n1108), .B1(n956), .C0(n387), 
        .Y(n755) );
  OA22X1 U1440 ( .A0(n382), .A1(n1054), .B0(n1028), .B1(n870), .Y(n387) );
  OAI221XL U1441 ( .A0(n1083), .A1(n899), .B0(n1104), .B1(n956), .C0(n386), 
        .Y(n754) );
  OA22X1 U1442 ( .A0(n901), .A1(n1055), .B0(n1027), .B1(n870), .Y(n386) );
  OAI221XL U1443 ( .A0(n1084), .A1(n900), .B0(n1100), .B1(n956), .C0(n384), 
        .Y(n753) );
  OA22X1 U1444 ( .A0(n382), .A1(n1056), .B0(n1026), .B1(n870), .Y(n384) );
  OAI221XL U1445 ( .A0(n1064), .A1(n896), .B0(n955), .B1(n1176), .C0(n629), 
        .Y(n839) );
  OAI221XL U1446 ( .A0(n1065), .A1(n896), .B0(n954), .B1(n1173), .C0(n622), 
        .Y(n838) );
  OA22X1 U1447 ( .A0(n898), .A1(n1037), .B0(n871), .B1(n1024), .Y(n622) );
  OAI221XL U1448 ( .A0(n1066), .A1(n897), .B0(n954), .B1(n1169), .C0(n615), 
        .Y(n837) );
  OA22X1 U1449 ( .A0(n898), .A1(n1038), .B0(n871), .B1(n1023), .Y(n615) );
  OAI221XL U1450 ( .A0(n1067), .A1(n896), .B0(n954), .B1(n1165), .C0(n608), 
        .Y(n836) );
  OA22X1 U1451 ( .A0(n898), .A1(n1039), .B0(n871), .B1(n1022), .Y(n608) );
  OAI221XL U1452 ( .A0(n1068), .A1(n896), .B0(n954), .B1(n1161), .C0(n601), 
        .Y(n835) );
  OA22X1 U1453 ( .A0(n898), .A1(n1040), .B0(n871), .B1(n1021), .Y(n601) );
  OAI221XL U1454 ( .A0(n1069), .A1(n896), .B0(n954), .B1(n1157), .C0(n594), 
        .Y(n834) );
  OA22X1 U1455 ( .A0(n898), .A1(n1041), .B0(n871), .B1(n1020), .Y(n594) );
  OAI221XL U1456 ( .A0(n1070), .A1(n897), .B0(n954), .B1(n1153), .C0(n587), 
        .Y(n833) );
  OA22X1 U1457 ( .A0(n898), .A1(n1042), .B0(n871), .B1(n1019), .Y(n587) );
  OAI221XL U1458 ( .A0(n1071), .A1(n897), .B0(n954), .B1(n1149), .C0(n580), 
        .Y(n832) );
  OA22X1 U1459 ( .A0(n898), .A1(n1043), .B0(n871), .B1(n1018), .Y(n580) );
  OAI221XL U1460 ( .A0(n1072), .A1(n896), .B0(n954), .B1(n1145), .C0(n573), 
        .Y(n831) );
  OA22X1 U1461 ( .A0(n898), .A1(n1044), .B0(n871), .B1(n1017), .Y(n573) );
  OAI221XL U1462 ( .A0(n1073), .A1(n896), .B0(n954), .B1(n1141), .C0(n566), 
        .Y(n830) );
  OA22X1 U1463 ( .A0(n898), .A1(n1045), .B0(n871), .B1(n1016), .Y(n566) );
  OAI221XL U1464 ( .A0(n1075), .A1(n896), .B0(n1134), .B1(n955), .C0(n480), 
        .Y(n773) );
  OAI221XL U1465 ( .A0(n1076), .A1(n897), .B0(n1130), .B1(n955), .C0(n473), 
        .Y(n772) );
  OA22X1 U1466 ( .A0(n898), .A1(n1048), .B0(n1034), .B1(n871), .Y(n473) );
  OAI221XL U1467 ( .A0(n1077), .A1(n896), .B0(n1126), .B1(n955), .C0(n466), 
        .Y(n771) );
  OA22X1 U1468 ( .A0(n898), .A1(n1049), .B0(n1033), .B1(n871), .Y(n466) );
  OAI221XL U1469 ( .A0(n1078), .A1(n896), .B0(n1122), .B1(n955), .C0(n459), 
        .Y(n770) );
  OA22X1 U1470 ( .A0(n898), .A1(n1050), .B0(n1032), .B1(n871), .Y(n459) );
  OAI221XL U1471 ( .A0(n1079), .A1(n896), .B0(n1118), .B1(n955), .C0(n452), 
        .Y(n769) );
  OA22X1 U1472 ( .A0(n898), .A1(n1051), .B0(n1031), .B1(n871), .Y(n452) );
  OAI221XL U1473 ( .A0(n1080), .A1(n897), .B0(n1114), .B1(n955), .C0(n445), 
        .Y(n768) );
  OA22X1 U1474 ( .A0(n898), .A1(n1052), .B0(n1030), .B1(n871), .Y(n445) );
  OAI221XL U1475 ( .A0(n1081), .A1(n897), .B0(n1110), .B1(n955), .C0(n438), 
        .Y(n767) );
  OA22X1 U1476 ( .A0(n898), .A1(n1053), .B0(n1029), .B1(n871), .Y(n438) );
  OAI221XL U1477 ( .A0(n1082), .A1(n896), .B0(n1106), .B1(n955), .C0(n431), 
        .Y(n766) );
  OA22X1 U1478 ( .A0(n898), .A1(n1054), .B0(n1028), .B1(n871), .Y(n431) );
  OAI221XL U1479 ( .A0(n1083), .A1(n896), .B0(n1102), .B1(n955), .C0(n424), 
        .Y(n765) );
  OA22X1 U1480 ( .A0(n898), .A1(n1055), .B0(n1027), .B1(n871), .Y(n424) );
  OAI221XL U1481 ( .A0(n1084), .A1(n896), .B0(n1098), .B1(n955), .C0(n414), 
        .Y(n764) );
  CLKINVX1 U1482 ( .A(\VY[5][9] ), .Y(n1098) );
  OA22X1 U1483 ( .A0(n898), .A1(n1056), .B0(n1026), .B1(n871), .Y(n414) );
  AOI21X1 U1484 ( .A0(n889), .A1(n933), .B0(n1058), .Y(n635) );
  NAND3BX1 U1485 ( .AN(n513), .B(n1012), .C(input_cnt[2]), .Y(n636) );
  OAI222XL U1486 ( .A0(n1074), .A1(n367), .B0(n1046), .B1(n904), .C0(n369), 
        .C1(n1139), .Y(n807) );
  OAI222XL U1487 ( .A0(n1085), .A1(n902), .B0(n1057), .B1(n368), .C0(n1095), 
        .C1(n369), .Y(n741) );
  OAI222XL U1488 ( .A0(n1074), .A1(n381), .B0(n1046), .B1(n901), .C0(n956), 
        .C1(n1140), .Y(n818) );
  OAI222XL U1489 ( .A0(n1085), .A1(n899), .B0(n1057), .B1(n382), .C0(n1096), 
        .C1(n956), .Y(n752) );
  OAI222XL U1490 ( .A0(n1074), .A1(n919), .B0(n1046), .B1(n326), .C0(n961), 
        .C1(n88), .Y(n774) );
  OAI222XL U1491 ( .A0(n1085), .A1(n919), .B0(n1057), .B1(n922), .C0(n190), 
        .C1(n961), .Y(n708) );
  OAI221XL U1492 ( .A0(n1064), .A1(n919), .B0(n961), .B1(n142), .C0(n496), .Y(
        n784) );
  AOI2BB2X1 U1493 ( .B0(X[0]), .B1(n920), .A0N(n1036), .A1N(n923), .Y(n496) );
  OAI221XL U1494 ( .A0(n1065), .A1(n919), .B0(n960), .B1(n139), .C0(n495), .Y(
        n783) );
  AOI2BB2X1 U1495 ( .B0(X[1]), .B1(n921), .A0N(n1037), .A1N(n923), .Y(n495) );
  OAI221XL U1496 ( .A0(n1068), .A1(n919), .B0(n960), .B1(n130), .C0(n492), .Y(
        n780) );
  AOI2BB2X1 U1497 ( .B0(X[4]), .B1(n921), .A0N(n1040), .A1N(n923), .Y(n492) );
  OAI221XL U1498 ( .A0(n1071), .A1(n919), .B0(n960), .B1(n121), .C0(n489), .Y(
        n777) );
  AOI2BB2X1 U1499 ( .B0(X[7]), .B1(n921), .A0N(n1043), .A1N(n923), .Y(n489) );
  OAI221XL U1500 ( .A0(n1075), .A1(n919), .B0(n961), .B1(n244), .C0(n338), .Y(
        n718) );
  AOI2BB2X1 U1501 ( .B0(Y[0]), .B1(n921), .A0N(n1047), .A1N(n923), .Y(n338) );
  OAI221XL U1502 ( .A0(n1078), .A1(n918), .B0(n961), .B1(n235), .C0(n335), .Y(
        n715) );
  AOI2BB2X1 U1503 ( .B0(Y[3]), .B1(n921), .A0N(n1050), .A1N(n923), .Y(n335) );
  OAI221XL U1504 ( .A0(n1081), .A1(n919), .B0(n961), .B1(n226), .C0(n332), .Y(
        n712) );
  AOI2BB2X1 U1505 ( .B0(Y[6]), .B1(n921), .A0N(n1053), .A1N(n923), .Y(n332) );
  OAI221XL U1506 ( .A0(n1084), .A1(n918), .B0(n961), .B1(n217), .C0(n328), .Y(
        n709) );
  AOI2BB2X1 U1507 ( .B0(Y[9]), .B1(n921), .A0N(n1056), .A1N(n923), .Y(n328) );
  OAI221XL U1508 ( .A0(n1067), .A1(n918), .B0(n327), .B1(n133), .C0(n493), .Y(
        n781) );
  AOI2BB2X1 U1509 ( .B0(X[3]), .B1(n920), .A0N(n1039), .A1N(n922), .Y(n493) );
  OAI221XL U1510 ( .A0(n1070), .A1(n919), .B0(n327), .B1(n124), .C0(n490), .Y(
        n778) );
  AOI2BB2X1 U1511 ( .B0(X[6]), .B1(n920), .A0N(n1042), .A1N(n922), .Y(n490) );
  OAI221XL U1512 ( .A0(n1073), .A1(n919), .B0(n327), .B1(n115), .C0(n487), .Y(
        n775) );
  AOI2BB2X1 U1513 ( .B0(X[9]), .B1(n920), .A0N(n1045), .A1N(n922), .Y(n487) );
  OAI221XL U1514 ( .A0(n1077), .A1(n919), .B0(n961), .B1(n238), .C0(n336), .Y(
        n716) );
  AOI2BB2X1 U1515 ( .B0(Y[2]), .B1(n920), .A0N(n1049), .A1N(n922), .Y(n336) );
  OAI221XL U1516 ( .A0(n1080), .A1(n918), .B0(n961), .B1(n229), .C0(n333), .Y(
        n713) );
  AOI2BB2X1 U1517 ( .B0(Y[5]), .B1(n920), .A0N(n1052), .A1N(n922), .Y(n333) );
  OAI221XL U1518 ( .A0(n1083), .A1(n919), .B0(n961), .B1(n220), .C0(n330), .Y(
        n710) );
  AOI2BB2X1 U1519 ( .B0(Y[8]), .B1(n920), .A0N(n1055), .A1N(n922), .Y(n330) );
  OAI221XL U1520 ( .A0(n1066), .A1(n919), .B0(n327), .B1(n136), .C0(n494), .Y(
        n782) );
  AOI2BB2X1 U1521 ( .B0(X[2]), .B1(n329), .A0N(n1038), .A1N(n326), .Y(n494) );
  OAI221XL U1522 ( .A0(n1069), .A1(n919), .B0(n960), .B1(n127), .C0(n491), .Y(
        n779) );
  AOI2BB2X1 U1523 ( .B0(X[5]), .B1(n329), .A0N(n1041), .A1N(n326), .Y(n491) );
  OAI221XL U1524 ( .A0(n1072), .A1(n919), .B0(n960), .B1(n118), .C0(n488), .Y(
        n776) );
  AOI2BB2X1 U1525 ( .B0(X[8]), .B1(n329), .A0N(n1044), .A1N(n326), .Y(n488) );
  OAI221XL U1526 ( .A0(n1076), .A1(n918), .B0(n961), .B1(n241), .C0(n337), .Y(
        n717) );
  AOI2BB2X1 U1527 ( .B0(Y[1]), .B1(n329), .A0N(n1048), .A1N(n326), .Y(n337) );
  OAI221XL U1528 ( .A0(n1079), .A1(n919), .B0(n960), .B1(n232), .C0(n334), .Y(
        n714) );
  AOI2BB2X1 U1529 ( .B0(Y[4]), .B1(n329), .A0N(n1051), .A1N(n326), .Y(n334) );
  OAI221XL U1530 ( .A0(n1082), .A1(n918), .B0(n961), .B1(n223), .C0(n331), .Y(
        n711) );
  AOI2BB2X1 U1531 ( .B0(Y[7]), .B1(n329), .A0N(n1054), .A1N(n326), .Y(n331) );
  OAI222XL U1532 ( .A0(n1074), .A1(n897), .B0(n1046), .B1(n898), .C0(n955), 
        .C1(n1137), .Y(n829) );
  CLKINVX1 U1533 ( .A(\VX[5][10] ), .Y(n1137) );
  OAI222XL U1534 ( .A0(n1085), .A1(n896), .B0(n1057), .B1(n898), .C0(n1094), 
        .C1(n955), .Y(n763) );
  CLKINVX1 U1535 ( .A(\VY[5][10] ), .Y(n1094) );
  OAI221XL U1536 ( .A0(n1064), .A1(n913), .B0(n959), .B1(n1177), .C0(n511), 
        .Y(n795) );
  AOI2BB2X1 U1537 ( .B0(X[0]), .B1(n914), .A0N(n1036), .A1N(n917), .Y(n511) );
  OAI221XL U1538 ( .A0(n1065), .A1(n913), .B0(n959), .B1(n885), .C0(n510), .Y(
        n794) );
  OAI221XL U1539 ( .A0(n1075), .A1(n913), .B0(n1133), .B1(n958), .C0(n352), 
        .Y(n729) );
  AOI2BB2X1 U1540 ( .B0(n915), .B1(Y[0]), .A0N(n1047), .A1N(n917), .Y(n352) );
  OAI221XL U1541 ( .A0(n1078), .A1(n913), .B0(n1121), .B1(n958), .C0(n349), 
        .Y(n726) );
  OAI221XL U1542 ( .A0(n1081), .A1(n913), .B0(n1109), .B1(n958), .C0(n346), 
        .Y(n723) );
  OAI221XL U1543 ( .A0(n1084), .A1(n913), .B0(n1097), .B1(n958), .C0(n342), 
        .Y(n720) );
  OAI221XL U1544 ( .A0(n1068), .A1(n913), .B0(n959), .B1(n1162), .C0(n507), 
        .Y(n791) );
  OAI221XL U1545 ( .A0(n1071), .A1(n913), .B0(n959), .B1(n1150), .C0(n504), 
        .Y(n788) );
  OAI221XL U1546 ( .A0(n1076), .A1(n339), .B0(n1129), .B1(n958), .C0(n351), 
        .Y(n728) );
  OAI221XL U1547 ( .A0(n1077), .A1(n912), .B0(n1125), .B1(n958), .C0(n350), 
        .Y(n727) );
  OAI221XL U1548 ( .A0(n1079), .A1(n339), .B0(n1117), .B1(n958), .C0(n348), 
        .Y(n725) );
  OAI221XL U1549 ( .A0(n1080), .A1(n912), .B0(n1113), .B1(n958), .C0(n347), 
        .Y(n724) );
  OAI221XL U1550 ( .A0(n1082), .A1(n339), .B0(n1105), .B1(n958), .C0(n345), 
        .Y(n722) );
  OAI221XL U1551 ( .A0(n1083), .A1(n912), .B0(n1101), .B1(n958), .C0(n344), 
        .Y(n721) );
  OAI221XL U1552 ( .A0(n1066), .A1(n339), .B0(n959), .B1(n1170), .C0(n509), 
        .Y(n793) );
  OAI221XL U1553 ( .A0(n1067), .A1(n912), .B0(n959), .B1(n1166), .C0(n508), 
        .Y(n792) );
  OAI221XL U1554 ( .A0(n1069), .A1(n339), .B0(n959), .B1(n1158), .C0(n506), 
        .Y(n790) );
  OAI221XL U1555 ( .A0(n1070), .A1(n912), .B0(n959), .B1(n1154), .C0(n505), 
        .Y(n789) );
  OAI221XL U1556 ( .A0(n1072), .A1(n339), .B0(n959), .B1(n1146), .C0(n503), 
        .Y(n787) );
  OAI221XL U1557 ( .A0(n1073), .A1(n912), .B0(n959), .B1(n1142), .C0(n502), 
        .Y(n786) );
  OAI222XL U1558 ( .A0(n1074), .A1(n339), .B0(n1046), .B1(n340), .C0(n959), 
        .C1(n1138), .Y(n785) );
  OAI222XL U1559 ( .A0(n1085), .A1(n912), .B0(n1057), .B1(n916), .C0(n1093), 
        .C1(n958), .Y(n719) );
  OAI221XL U1560 ( .A0(n1035), .A1(n907), .B0(n1047), .B1(n908), .C0(n366), 
        .Y(n740) );
  BUFX4 U1561 ( .A(n357), .Y(n906) );
  AOI221XL U1562 ( .A0(n528), .A1(n498), .B0(n1012), .B1(n529), .C0(reset), 
        .Y(n357) );
  OAI21XL U1563 ( .A0(idx[2]), .A1(n926), .B0(n526), .Y(n528) );
  OAI221XL U1564 ( .A0(n907), .A1(n1024), .B0(n1037), .B1(n908), .C0(n524), 
        .Y(n805) );
  OAI221XL U1565 ( .A0(n907), .A1(n1023), .B0(n1038), .B1(n908), .C0(n523), 
        .Y(n804) );
  OAI221XL U1566 ( .A0(n907), .A1(n1022), .B0(n1039), .B1(n354), .C0(n522), 
        .Y(n803) );
  OAI221XL U1567 ( .A0(n907), .A1(n1021), .B0(n1040), .B1(n354), .C0(n521), 
        .Y(n802) );
  OAI221XL U1568 ( .A0(n907), .A1(n1020), .B0(n1041), .B1(n354), .C0(n520), 
        .Y(n801) );
  OAI221XL U1569 ( .A0(n907), .A1(n1019), .B0(n1042), .B1(n354), .C0(n519), 
        .Y(n800) );
  OAI221XL U1570 ( .A0(n907), .A1(n1018), .B0(n1043), .B1(n354), .C0(n518), 
        .Y(n799) );
  OAI221XL U1571 ( .A0(n907), .A1(n1017), .B0(n1044), .B1(n354), .C0(n517), 
        .Y(n798) );
  OAI221XL U1572 ( .A0(n907), .A1(n1016), .B0(n1045), .B1(n908), .C0(n516), 
        .Y(n797) );
  OAI221XL U1573 ( .A0(n907), .A1(n1025), .B0(n1036), .B1(n908), .C0(n525), 
        .Y(n806) );
  OAI221XL U1574 ( .A0(n1034), .A1(n907), .B0(n1048), .B1(n908), .C0(n365), 
        .Y(n739) );
  OAI221XL U1575 ( .A0(n1033), .A1(n907), .B0(n1049), .B1(n908), .C0(n364), 
        .Y(n738) );
  OAI221XL U1576 ( .A0(n1032), .A1(n907), .B0(n1050), .B1(n908), .C0(n363), 
        .Y(n737) );
  OAI221XL U1577 ( .A0(n1031), .A1(n907), .B0(n1051), .B1(n908), .C0(n362), 
        .Y(n736) );
  OAI221XL U1578 ( .A0(n1030), .A1(n907), .B0(n1052), .B1(n908), .C0(n361), 
        .Y(n735) );
  OAI221XL U1579 ( .A0(n1029), .A1(n907), .B0(n1053), .B1(n908), .C0(n360), 
        .Y(n734) );
  OAI221XL U1580 ( .A0(n1028), .A1(n907), .B0(n1054), .B1(n908), .C0(n359), 
        .Y(n733) );
  OAI221XL U1581 ( .A0(n1027), .A1(n907), .B0(n1055), .B1(n908), .C0(n358), 
        .Y(n732) );
  OAI221XL U1582 ( .A0(n1026), .A1(n907), .B0(n1056), .B1(n908), .C0(n356), 
        .Y(n731) );
  OAI222XL U1583 ( .A0(n1074), .A1(n911), .B0(n1046), .B1(n908), .C0(n963), 
        .C1(n154), .Y(n796) );
  OAI222XL U1584 ( .A0(n1085), .A1(n911), .B0(n1057), .B1(n908), .C0(n256), 
        .C1(n963), .Y(n730) );
  CLKINVX1 U1585 ( .A(\V0X[2][0] ), .Y(n999) );
  CLKINVX1 U1586 ( .A(\V0Y[2][0] ), .Y(n1011) );
  NOR3BX1 U1587 ( .AN(S[0]), .B(S[1]), .C(reset), .Y(n653) );
  INVX3 U1588 ( .A(reset), .Y(n1013) );
  OAI21XL U1589 ( .A0(n1086), .A1(n1014), .B0(n648), .Y(N221) );
  NAND4X1 U1590 ( .A(n645), .B(input_cnt[2]), .C(input_cnt[0]), .D(
        input_cnt[1]), .Y(n648) );
  NOR2X1 U1591 ( .A(n655), .B(n1014), .Y(N1501) );
  NAND2X1 U1592 ( .A(n1058), .B(n938), .Y(n656) );
  NOR2X1 U1593 ( .A(n657), .B(n1014), .Y(N1500) );
  NOR2X1 U1594 ( .A(n649), .B(n1014), .Y(N1504) );
  AOI22X1 U1595 ( .A0(n650), .A1(n634), .B0(n1058), .B1(n651), .Y(n649) );
  OAI21XL U1596 ( .A0(n949), .A1(n1063), .B0(n541), .Y(n650) );
  NOR2X1 U1597 ( .A(n654), .B(n1014), .Y(N1502) );
  NOR2X1 U1598 ( .A(n1089), .B(reset), .Y(n645) );
  NOR2X1 U1599 ( .A(n1015), .B(input_cnt[0]), .Y(N235) );
  OAI2BB1X1 U1600 ( .A0N(input_cnt[2]), .A1N(N235), .B0(n644), .Y(N237) );
  OAI21XL U1601 ( .A0(n544), .A1(n529), .B0(n645), .Y(n644) );
  CLKINVX1 U1602 ( .A(X[0]), .Y(n1025) );
  CLKINVX1 U1603 ( .A(X[1]), .Y(n1024) );
  CLKINVX1 U1604 ( .A(X[2]), .Y(n1023) );
  CLKINVX1 U1605 ( .A(X[3]), .Y(n1022) );
  CLKINVX1 U1606 ( .A(X[4]), .Y(n1021) );
  CLKINVX1 U1607 ( .A(X[5]), .Y(n1020) );
  CLKINVX1 U1608 ( .A(X[6]), .Y(n1019) );
  CLKINVX1 U1609 ( .A(X[7]), .Y(n1018) );
  CLKINVX1 U1610 ( .A(X[8]), .Y(n1017) );
  CLKINVX1 U1611 ( .A(X[9]), .Y(n1016) );
  CLKINVX1 U1612 ( .A(Y[0]), .Y(n1035) );
  CLKINVX1 U1613 ( .A(Y[1]), .Y(n1034) );
  CLKINVX1 U1614 ( .A(Y[2]), .Y(n1033) );
  CLKINVX1 U1615 ( .A(Y[3]), .Y(n1032) );
  CLKINVX1 U1616 ( .A(Y[4]), .Y(n1031) );
  CLKINVX1 U1617 ( .A(Y[5]), .Y(n1030) );
  CLKINVX1 U1618 ( .A(Y[6]), .Y(n1029) );
  CLKINVX1 U1619 ( .A(Y[7]), .Y(n1028) );
  CLKINVX1 U1620 ( .A(Y[8]), .Y(n1027) );
  CLKINVX1 U1621 ( .A(Y[9]), .Y(n1026) );
  OAI221XL U1622 ( .A0(n1058), .A1(n652), .B0(idx[1]), .B1(n634), .C0(n653), 
        .Y(N1503) );
  AOI21X1 U1623 ( .A0(n513), .A1(n646), .B0(n1015), .Y(N236) );
  NAND2X1 U1624 ( .A(input_cnt[0]), .B(n1091), .Y(n646) );
  NAND2X1 U1625 ( .A(n659), .B(n653), .Y(N1499) );
  OAI211X1 U1626 ( .A0(n894), .A1(n244), .B0(n485), .C0(n486), .Y(n484) );
  OAI211X1 U1627 ( .A0(n953), .A1(n244), .B0(n482), .C0(n483), .Y(n481) );
  OAI211X1 U1628 ( .A0(n894), .A1(n139), .B0(n627), .C0(n628), .Y(n626) );
  AOI222XL U1629 ( .A0(\VX[3][1] ), .A1(n936), .B0(\VX[5][1] ), .B1(n934), 
        .C0(\VX[4][1] ), .C1(n931), .Y(n628) );
  OAI211X1 U1630 ( .A0(n894), .A1(n136), .B0(n620), .C0(n621), .Y(n619) );
  AOI222XL U1631 ( .A0(\VX[3][2] ), .A1(n936), .B0(\VX[5][2] ), .B1(n934), 
        .C0(\VX[4][2] ), .C1(n931), .Y(n621) );
  OAI211X1 U1632 ( .A0(n895), .A1(n133), .B0(n613), .C0(n614), .Y(n612) );
  AOI222XL U1633 ( .A0(\VX[3][3] ), .A1(n936), .B0(\VX[5][3] ), .B1(n934), 
        .C0(\VX[4][3] ), .C1(n931), .Y(n614) );
  OAI211X1 U1634 ( .A0(n894), .A1(n130), .B0(n606), .C0(n607), .Y(n605) );
  AOI222XL U1635 ( .A0(\VX[3][4] ), .A1(n936), .B0(\VX[5][4] ), .B1(n934), 
        .C0(\VX[4][4] ), .C1(n931), .Y(n607) );
  OAI211X1 U1636 ( .A0(n895), .A1(n127), .B0(n599), .C0(n600), .Y(n598) );
  AOI222XL U1637 ( .A0(\VX[3][5] ), .A1(n936), .B0(\VX[5][5] ), .B1(n934), 
        .C0(\VX[4][5] ), .C1(n931), .Y(n600) );
  OAI211X1 U1638 ( .A0(n894), .A1(n124), .B0(n592), .C0(n593), .Y(n591) );
  AOI222XL U1639 ( .A0(\VX[3][6] ), .A1(n936), .B0(\VX[5][6] ), .B1(n934), 
        .C0(\VX[4][6] ), .C1(n931), .Y(n593) );
  OAI211X1 U1640 ( .A0(n895), .A1(n121), .B0(n585), .C0(n586), .Y(n584) );
  AOI222XL U1641 ( .A0(\VX[3][7] ), .A1(n936), .B0(\VX[5][7] ), .B1(n933), 
        .C0(\VX[4][7] ), .C1(n931), .Y(n586) );
  OAI211X1 U1642 ( .A0(n894), .A1(n118), .B0(n578), .C0(n579), .Y(n577) );
  AOI222XL U1643 ( .A0(\VX[3][8] ), .A1(n936), .B0(\VX[5][8] ), .B1(n933), 
        .C0(\VX[4][8] ), .C1(n930), .Y(n579) );
  OAI211X1 U1644 ( .A0(n894), .A1(n115), .B0(n571), .C0(n572), .Y(n570) );
  AOI222XL U1645 ( .A0(\VX[3][9] ), .A1(n936), .B0(\VX[5][9] ), .B1(n933), 
        .C0(\VX[4][9] ), .C1(n412), .Y(n572) );
  OAI211X1 U1646 ( .A0(n895), .A1(n241), .B0(n478), .C0(n479), .Y(n477) );
  AOI222XL U1647 ( .A0(\VY[3][1] ), .A1(n938), .B0(\VY[5][1] ), .B1(n933), 
        .C0(\VY[4][1] ), .C1(n930), .Y(n479) );
  OAI211X1 U1648 ( .A0(n894), .A1(n238), .B0(n471), .C0(n472), .Y(n470) );
  AOI222XL U1649 ( .A0(\VY[3][2] ), .A1(n938), .B0(\VY[5][2] ), .B1(n933), 
        .C0(\VY[4][2] ), .C1(n930), .Y(n472) );
  OAI211X1 U1650 ( .A0(n895), .A1(n235), .B0(n464), .C0(n465), .Y(n463) );
  AOI222XL U1651 ( .A0(\VY[3][3] ), .A1(n938), .B0(\VY[5][3] ), .B1(n933), 
        .C0(\VY[4][3] ), .C1(n930), .Y(n465) );
  OAI211X1 U1652 ( .A0(n894), .A1(n142), .B0(n640), .C0(n641), .Y(n639) );
  AOI222XL U1653 ( .A0(\VX[3][0] ), .A1(n936), .B0(\VX[5][0] ), .B1(n934), 
        .C0(n884), .C1(n931), .Y(n641) );
  NOR2X1 U1654 ( .A(S[0]), .B(S[1]), .Y(n638) );
  OAI211X1 U1655 ( .A0(n894), .A1(n232), .B0(n457), .C0(n458), .Y(n456) );
  AOI222XL U1656 ( .A0(\VY[3][4] ), .A1(n938), .B0(\VY[5][4] ), .B1(n933), 
        .C0(\VY[4][4] ), .C1(n930), .Y(n458) );
  OAI211X1 U1657 ( .A0(n895), .A1(n229), .B0(n450), .C0(n451), .Y(n449) );
  AOI222XL U1658 ( .A0(\VY[3][5] ), .A1(n938), .B0(\VY[5][5] ), .B1(n933), 
        .C0(\VY[4][5] ), .C1(n932), .Y(n451) );
  OAI211X1 U1659 ( .A0(n894), .A1(n226), .B0(n443), .C0(n444), .Y(n442) );
  AOI222XL U1660 ( .A0(\VY[3][6] ), .A1(n938), .B0(\VY[5][6] ), .B1(n933), 
        .C0(\VY[4][6] ), .C1(n930), .Y(n444) );
  OAI211X1 U1661 ( .A0(n894), .A1(n223), .B0(n436), .C0(n437), .Y(n435) );
  AOI222XL U1662 ( .A0(\VY[3][7] ), .A1(n938), .B0(\VY[5][7] ), .B1(n933), 
        .C0(\VY[4][7] ), .C1(n932), .Y(n437) );
  OAI211X1 U1663 ( .A0(n894), .A1(n220), .B0(n429), .C0(n430), .Y(n428) );
  AOI222XL U1664 ( .A0(\VY[3][8] ), .A1(n938), .B0(\VY[5][8] ), .B1(n933), 
        .C0(\VY[4][8] ), .C1(n412), .Y(n430) );
  OAI211X1 U1665 ( .A0(n894), .A1(n217), .B0(n421), .C0(n422), .Y(n420) );
  AOI222XL U1666 ( .A0(\VY[3][9] ), .A1(n938), .B0(\VY[5][9] ), .B1(n933), 
        .C0(\VY[4][9] ), .C1(n412), .Y(n422) );
  NAND2X1 U1667 ( .A(input_cnt[1]), .B(n1090), .Y(n513) );
  OAI211X1 U1668 ( .A0(n190), .A1(n894), .B0(n408), .C0(n409), .Y(n406) );
  AOI222XL U1669 ( .A0(n938), .A1(\VY[3][10] ), .B0(n935), .B1(\VY[5][10] ), 
        .C0(n930), .C1(\VY[4][10] ), .Y(n409) );
  OAI211X1 U1670 ( .A0(n894), .A1(n88), .B0(n564), .C0(n565), .Y(n563) );
  AOI222XL U1671 ( .A0(\VX[3][10] ), .A1(n938), .B0(\VX[5][10] ), .B1(n933), 
        .C0(\VX[4][10] ), .C1(n930), .Y(n565) );
  NOR3X1 U1672 ( .A(n1091), .B(input_cnt[2]), .C(n1090), .Y(n529) );
  OAI211X1 U1673 ( .A0(n952), .A1(n139), .B0(n624), .C0(n625), .Y(n623) );
  AOI222XL U1674 ( .A0(\VX[3][1] ), .A1(n950), .B0(\VX[5][1] ), .B1(n947), 
        .C0(\VX[4][1] ), .C1(n943), .Y(n625) );
  OAI211X1 U1675 ( .A0(n952), .A1(n136), .B0(n617), .C0(n618), .Y(n616) );
  AOI222XL U1676 ( .A0(\VX[3][2] ), .A1(n950), .B0(\VX[5][2] ), .B1(n947), 
        .C0(\VX[4][2] ), .C1(n943), .Y(n618) );
  OAI211X1 U1677 ( .A0(n952), .A1(n133), .B0(n610), .C0(n611), .Y(n609) );
  AOI222XL U1678 ( .A0(\VX[3][3] ), .A1(n950), .B0(\VX[5][3] ), .B1(n947), 
        .C0(\VX[4][3] ), .C1(n943), .Y(n611) );
  OAI211X1 U1679 ( .A0(n952), .A1(n130), .B0(n603), .C0(n604), .Y(n602) );
  AOI222XL U1680 ( .A0(\VX[3][4] ), .A1(n950), .B0(\VX[5][4] ), .B1(n947), 
        .C0(\VX[4][4] ), .C1(n943), .Y(n604) );
  OAI211X1 U1681 ( .A0(n952), .A1(n127), .B0(n596), .C0(n597), .Y(n595) );
  AOI222XL U1682 ( .A0(\VX[3][5] ), .A1(n950), .B0(\VX[5][5] ), .B1(n947), 
        .C0(\VX[4][5] ), .C1(n943), .Y(n597) );
  OAI211X1 U1683 ( .A0(n952), .A1(n121), .B0(n582), .C0(n583), .Y(n581) );
  AOI222XL U1684 ( .A0(\VX[3][7] ), .A1(n950), .B0(\VX[5][7] ), .B1(n947), 
        .C0(\VX[4][7] ), .C1(n943), .Y(n583) );
  OAI211X1 U1685 ( .A0(n952), .A1(n118), .B0(n575), .C0(n576), .Y(n574) );
  AOI222XL U1686 ( .A0(\VX[3][8] ), .A1(n950), .B0(\VX[5][8] ), .B1(n946), 
        .C0(\VX[4][8] ), .C1(n943), .Y(n576) );
  OAI211X1 U1687 ( .A0(n952), .A1(n115), .B0(n568), .C0(n569), .Y(n567) );
  AOI222XL U1688 ( .A0(\VX[3][9] ), .A1(n951), .B0(\VX[5][9] ), .B1(n947), 
        .C0(\VX[4][9] ), .C1(n945), .Y(n569) );
  OAI211X1 U1689 ( .A0(n952), .A1(n88), .B0(n561), .C0(n562), .Y(n560) );
  AOI222XL U1690 ( .A0(\VX[3][10] ), .A1(n949), .B0(\VX[5][10] ), .B1(n946), 
        .C0(\VX[4][10] ), .C1(n943), .Y(n562) );
  OAI211X1 U1691 ( .A0(n952), .A1(n190), .B0(n400), .C0(n401), .Y(n398) );
  AOI222XL U1692 ( .A0(\VY[3][10] ), .A1(n950), .B0(\VY[5][10] ), .B1(n947), 
        .C0(\VY[4][10] ), .C1(n943), .Y(n401) );
  OAI211X1 U1693 ( .A0(n952), .A1(n124), .B0(n589), .C0(n590), .Y(n588) );
  AOI222XL U1694 ( .A0(\VX[3][6] ), .A1(n950), .B0(\VX[5][6] ), .B1(n947), 
        .C0(\VX[4][6] ), .C1(n943), .Y(n590) );
  OAI211X1 U1695 ( .A0(n952), .A1(n232), .B0(n454), .C0(n455), .Y(n453) );
  AOI222XL U1696 ( .A0(\VY[3][4] ), .A1(n950), .B0(\VY[5][4] ), .B1(n946), 
        .C0(\VY[4][4] ), .C1(n945), .Y(n455) );
  OAI211X1 U1697 ( .A0(n953), .A1(n241), .B0(n475), .C0(n476), .Y(n474) );
  AOI222XL U1698 ( .A0(\VY[3][1] ), .A1(n949), .B0(\VY[5][1] ), .B1(n946), 
        .C0(\VY[4][1] ), .C1(n943), .Y(n476) );
  OAI211X1 U1699 ( .A0(n953), .A1(n238), .B0(n468), .C0(n469), .Y(n467) );
  AOI222XL U1700 ( .A0(\VY[3][2] ), .A1(n950), .B0(\VY[5][2] ), .B1(n946), 
        .C0(\VY[4][2] ), .C1(n943), .Y(n469) );
  OAI211X1 U1701 ( .A0(n953), .A1(n235), .B0(n461), .C0(n462), .Y(n460) );
  AOI222XL U1702 ( .A0(\VY[3][3] ), .A1(n402), .B0(\VY[5][3] ), .B1(n946), 
        .C0(\VY[4][3] ), .C1(n945), .Y(n462) );
  OAI211X1 U1703 ( .A0(n953), .A1(n229), .B0(n447), .C0(n448), .Y(n446) );
  AOI222XL U1704 ( .A0(\VY[3][5] ), .A1(n949), .B0(\VY[5][5] ), .B1(n946), 
        .C0(\VY[4][5] ), .C1(n945), .Y(n448) );
  OAI211X1 U1705 ( .A0(n953), .A1(n226), .B0(n440), .C0(n441), .Y(n439) );
  AOI222XL U1706 ( .A0(\VY[3][6] ), .A1(n949), .B0(\VY[5][6] ), .B1(n946), 
        .C0(\VY[4][6] ), .C1(n945), .Y(n441) );
  OAI211X1 U1707 ( .A0(n953), .A1(n223), .B0(n433), .C0(n434), .Y(n432) );
  AOI222XL U1708 ( .A0(\VY[3][7] ), .A1(n949), .B0(\VY[5][7] ), .B1(n946), 
        .C0(\VY[4][7] ), .C1(n945), .Y(n434) );
  OAI211X1 U1709 ( .A0(n953), .A1(n220), .B0(n426), .C0(n427), .Y(n425) );
  AOI222XL U1710 ( .A0(\VY[3][8] ), .A1(n402), .B0(\VY[5][8] ), .B1(n946), 
        .C0(\VY[4][8] ), .C1(n945), .Y(n427) );
  OAI211X1 U1711 ( .A0(n953), .A1(n217), .B0(n417), .C0(n418), .Y(n416) );
  AOI222XL U1712 ( .A0(\VY[3][9] ), .A1(n949), .B0(\VY[5][9] ), .B1(n946), 
        .C0(\VY[4][9] ), .C1(n945), .Y(n418) );
  OAI211X1 U1713 ( .A0(n952), .A1(n142), .B0(n631), .C0(n632), .Y(n630) );
  AOI222XL U1714 ( .A0(\VX[3][0] ), .A1(n950), .B0(\VX[5][0] ), .B1(n947), 
        .C0(n884), .C1(n943), .Y(n632) );
  AOI222XL U1715 ( .A0(n879), .A1(n938), .B0(n877), .B1(n934), .C0(n881), .C1(
        n931), .Y(n486) );
  AOI222XL U1716 ( .A0(n879), .A1(n402), .B0(n878), .B1(n946), .C0(\VY[4][0] ), 
        .C1(n945), .Y(n483) );
endmodule

