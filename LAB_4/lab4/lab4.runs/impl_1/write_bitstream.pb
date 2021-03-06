
c
Command: %s
53*	vivadotcl22
write_bitstream -force top.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
?Combinatorial Loop Alert: 1 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2V
 "@
LC_OBUF_inst_i_2_n_0LC_OBUF_inst_i_2_n_02default:default2default:default2N
 "8
LC_OBUF_inst_i_2	LC_OBUF_inst_i_22default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Combinatorial Loop Alert: 1 LUT cells form a combinatorial loop. This can create a race condition. Timing analysis may not be accurate. The preferred resolution is to modify the design to remove combinatorial logic loops. If the loop is known and understood, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint on any one of the nets in the loop: 'set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]'. One net in the loop is %s. Please evaluate your design. The cells in the loop are: %s.%s*DRC2V
 "@
LC_OBUF_inst_i_3_n_0LC_OBUF_inst_i_3_n_02default:default2default:default2N
 "8
LC_OBUF_inst_i_3	LC_OBUF_inst_i_32default:default2default:default2C
 +DRC|Netlist|Design Level|Combinatorial Loop2default:default8ZLUTLP-1h px? 
?
?Unspecified I/O Standard: 1 out of 11 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2:
 "$
clk_enclk_en2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
nolabel_line64/clk_en_OBUFnolabel_line64/clk_en_OBUF2default:default2default:default2x
 "b
%nolabel_line64/clk_en_OBUF_inst_i_1/O%nolabel_line64/clk_en_OBUF_inst_i_1/O2default:default2default:default2t
 "^
#nolabel_line64/clk_en_OBUF_inst_i_1	#nolabel_line64/clk_en_OBUF_inst_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2d
 "N
nolabel_line64/nextstate__0nolabel_line64/nextstate__02default:default2default:default2?
 "x
0nolabel_line64/FSM_onehot_nextstate_reg[6]_i_2/O0nolabel_line64/FSM_onehot_nextstate_reg[6]_i_2/O2default:default2default:default2?
 "t
.nolabel_line64/FSM_onehot_nextstate_reg[6]_i_2	.nolabel_line64/FSM_onehot_nextstate_reg[6]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?

?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 9 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2t
 "^
#nolabel_line64/clk_en_OBUF_inst_i_1	#nolabel_line64/clk_en_OBUF_inst_i_12default:default2default:default2?
 "d
&nolabel_line64/FSM_onehot_state_reg[0]	&nolabel_line64/FSM_onehot_state_reg[0]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[1]	&nolabel_line64/FSM_onehot_state_reg[1]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[2]	&nolabel_line64/FSM_onehot_state_reg[2]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[3]	&nolabel_line64/FSM_onehot_state_reg[3]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[4]	&nolabel_line64/FSM_onehot_state_reg[4]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[5]	&nolabel_line64/FSM_onehot_state_reg[5]2default:default"d
&nolabel_line64/FSM_onehot_state_reg[6]	&nolabel_line64/FSM_onehot_state_reg[6]2default:default"R
nolabel_line64/counter_reg[0]	nolabel_line64/counter_reg[0]2default:default"R
nolabel_line64/counter_reg[1]	nolabel_line64/counter_reg[1]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Unconstrained Logical Port: 1 out of 11 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2:
 "$
clk_enclk_en2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 8 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
Z
Writing bitstream %s...
11*	bitstream2
	./top.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
82default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:102default:default2
00:00:212default:default2
2358.2422default:default2
425.1252default:defaultZ17-268h px? 


End Record