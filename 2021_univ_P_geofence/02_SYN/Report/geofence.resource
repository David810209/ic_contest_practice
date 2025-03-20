 
****************************************
Report : resources
Design : geofence
Version: T-2022.03
Date   : Thu Mar 20 11:11:25 2025
****************************************


Resource Report for this hierarchy in file ./geofence.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_3        | DW01_inc       | width=3    | add_43_S2 (geofence.v:43)  |
| sub_x_38       | DW01_sub       | width=12   | sub_90 (geofence.v:90)     |
| sub_x_39       | DW01_sub       | width=12   | sub_91 (geofence.v:91)     |
| sub_x_40       | DW01_sub       | width=12   | sub_92 (geofence.v:92)     |
| sub_x_41       | DW01_sub       | width=12   | sub_93 (geofence.v:93)     |
| sub_x_42       | DW01_sub       | width=12   | sub_94 (geofence.v:94)     |
| sub_x_43       | DW01_sub       | width=12   | sub_95 (geofence.v:95)     |
| sub_x_44       | DW01_sub       | width=12   | sub_96 (geofence.v:96)     |
| sub_x_45       | DW01_sub       | width=12   | sub_97 (geofence.v:97)     |
| add_x_46       | DW01_inc       | width=3    | add_145 (geofence.v:145)   |
| add_x_47       | DW01_add       | width=3    | add_146 (geofence.v:146)   |
| add_x_48       | DW01_inc       | width=3    | add_150 (geofence.v:150)   |
| sub_x_5        | DW01_dec       | width=4    | sub_56 (geofence.v:56)     |
|                |                |            | sub_57 (geofence.v:57)     |
| DP_OP_488J1_122_7141            |            |                            |
|                | DP_OP_488J1_122_7141 |      |                            |
| DP_OP_489J1_123_3401            |            |                            |
|                | DP_OP_489J1_123_3401 |      |                            |
| DP_OP_490J1_124_3401            |            |                            |
|                | DP_OP_490J1_124_3401 |      |                            |
| DP_OP_491J1_125_3401            |            |                            |
|                | DP_OP_491J1_125_3401 |      |                            |
| DP_OP_492J1_126_3401            |            |                            |
|                | DP_OP_492J1_126_3401 |      |                            |
| DP_OP_493J1_127_3401            |            |                            |
|                | DP_OP_493J1_127_3401 |      |                            |
| DP_OP_494J1_128_4457            |            |                            |
|                | DP_OP_494J1_128_4457 |      |                            |
=============================================================================

Datapath Report for DP_OP_488J1_122_7141
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_488J1_122_7141 | sub_100 (geofence.v:100) mult_126 (geofence.v:126)  |
|                      | sub_89 (geofence.v:89) sub_114 (geofence.v:114)     |
|                      | sub_126 (geofence.v:126)                            |
|                      | mult_126_2 (geofence.v:126)                         |
|                      | sub_101 (geofence.v:101) sub_88 (geofence.v:88)     |
|                      | sub_113 (geofence.v:113)                            |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T44   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:100)                 |
| T68   | IFO  | Signed   | 24    | T44 * O1 (geofence.v:126)                |
| T45   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:101)                 |
| T69   | IFO  | Signed   | 24    | T45 * O3 (geofence.v:126)                |
| O1    | PO   | Signed   | 12    | I3 - I4 ( geofence.v:89 geofence.v:114 ) |
| O2    | PO   | Signed   | 25    | T68 - T69 (geofence.v:126)               |
| O3    | PO   | Signed   | 12    | I6 - I1 ( geofence.v:88 geofence.v:113 ) |
==============================================================================

Datapath Report for DP_OP_489J1_123_3401
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_489J1_123_3401 | sub_102 (geofence.v:102) mult_127 (geofence.v:127)  |
|                      | sub_116 (geofence.v:116) sub_127 (geofence.v:127)   |
|                      | mult_127_2 (geofence.v:127)                         |
|                      | sub_103 (geofence.v:103) sub_115 (geofence.v:115)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T46   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:102)                 |
| T59   | IFO  | Signed   | 12    | I3 - I4 (geofence.v:116)                 |
| T71   | IFO  | Signed   | 24    | T46 * T59 (geofence.v:127)               |
| T47   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:103)                 |
| T58   | IFO  | Signed   | 12    | I6 - I1 (geofence.v:115)                 |
| T72   | IFO  | Signed   | 24    | T47 * T58 (geofence.v:127)               |
| O1    | PO   | Signed   | 25    | T71 - T72 (geofence.v:127)               |
==============================================================================

Datapath Report for DP_OP_490J1_124_3401
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_490J1_124_3401 | sub_104 (geofence.v:104) mult_128 (geofence.v:128)  |
|                      | sub_118 (geofence.v:118) sub_128 (geofence.v:128)   |
|                      | mult_128_2 (geofence.v:128)                         |
|                      | sub_105 (geofence.v:105) sub_117 (geofence.v:117)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T48   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:104)                 |
| T61   | IFO  | Signed   | 12    | I3 - I4 (geofence.v:118)                 |
| T74   | IFO  | Signed   | 24    | T48 * T61 (geofence.v:128)               |
| T49   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:105)                 |
| T60   | IFO  | Signed   | 12    | I6 - I1 (geofence.v:117)                 |
| T75   | IFO  | Signed   | 24    | T49 * T60 (geofence.v:128)               |
| O1    | PO   | Signed   | 25    | T74 - T75 (geofence.v:128)               |
==============================================================================

