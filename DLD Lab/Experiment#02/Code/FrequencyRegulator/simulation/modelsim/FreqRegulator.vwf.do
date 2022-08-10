vlog -work work C:/Users/ASUS/Desktop/Presentation1/LAB2/simulation/modelsim/FreqRegulator.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FreqRegulator_vlg_vec_tst
onerror {resume}
add wave {FreqRegulator_vlg_vec_tst/i1/clk}
add wave {FreqRegulator_vlg_vec_tst/i1/clk2}
add wave {FreqRegulator_vlg_vec_tst/i1/Down}
add wave {FreqRegulator_vlg_vec_tst/i1/GN}
add wave {FreqRegulator_vlg_vec_tst/i1/Init}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[7]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[6]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[5]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[4]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[3]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[2]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[1]}
add wave {FreqRegulator_vlg_vec_tst/i1/setPeriod[0]}
add wave {FreqRegulator_vlg_vec_tst/i1/load}
add wave {FreqRegulator_vlg_vec_tst/i1/tffout}
add wave {FreqRegulator_vlg_vec_tst/i1/equal}
add wave {FreqRegulator_vlg_vec_tst/i1/duration}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[7]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[6]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[5]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[4]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[3]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[2]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[1]}
add wave {FreqRegulator_vlg_vec_tst/i1/duration[0]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[7]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[6]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[5]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[4]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[3]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[2]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[1]}
add wave {FreqRegulator_vlg_vec_tst/i1/adjustedDiv[0]}
run -all
