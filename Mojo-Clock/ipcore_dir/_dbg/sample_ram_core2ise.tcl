set errorCount 0

project new sample_ram

project set "Manual Implementation Compile Order" true

project set family  spartan6
project set device  xc6slx9
project set package tqg144
project set speed   -2

if { ![xfile add "./sample_ram/doc/pg058-blk-mem-gen.pdf" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/doc/pg058-blk-mem-gen.pdf' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/doc/blk_mem_gen_v7_3_vinfo.html" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/doc/blk_mem_gen_v7_3_vinfo.html' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/blk_mem_gen_v7_3_readme.txt" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/blk_mem_gen_v7_3_readme.txt' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/example_design/sample_ram_exdes.ucf" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/example_design/sample_ram_exdes.ucf' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/example_design/sample_ram_exdes.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/example_design/sample_ram_exdes.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/example_design/sample_ram_exdes.xdc" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/example_design/sample_ram_exdes.xdc' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/example_design/sample_ram_prod.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/example_design/sample_ram_prod.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/implement.bat" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/implement.bat' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/implement.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/implement.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/planAhead_ise.bat" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/planAhead_ise.bat' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/planAhead_ise.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/planAhead_ise.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/planAhead_ise.tcl" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/planAhead_ise.tcl' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/xst.prj" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/xst.prj' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/implement/xst.scr" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/implement/xst.scr' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/addr_gen.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/addr_gen.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/bmg_stim_gen.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/bmg_stim_gen.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/bmg_tb_pkg.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/bmg_tb_pkg.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/checker.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/checker.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/data_gen.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/data_gen.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simcmds.tcl" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simcmds.tcl' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_isim.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_isim.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_mti.bat" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_mti.bat' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_mti.do" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_mti.do' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_mti.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_mti.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_ncsim.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_ncsim.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/simulate_vcs.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/simulate_vcs.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/ucli_commands.key" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/ucli_commands.key' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/vcs_session.tcl" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/vcs_session.tcl' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/wave_mti.do" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/wave_mti.do' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/functional/wave_ncsim.sv" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/functional/wave_ncsim.sv' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/random.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/random.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/sample_ram_synth.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/sample_ram_synth.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/sample_ram_tb.vhd" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/sample_ram_tb.vhd' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simcmds.tcl" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simcmds.tcl' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_isim.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_isim.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_mti.bat" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_mti.bat' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_mti.do" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_mti.do' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_mti.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_mti.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_ncsim.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_ncsim.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/simulate_vcs.sh" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/simulate_vcs.sh' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/ucli_commands.key" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/ucli_commands.key' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/vcs_session.tcl" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/vcs_session.tcl' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/wave_mti.do" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/wave_mti.do' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram/simulation/timing/wave_ncsim.sv" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram/simulation/timing/wave_ncsim.sv' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram.ngc" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram.ngc' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram.veo" -view implementation -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram.veo' to ISE project."
   incr errorCount
}
if { ![xfile add "./sample_ram.v" -view all -origin_type created] } {
   puts "ERROR: Failed to add './sample_ram.v' to ISE project."
   incr errorCount
}

project set top "sample_ram"

project set "Project Generator" CoreGen
project set "Implementation Stop View" Structural

project save
project close

exit $errorCount
