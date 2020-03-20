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
add wave -noupdate -format Logic /nmwtest_dut_scale1_atb/dut/clk
add wave -noupdate -format Logic /nmwtest_dut_scale1_atb/dut/areset
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/xIn_v_stm
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/xIn_c_stm 8 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/xIn_0_stm 32 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/xIn_1_stm 32 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/xIn_2_stm 32 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/xIn_3_stm 32 0 signed
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/gain_i_stm
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/dut/qOut_v
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/qOut_v_stm
add_fixpt_wave /nmwtest_dut_scale1_atb/dut/qOut_c 8 0 unsigned
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/qOut_c_stm 8 0 unsigned
add_fixpt_wave /nmwtest_dut_scale1_atb/dut/qOut_0 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/qOut_0_stm 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/dut/qOut_1 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/qOut_1_stm 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/dut/qOut_2 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/qOut_2_stm 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/dut/qOut_3 14 0 signed
add_fixpt_wave /nmwtest_dut_scale1_atb/sim/qOut_3_stm 14 0 signed
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/dut/eOut_0
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/eOut_0_stm
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/dut/eOut_1
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/eOut_1_stm
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/dut/eOut_2
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/eOut_2_stm
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/dut/eOut_3
add wave -noupdate -format Logical /nmwtest_dut_scale1_atb/sim/eOut_3_stm
TreeUpdate [SetDefaultTree]