Datapath Report for DP_OP_491J1_125_3401
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_491J1_125_3401 | sub_106 (geofence.v:106) mult_129 (geofence.v:129)  |
|                      | sub_120 (geofence.v:120) sub_129 (geofence.v:129)   |
|                      | mult_129_2 (geofence.v:129)                         |
|                      | sub_107 (geofence.v:107) sub_119 (geofence.v:119)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T50   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:106)                 |
| T63   | IFO  | Signed   | 12    | I3 - I4 (geofence.v:120)                 |
| T77   | IFO  | Signed   | 24    | T50 * T63 (geofence.v:129)               |
| T51   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:107)                 |
| T62   | IFO  | Signed   | 12    | I6 - I1 (geofence.v:119)                 |
| T78   | IFO  | Signed   | 24    | T51 * T62 (geofence.v:129)               |
| O1    | PO   | Signed   | 25    | T77 - T78 (geofence.v:129)               |
==============================================================================

Datapath Report for DP_OP_492J1_126_3401
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_492J1_126_3401 | sub_108 (geofence.v:108) mult_130 (geofence.v:130)  |
|                      | sub_122 (geofence.v:122) sub_130 (geofence.v:130)   |
|                      | mult_130_2 (geofence.v:130)                         |
|                      | sub_109 (geofence.v:109) sub_121 (geofence.v:121)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T52   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:108)                 |
| T65   | IFO  | Signed   | 12    | I3 - I4 (geofence.v:122)                 |
| T80   | IFO  | Signed   | 24    | T52 * T65 (geofence.v:130)               |
| T53   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:109)                 |
| T64   | IFO  | Signed   | 12    | I6 - I1 (geofence.v:121)                 |
| T81   | IFO  | Signed   | 24    | T53 * T64 (geofence.v:130)               |
| O1    | PO   | Signed   | 25    | T80 - T81 (geofence.v:130)               |
==============================================================================

Datapath Report for DP_OP_493J1_127_3401
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_493J1_127_3401 | sub_110 (geofence.v:110) mult_131 (geofence.v:131)  |
|                      | sub_124 (geofence.v:124) sub_131 (geofence.v:131)   |
|                      | mult_131_2 (geofence.v:131)                         |
|                      | sub_111 (geofence.v:111) sub_123 (geofence.v:123)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 11    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| I3    | PI   | Unsigned | 11    |                                          |
| I4    | PI   | Unsigned | 11    |                                          |
| I5    | PI   | Unsigned | 11    |                                          |
| I6    | PI   | Unsigned | 11    |                                          |
| T54   | IFO  | Signed   | 12    | I1 - I2 (geofence.v:110)                 |
| T67   | IFO  | Signed   | 12    | I3 - I4 (geofence.v:124)                 |
| T83   | IFO  | Signed   | 24    | T54 * T67 (geofence.v:131)               |
| T55   | IFO  | Signed   | 12    | I4 - I5 (geofence.v:111)                 |
| T66   | IFO  | Signed   | 12    | I6 - I1 (geofence.v:123)                 |
| T84   | IFO  | Signed   | 24    | T55 * T66 (geofence.v:131)               |
| O1    | PO   | Signed   | 25    | T83 - T84 (geofence.v:131)               |
==============================================================================

Datapath Report for DP_OP_494J1_128_4457
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_494J1_128_4457 | mult_136 (geofence.v:136) sub_136 (geofence.v:136)  |
|                      | mult_136_2 (geofence.v:136)                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 12    |                                          |
| I2    | PI   | Signed   | 12    |                                          |
| I3    | PI   | Signed   | 12    |                                          |
| I4    | PI   | Signed   | 12    |                                          |
| T86   | IFO  | Signed   | 24    | I1 * I2 (geofence.v:136)                 |
| T87   | IFO  | Signed   | 24    | I3 * I4 (geofence.v:136)                 |
| O1    | PO   | Signed   | 25    | T86 - T87 (geofence.v:136)               |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_3            | DW01_inc         | apparch (area)     |                |
| sub_x_38           | DW01_sub         | apparch (area)     |                |
| sub_x_39           | DW01_sub         | apparch (area)     |                |
| sub_x_40           | DW01_sub         | apparch (area)     |                |
| sub_x_41           | DW01_sub         | apparch (area)     |                |
| sub_x_42           | DW01_sub         | apparch (area)     |                |
| sub_x_43           | DW01_sub         | apparch (area)     |                |
| sub_x_44           | DW01_sub         | apparch (area)     |                |
| sub_x_45           | DW01_sub         | apparch (area)     |                |
| add_x_46           | DW01_inc         | apparch (area)     |                |
| add_x_47           | DW01_add         | apparch (area)     |                |
| add_x_48           | DW01_inc         | apparch (area)     |                |
| sub_x_5            | DW01_dec         | apparch (area)     |                |
| DP_OP_488J1_122_7141                  |                    |                |
|                    | DP_OP_488J1_122_7141 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_489J1_123_3401                  |                    |                |
|                    | DP_OP_489J1_123_3401 | str (area,speed)                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_490J1_124_3401                  |                    |                |
|                    | DP_OP_490J1_124_3401 | str (area,speed)                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_491J1_125_3401                  |                    |                |
|                    | DP_OP_491J1_125_3401 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_492J1_126_3401                  |                    |                |
|                    | DP_OP_492J1_126_3401 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_493J1_127_3401                  |                    |                |
|                    | DP_OP_493J1_127_3401 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_494J1_128_4457                  |                    |                |
|                    | DP_OP_494J1_128_4457 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
===============================================================================

1
