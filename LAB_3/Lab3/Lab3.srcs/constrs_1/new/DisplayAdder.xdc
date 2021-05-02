set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property PACKAGE_PIN L1 [get_ports {L}]

set_property PACKAGE_PIN V17 [get_ports {A[0]}]
set_property PACKAGE_PIN V16 [get_ports {A[1]}]
set_property PACKAGE_PIN W16 [get_ports {A[2]}]
set_property PACKAGE_PIN W17 [get_ports {A[3]}]
set_property PACKAGE_PIN W15 [get_ports {B[0]}]
set_property PACKAGE_PIN V15 [get_ports {B[1]}]
set_property PACKAGE_PIN W14 [get_ports {B[2]}]
set_property PACKAGE_PIN W13 [get_ports {B[3]}]

set_property PACKAGE_PIN R2 [get_ports {Sel[0]}]
set_property PACKAGE_PIN T1 [get_ports {Sel[1]}]

set_property PACKAGE_PIN W7 [get_ports {D[0]}]
set_property PACKAGE_PIN W6 [get_ports {D[1]}]
set_property PACKAGE_PIN U8 [get_ports {D[2]}]
set_property PACKAGE_PIN V8 [get_ports {D[3]}]
set_property PACKAGE_PIN U5 [get_ports {D[4]}]
set_property PACKAGE_PIN V5 [get_ports {D[5]}]
set_property PACKAGE_PIN U7 [get_ports {D[6]}]

set_property PACKAGE_PIN U2 [get_ports {AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {A,B,D,L,AN}]