 
****************************************
Report : resources
Design : CONV
Version: T-2022.03
Date   : Tue Mar 18 02:59:27 2025
****************************************


Resource Report for this hierarchy in file ./CONV.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_4        | DW01_inc       | width=4    | add_87_S2 (CONV.v:87)      |
| add_x_41       | DW01_inc       | width=20   | add_175 (CONV.v:175)       |
| add_x_44       | DW01_add       | width=6    | add_189 (CONV.v:189)       |
| add_x_45       | DW01_add       | width=6    | add_190_aco (CONV.v:190)   |
| add_x_50       | DW01_inc       | width=3    | add_198_S2 (CONV.v:198)    |
| gt_x_60        | DW_cmp         | width=3    | gt_230 (CONV.v:230)        |
| gt_x_61        | DW_cmp         | width=20   | gt_230_S2 (CONV.v:230)     |
| sub_x_68       | DW01_dec       | width=12   | sub_276_S2 (CONV.v:276)    |
| add_x_7        | DW01_inc       | width=6    | add_113 (CONV.v:113)       |
|                |                |            | add_116 (CONV.v:116)       |
|                |                |            | add_119_2 (CONV.v:119)     |
|                |                |            | add_99 (CONV.v:99)         |
| add_x_8        | DW01_inc       | width=6    | add_100 (CONV.v:100)       |
|                |                |            | add_117 (CONV.v:117)       |
|                |                |            | add_118 (CONV.v:118)       |
|                |                |            | add_119 (CONV.v:119)       |
| sub_x_13       | DW01_dec       | width=6    | sub_111 (CONV.v:111)       |
|                |                |            | sub_112 (CONV.v:112)       |
|                |                |            | sub_113 (CONV.v:113)       |
| sub_x_14       | DW01_dec       | width=6    | sub_111_2 (CONV.v:111)     |
|                |                |            | sub_114 (CONV.v:114)       |
|                |                |            | sub_117 (CONV.v:117)       |
| DP_OP_113J1_123_2357            |            |                            |
|                | DP_OP_113J1_123_2357 |      |                            |
| DP_OP_114J1_124_6188            |            |                            |
|                | DP_OP_114J1_124_6188 |      |                            |
=============================================================================

Datapath Report for DP_OP_113J1_123_2357
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_113J1_123_2357 | add_171_S2 (CONV.v:171)                             |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 40    |                                          |
| O1    | PO   | Unsigned | 40    | I1 + $unsigned(29'b10011000100000000000000000000) (CONV.v:171) |
==============================================================================

Datapath Report for DP_OP_114J1_124_6188
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_114J1_124_6188 | mult_165 (CONV.v:165) add_172 (CONV.v:172)          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 20    |                                          |
| I2    | PI   | Signed   | 20    |                                          |
| I3    | PI   | Signed   | 40    |                                          |
| T38   | IFO  | Signed   | 40    | I1 * I2 (CONV.v:165)                     |
| O1    | PO   | Unsigned | 40    | I3 + T38 (CONV.v:172)                    |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_4            | DW01_inc         | apparch (area)     |                |
| add_x_41           | DW01_inc         | apparch (area)     |                |
| add_x_44           | DW01_add         | apparch (area)     |                |
| add_x_45           | DW01_add         | apparch (area)     |                |
| add_x_50           | DW01_inc         | apparch (area)     |                |
| gt_x_60            | DW_cmp           | apparch (area)     |                |
| gt_x_61            | DW_cmp           | apparch (area)     |                |
| sub_x_68           | DW01_dec         | apparch (area)     |                |
| add_x_7            | DW01_inc         | apparch (area)     |                |
| add_x_8            | DW01_inc         | apparch (area)     |                |
| sub_x_13           | DW01_dec         | apparch (area)     |                |
| sub_x_14           | DW01_dec         | apparch (area)     |                |
| DP_OP_113J1_123_2357                  |                    |                |
|                    | DP_OP_113J1_123_2357 | str (area)     |                |
| DP_OP_114J1_124_6188                  |                    |                |
|                    | DP_OP_114J1_124_6188 | str (area)     |                |
|                    |                  | mult_arch: benc_radix8              |
===============================================================================

1
