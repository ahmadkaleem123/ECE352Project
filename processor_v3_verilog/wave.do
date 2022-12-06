onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multicycle_tb/reset
add wave -noupdate /multicycle_tb/clock
add wave -noupdate -divider {Hex Display}
add wave -noupdate -divider {multicycle.v inputs}
add wave -noupdate /multicycle_tb/KEY
add wave -noupdate /multicycle_tb/SW
add wave -noupdate -divider {multicycle.v outputs}
add wave -noupdate /multicycle_tb/LEDG
add wave -noupdate /multicycle_tb/LEDR
add wave -noupdate /multicycle_tb/HEX0
add wave -noupdate /multicycle_tb/HEX1
add wave -noupdate /multicycle_tb/HEX2
add wave -noupdate /multicycle_tb/HEX3
add wave -noupdate /multicycle_tb/HEX4
add wave -noupdate /multicycle_tb/HEX5
add wave -noupdate /multicycle_tb/HEX6
add wave -noupdate /multicycle_tb/HEX7
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2500 ns} 0}
configure wave -namecolwidth 227
configure wave -valuecolwidth 57
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2500 ns}
add wave -position 2  sim:/multicycle_tb/DUT/PC/data
add wave -position 3  sim:/multicycle_tb/DUT/Control/state
add wave -position 4  sim:/multicycle_tb/DUT/RF_block/k0
add wave -position 5  sim:/multicycle_tb/DUT/RF_block/k1
add wave -position 6  sim:/multicycle_tb/DUT/RF_block/k2
add wave -position 7  sim:/multicycle_tb/DUT/RF_block/k3
add wave -position 8  sim:/multicycle_tb/DUT/Control/instr
add wave -position 9  sim:/multicycle_tb/DUT/Counter/q
add wave -position 10  sim:/multicycle_tb/DUT/VRF_block/V0
add wave -position 11  sim:/multicycle_tb/DUT/VRF_block/V1
add wave -position 12  sim:/multicycle_tb/DUT/VRF_block/V2
add wave -position 13  sim:/multicycle_tb/DUT/VRF_block/V3
add wave -position insertpoint  \
sim:/multicycle_tb/DUT/DataMem/wren \
sim:/multicycle_tb/DUT/DataMem/MemRead \
sim:/multicycle_tb/DUT/DataMem/data \
sim:/multicycle_tb/DUT/DataMem/q
add wave -position insertpoint  \
sim:/multicycle_tb/DUT/DataMem/address
add wave -position insertpoint  \
sim:/multicycle_tb/DUT/DataMem/wren \
sim:/multicycle_tb/DUT/DataMem/MemRead \
sim:/multicycle_tb/DUT/DataMem/data \
sim:/multicycle_tb/DUT/DataMem/q
add wave -position insertpoint  \
sim:/multicycle_tb/DUT/Control/TLoad