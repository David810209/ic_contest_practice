 
****************************************
Report : resources
Design : LBP
Version: T-2022.03
Date   : Thu Mar 20 11:25:31 2025
****************************************


Resource Report for this hierarchy in file ./LBP.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_6        | DW01_inc       | width=4    | add_72_S2 (LBP.v:72)       |
| gte_x_12       | DW_cmp         | width=8    | gte_111_S2 (LBP.v:111)     |
| sub_x_15       | DW01_sub       | width=4    | sub_118 (LBP.v:118)        |
| ash_16         | DW_leftsh      | A_width=8  | sll_119 (LBP.v:119)        |
|                |                | SH_width=4 |                            |
| add_x_17       | DW01_add       | width=8    | add_123_S2 (LBP.v:123)     |
| add_x_2        | DW01_inc       | width=7    | add_62 (LBP.v:62)          |
|                |                |            | add_88 (LBP.v:88)          |
|                |                |            | add_89 (LBP.v:89)          |
|                |                |            | add_90 (LBP.v:90)          |
| sub_x_8        | DW01_dec       | width=7    | sub_83 (LBP.v:83)          |
|                |                |            | sub_84 (LBP.v:84)          |
|                |                |            | sub_85 (LBP.v:85)          |
| sub_x_9        | DW01_dec       | width=7    | sub_83_2 (LBP.v:83)        |
|                |                |            | sub_86 (LBP.v:86)          |
|                |                |            | sub_88 (LBP.v:88)          |
| add_x_10       | DW01_inc       | width=7    | add_85 (LBP.v:85)          |
|                |                |            | add_87 (LBP.v:87)          |
|                |                |            | add_90_2 (LBP.v:90)        |
| DP_OP_60J1_122_504              |            |                            |
|                | DP_OP_60J1_122_504 |        |                            |
=============================================================================

Datapath Report for DP_OP_60J1_122_504
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_60J1_122_504   | mult_add_63_aco (LBP.v:63) add_63_aco (LBP.v:63)    |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 7     |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| T33   | IFO  | Unsigned | 7     | I1 * I2 (LBP.v:63)                       |
| O1    | PO   | Unsigned | 7     | T33 + $unsigned(1'b1) (LBP.v:63)         |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_6            | DW01_inc         | apparch (area)     |                |
| gte_x_12           | DW_cmp           | apparch (area)     |                |
| sub_x_15           | DW01_sub         | apparch (area)     |                |
| ash_16             | DW_leftsh        | astr (area)        |                |
| add_x_17           | DW01_add         | pparch (area,speed)                 |
| add_x_2            | DW01_inc         | apparch (area)     |                |
| sub_x_8            | DW01_dec         | apparch (area)     |                |
| sub_x_9            | DW01_dec         | apparch (area)     |                |
| add_x_10           | DW01_inc         | apparch (area)     |                |
| DP_OP_60J1_122_504 | DP_OP_60J1_122_504 | str (area,speed) |                |
|                    |                  | mult_arch: and     |                |
===============================================================================

1
