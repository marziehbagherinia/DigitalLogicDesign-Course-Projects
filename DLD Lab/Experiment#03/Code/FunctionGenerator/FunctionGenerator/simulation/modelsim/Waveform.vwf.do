vlog -work work C:/Users/ASUS/Desktop/LAB3/FunctionGenerator/FunctionGenerator/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.WaveformGenerator_vlg_vec_tst
onerror {resume}
add wave {WaveformGenerator_vlg_vec_tst/i1/clk}
add wave {WaveformGenerator_vlg_vec_tst/i1/rst}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[12]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[11]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[10]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[9]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[8]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[7]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[6]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[5]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[4]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[3]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[2]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[1]}
add wave {WaveformGenerator_vlg_vec_tst/i1/SW[0]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[7]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[6]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[5]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[4]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[3]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[2]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[1]}
add wave {WaveformGenerator_vlg_vec_tst/i1/data_out[0]}
run -all
