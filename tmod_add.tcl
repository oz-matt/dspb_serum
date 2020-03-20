set mdldir [file dirname [info script]]

puts "Adding DSP Builder System tmod to project\n"
set importdir [file join $mdldir "DSPBuilder_tmod_import" ]
if { [file exist $importdir] == 0 } {
	puts "Warning expected IP Import directory '$importdir' not found.\n"
}

set_global_assignment -name "QIP_FILE" [file join $mdldir "tmod.qip" ]

if { [file exist [file join $mdldir "tmod_add_user.tcl" ]] } {
	source [file join $mdldir "tmod_add_user.tcl" ]
}

source [file join $mdldir "DSPBuilder_tmod_import/trigen_add.tcl" ]

# Add an index file for the Librarian
set ipDir "[get_project_directory]/ip/tmod/";
if { ![file exists $ipDir] } {
	file mkdir $ipDir;
}
# Reference the file by relative path if possible
if { [file pathtype $mdldir] == "relative" } {
	set mdlIPX "../../$mdldir/tmod.ipx"
} else {
	set mdlIPX "${mdldir}/tmod.ipx"
}
set ipxFP [open "$ipDir/tmod.ipx" w]
puts $ipxFP "<library><index file='$mdlIPX'/></library>"
close $ipxFP

foreach g [glob -nocomplain "[file join $mdldir "DSPBuilder_tmod_import" ]/*.entityimport"] {
	file copy -force $g $ipDir
}
