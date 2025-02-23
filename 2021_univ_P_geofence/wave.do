onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testfixture/u_geofence/clk
add wave -noupdate /testfixture/u_geofence/reset
add wave -noupdate -radix unsigned /testfixture/u_geofence/X
add wave -noupdate -radix unsigned /testfixture/u_geofence/Y
add wave -noupdate /testfixture/u_geofence/valid
add wave -noupdate /testfixture/u_geofence/is_inside
add wave -noupdate -radix decimal /testfixture/u_geofence/targetX
add wave -noupdate -radix decimal /testfixture/u_geofence/targetY
add wave -noupdate -radix unsigned /testfixture/u_geofence/idx
add wave -noupdate -radix unsigned /testfixture/u_geofence/jdx
add wave -noupdate -radix unsigned /testfixture/u_geofence/input_cnt
add wave -noupdate -radix decimal -childformat {{{/testfixture/u_geofence/VX[0]} -radix decimal} {{/testfixture/u_geofence/VX[1]} -radix decimal} {{/testfixture/u_geofence/VX[2]} -radix decimal} {{/testfixture/u_geofence/VX[3]} -radix decimal} {{/testfixture/u_geofence/VX[4]} -radix decimal} {{/testfixture/u_geofence/VX[5]} -radix decimal}} -expand -subitemconfig {{/testfixture/u_geofence/VX[0]} {-radix decimal} {/testfixture/u_geofence/VX[1]} {-radix decimal} {/testfixture/u_geofence/VX[2]} {-radix decimal} {/testfixture/u_geofence/VX[3]} {-radix decimal} {/testfixture/u_geofence/VX[4]} {-radix decimal} {/testfixture/u_geofence/VX[5]} {-radix decimal}} /testfixture/u_geofence/VX
add wave -noupdate -radix decimal -childformat {{{/testfixture/u_geofence/VY[0]} -radix decimal} {{/testfixture/u_geofence/VY[1]} -radix decimal} {{/testfixture/u_geofence/VY[2]} -radix decimal} {{/testfixture/u_geofence/VY[3]} -radix decimal} {{/testfixture/u_geofence/VY[4]} -radix decimal} {{/testfixture/u_geofence/VY[5]} -radix decimal}} -expand -subitemconfig {{/testfixture/u_geofence/VY[0]} {-radix decimal} {/testfixture/u_geofence/VY[1]} {-radix decimal} {/testfixture/u_geofence/VY[2]} {-radix decimal} {/testfixture/u_geofence/VY[3]} {-radix decimal} {/testfixture/u_geofence/VY[4]} {-radix decimal} {/testfixture/u_geofence/VY[5]} {-radix decimal}} /testfixture/u_geofence/VY
add wave -noupdate /testfixture/u_geofence/S
add wave -noupdate /testfixture/u_geofence/S_next
add wave -noupdate -radix decimal /testfixture/u_geofence/V0X
add wave -noupdate -radix decimal /testfixture/u_geofence/V0Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT0X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT0Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT1X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT1Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT2X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT2Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT3X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT3Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT4X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT4Y
add wave -noupdate -radix decimal /testfixture/u_geofence/VT5X
add wave -noupdate -radix decimal /testfixture/u_geofence/VT5Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V01X
add wave -noupdate -radix decimal /testfixture/u_geofence/V01Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V12X
add wave -noupdate -radix decimal /testfixture/u_geofence/V12Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V23X
add wave -noupdate -radix decimal /testfixture/u_geofence/V23Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V34X
add wave -noupdate -radix decimal /testfixture/u_geofence/V34Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V45X
add wave -noupdate -radix decimal /testfixture/u_geofence/V45Y
add wave -noupdate -radix decimal /testfixture/u_geofence/V50X
add wave -noupdate -radix decimal /testfixture/u_geofence/V50Y
add wave -noupdate -radix decimal /testfixture/u_geofence/dot0
add wave -noupdate -radix decimal /testfixture/u_geofence/dot1
add wave -noupdate -radix decimal /testfixture/u_geofence/dot2
add wave -noupdate -radix decimal /testfixture/u_geofence/dot3
add wave -noupdate -radix decimal /testfixture/u_geofence/dot4
add wave -noupdate -radix decimal /testfixture/u_geofence/dot5
add wave -noupdate /testfixture/u_geofence/result
add wave -noupdate -radix decimal /testfixture/u_geofence/tmp_dot
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {135000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 254
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {419840 ps}
