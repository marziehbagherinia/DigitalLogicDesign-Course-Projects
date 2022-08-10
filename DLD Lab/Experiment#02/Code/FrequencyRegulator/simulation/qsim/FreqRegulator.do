onerror {quit -f}
vlib work
vlog -work work FreqRegulator.vo
vlog -work work FreqRegulator.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FreqRegulator_vlg_vec_tst
vcd file -direction FreqRegulator.msim.vcd
vcd add -internal FreqRegulator_vlg_vec_tst/*
vcd add -internal FreqRegulator_vlg_vec_tst/i1/*
add wave /*
run -all
