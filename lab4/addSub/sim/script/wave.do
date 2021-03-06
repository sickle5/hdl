onerror {resume}
radix define States {
    "7'b1000000" "0" -color "red",
    "7'b1111001" "1" -color "red",
    "7'b0100100" "2" -color "red",
    "7'b0110000" "3" -color "red",
    "7'b0011001" "4" -color "red",
    "7'b0010010" "5" -color "red",
    "7'b0000010" "6" -color "red",
    "7'b1111000" "7" -color "red",
    "7'b0000000" "8" -color "red",
    "7'b0011000" "9" -color "red",
    -default default
}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group uut -radix decimal /top_tb/uut/a
add wave -noupdate -expand -group uut -radix decimal /top_tb/uut/b
add wave -noupdate -expand -group uut /top_tb/uut/add
add wave -noupdate -expand -group uut /top_tb/uut/sub
add wave -noupdate -expand -group uut /top_tb/uut/clk
add wave -noupdate -expand -group uut /top_tb/uut/reset
add wave -noupdate -expand -group uut -radix States /top_tb/uut/hex0
add wave -noupdate -expand -group uut -radix States /top_tb/uut/hex1
add wave -noupdate -expand -group uut -radix States /top_tb/uut/hex2
add wave -noupdate -expand -group uut /top_tb/uut/asig
add wave -noupdate -expand -group uut /top_tb/uut/bsig
add wave -noupdate -expand -group uut /top_tb/uut/rezsig
add wave -noupdate -expand -group uut /top_tb/uut/opersig
add wave -noupdate -expand -group uut /top_tb/uut/subsig
add wave -noupdate -expand -group uut /top_tb/uut/addsig
add wave -noupdate -expand -group alu /top_tb/uut/add_sub/a
add wave -noupdate -expand -group alu /top_tb/uut/add_sub/b
add wave -noupdate -expand -group alu /top_tb/uut/add_sub/oper
add wave -noupdate -expand -group alu /top_tb/uut/add_sub/output
add wave -noupdate -expand -group alu /top_tb/uut/add_sub/rez
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {280000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {525 ns}
