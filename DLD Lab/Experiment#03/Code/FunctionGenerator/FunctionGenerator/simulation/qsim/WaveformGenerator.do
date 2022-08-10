onerror {quit -f}
vlib work
vlog -work work WaveformGenerator.vo
vlog -work work WaveformGenerator.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.WaveformGenerator_vlg_vec_tst
vcd file -direction WaveformGenerator.msim.vcd
vcd add -internal WaveformGenerator_vlg_vec_tst/*
vcd add -internal WaveformGenerator_vlg_vec_tst/i1/*
add wave /*
run -all
