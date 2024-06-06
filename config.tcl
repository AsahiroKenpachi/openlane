
set ::env(DESIGN_NAME) {inverter}
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
#set ::env(CLOCK_PORT) "clk"
#set ::env(CLOCK_PERIOD) "10.0"
set ::env(FP_CORE_UTIL) 0.05
set ::env(RUN_CTS) 0
set ::env(DESIGN_IS_CORE) {1}
set ::env(LIB_SYNTH) "$::env(OPENLANE_ROOT)/designs/inverter/src/sky130_fd_sc_hd__typical.lib"
set ::env(LIB_SLOWEST) "$::env(OPENLANE_ROOT)/designs/inverter/src/sky130_fd_sc_hd__slow.lib"
set ::env(LIB_FASTEST) "$::env(OPENLANE_ROOT)/designs/inverter/src/sky130_fd_sc_hd__fast.lib"
set ::env(LIB_TYPICAL) "$::env(OPENLANE_ROOT)/designs/inverter/src/sky130_fd_sc_hd__typical.lib"

set ::env(TEST_EXTERNAL_GLOB) "dir::src/*"
set ::env(CELL_LEFS) [glob $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]
set ::env(SYNTH_DRIVING_CELL) [glob $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) {1}
set ::env(FP_PDN_MULTILAYER) {1}

set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]
set tech_specific_config "$::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl"
if { [file exists $tech_specific_config] == 1 } {
    source $tech_specific_config
}
