onerror {resume}

# obtain Modelsim version and extract the NN.Nc part after vsim
quietly set vsim_ver [regexp -inline {vsim (\d+\.\d+)(\w?)} [vsim -version]]
quietly set has_fixpt_radix 0
if {[lindex $vsim_ver 1] == 10.2} {
    if {[lindex $vsim_ver 2] >= "d"} {
        quietly set has_fixpt_radix 1
    }
} elseif {[lindex $vsim_ver 1] > 10.2} {
    quietly set has_fixpt_radix 1
}

proc add_fixpt_wave {name width frac_width signed} {
    global has_fixpt_radix
    if {$frac_width > 0 && $has_fixpt_radix} {
        set type "[string index $signed 0]fix${width}_En${frac_width}"
        if {[lsearch [radix names] $type] < 0} {
            if {$signed == "signed"} {
                radix define $type -fixed -signed -fraction $frac_width
            } else {
                radix define $type -fixed -fraction $frac_width
            }
        }
        add wave -noupdate -format Literal -radix $type $name
    } else {
        add wave -noupdate -format Literal -radix $signed $name
    }
}

add wave -noupdate -divider {Input Ports}
add wave -noupdate -format Logic /nmwtest_dut_atb/dut/clk
add wave -noupdate -format Logic /nmwtest_dut_atb/dut/areset
add wave -noupdate -format Logic /nmwtest_dut_atb/dut/h_areset
add_fixpt_wave /nmwtest_dut_atb/sim/d_0_stm 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/sim/d_1_stm 14 10 signed
add wave -noupdate -format Logical /nmwtest_dut_atb/sim/v_s_stm
add_fixpt_wave /nmwtest_dut_atb/sim/c_s_stm 8 0 unsigned
add wave -noupdate -format Logical /nmwtest_dut_atb/sim/b_0_stm
add wave -noupdate -format Logical /nmwtest_dut_atb/sim/b_1_stm
add wave -noupdate -divider {Output Ports}
add_fixpt_wave /nmwtest_dut_atb/dut/dout_0 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/sim/dout_0_stm 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/dut/dout_1 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/sim/dout_1_stm 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/dut/dout_2 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/sim/dout_2_stm 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/dut/dout_3 14 10 signed
add_fixpt_wave /nmwtest_dut_atb/sim/dout_3_stm 14 10 signed
add wave -noupdate -format Logical /nmwtest_dut_atb/dut/vout_s
add wave -noupdate -format Logical /nmwtest_dut_atb/sim/vout_s_stm
add_fixpt_wave /nmwtest_dut_atb/dut/cout_s 8 0 unsigned
add_fixpt_wave /nmwtest_dut_atb/sim/cout_s_stm 8 0 unsigned
TreeUpdate [SetDefaultTree]
