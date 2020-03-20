# This is the Run ModelSim file list for 'nmwtest_dut'

if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut_safe_path_msim.vhd
}
if {![info exist use_own_safe_path] || ![string equal -nocase $use_own_safe_path true]} {
    vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut_safe_path_msim.vhd
}
vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut.vhd
vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut.vhd
vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut.vhd
vcom -93 -quiet $base_dir/nmwtest/nmwtest_dut.vhd
source $base_dir/nmwtest/nmwtest_dut_filter1.dspb.do
source $base_dir/nmwtest/nmwtest_dut_scale1.dspb.do
