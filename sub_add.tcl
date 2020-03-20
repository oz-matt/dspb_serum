set mdldir [file dirname [info script]]

puts "Adding DSP Builder System sub to project\n"

set_global_assignment -name "QIP_FILE" [file join $mdldir "sub.qip" ]

if { [file exist [file join $mdldir "sub_add_user.tcl" ]] } {
	source [file join $mdldir "sub_add_user.tcl" ]
}


# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/sub/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/sub.ipx"
} else {
	set mdlIPX "${mdldir}/sub.ipx"
}
set ipxFP [open "$ipDir/sub.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

