vlog -work work C:/Users/ASUS/Desktop/LAB3/WaveformGenerator/Quartus/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.WaveformGenerator_vlg_vec_tst
onerror {resume}
add wave {WaveformGenerator_vlg_vec_tst/i1/rst}
add wave {WaveformGenerator_vlg_vec_tst/i1/select}
add wave {WaveformGenerator_vlg_vec_tst/i1/func}
add wave {WaveformGenerator_vlg_vec_tst/i1/func[2]}
add wave {WaveformGenerator_vlg_vec_tst/i1/func[1]}
add wave {WaveformGenerator_vlg_vec_tst/i1/func[0]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[7]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[6]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[5]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[4]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[3]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[2]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[1]}
add wave {WaveformGenerator_vlg_vec_tst/i1/result[0]}
add wave {WaveformGenerator_vlg_vec_tst/i1/clk}
run -all
