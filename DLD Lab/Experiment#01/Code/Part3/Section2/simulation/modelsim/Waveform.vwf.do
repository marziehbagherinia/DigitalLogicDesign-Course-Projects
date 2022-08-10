vlog -work work C:/altera/13.0sp1/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CounterDivider_vlg_vec_tst
onerror {resume}
add wave {CounterDivider_vlg_vec_tst/i1/clk}
add wave {CounterDivider_vlg_vec_tst/i1/DownUp}
add wave {CounterDivider_vlg_vec_tst/i1/GN}
add wave {CounterDivider_vlg_vec_tst/i1/In0}
add wave {CounterDivider_vlg_vec_tst/i1/In1}
add wave {CounterDivider_vlg_vec_tst/i1/In2}
add wave {CounterDivider_vlg_vec_tst/i1/In3}
add wave {CounterDivider_vlg_vec_tst/i1/In4}
add wave {CounterDivider_vlg_vec_tst/i1/In5}
add wave {CounterDivider_vlg_vec_tst/i1/In6}
add wave {CounterDivider_vlg_vec_tst/i1/In7}
add wave {CounterDivider_vlg_vec_tst/i1/Init}
add wave {CounterDivider_vlg_vec_tst/i1/maxMin2}
add wave {CounterDivider_vlg_vec_tst/i1/out0}
add wave {CounterDivider_vlg_vec_tst/i1/out1}
add wave {CounterDivider_vlg_vec_tst/i1/out2}
add wave {CounterDivider_vlg_vec_tst/i1/out3}
add wave {CounterDivider_vlg_vec_tst/i1/out4}
add wave {CounterDivider_vlg_vec_tst/i1/out5}
add wave {CounterDivider_vlg_vec_tst/i1/out6}
add wave {CounterDivider_vlg_vec_tst/i1/out7}
add wave {CounterDivider_vlg_vec_tst/i1/ripple1}
run -all
