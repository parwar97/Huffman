
|
Command: %s
53*	vivadotcl2K
7synth_design -top huffman_decoder -part xc7z020clg484-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
�
&Analyzing %s file "%s" into library %s1936*verific2
Verilog2default:default2[
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
work2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
12default:default8@Z9-2216h px� 
�
&Analyzing %s file "%s" into library %s1936*verific2!
SystemVerilog2default:default2_
KD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/huffman_decoder.v2default:default2
work2default:default2a
KD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/huffman_decoder.v2default:default2
12default:default8@Z9-2216h px� 
�
&Analyzing %s file "%s" into library %s1936*verific2!
SystemVerilog2default:default2[
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
work2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
12default:default8@Z9-2216h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 322.953 ; gain = 113.164
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2#
huffman_decoder2default:default2a
KD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/huffman_decoder.v2default:default2
472default:default8@Z8-638h px� 
d
%s
*synth2L
8	Parameter symbols_amount bound to: 50 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter max_data_count bound to: 1024 - type: integer 
2default:defaulth p
x
� 
s
%s
*synth2[
G	Parameter max_decoder_input_bit_count bound to: 1024 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2
create_tree2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
652default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter max_symbols_amount bound to: 50 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter tree_max_length bound to: 199 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
1932default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
1142default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
create_tree2default:default2
12default:default2
12default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
652default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
raw_decoder2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
472default:default8@Z8-638h px� 
�
-case statement is not full and has no default155*oasys2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
1622default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
902default:default8@Z8-155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
raw_decoder2default:default2
22default:default2
12default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
472default:default8@Z8-256h px� 
�
-case statement is not full and has no default155*oasys2a
KD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/huffman_decoder.v2default:default2
1312default:default8@Z8-155h px� 
�
%s
*synth2�
�
Warning: Trying to implement RAM in registers. Block RAM or DRAM implementation is not possible for one or more of the following reasons :
2default:defaulth p
x
� 
Y
%s
*synth2A
-	1: RAM read is not driven by RAM register. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
I
%s
*synth21
RAM dissolved into registers
2default:defaulth p
x
� 
�
%s
*synth2�
�
Warning: Trying to implement RAM in registers. Block RAM or DRAM implementation is not possible for one or more of the following reasons :
2default:defaulth p
x
� 
Y
%s
*synth2A
-	1: RAM read is not driven by RAM register. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
I
%s
*synth21
RAM dissolved into registers
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
huffman_decoder2default:default2
32default:default2
12default:default2a
KD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/huffman_decoder.v2default:default2
472default:default8@Z8-256h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 363.773 ; gain = 153.984
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 363.773 ; gain = 153.984
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2c
MD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/constrs_2/new/huffman_decoder.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2c
MD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/constrs_2/new/huffman_decoder.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
693.7272default:default2
0.0902default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:30 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:30 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:30 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/create_tree.v2default:default2
1902default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
symbols_tab2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
sorting_state2default:default2
12default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
making_tree_state2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
current_symbol2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
create_tree2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2+
building_tree_state_reg2default:default2
create_tree2default:defaultZ8-802h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
1822default:default8@Z8-5818h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              010 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                              011 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                              100 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                              101 |                              111
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                              110 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE6 |                              111 |                              011
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2+
building_tree_state_reg2default:default2

sequential2default:default2
create_tree2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                             0000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                             0001 |                             1100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                             0010 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                             0011 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                             0100 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                             0101 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE6 |                             0110 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE7 |                             0111 |                             0111
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE8 |                             1000 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE9 |                             1001 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE10 |                             1010 |                             1010
2default:defaulth p
x
� 
�
%s
*synth2s
_                iSTATE11 |                             1011 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                             1100 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
create_tree2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 5     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                 1x32  Multipliers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               6K Bit         RAMs := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               1K Bit         RAMs := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              800 Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              408 Bit         RAMs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              400 Bit         RAMs := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      1 Bit        Muxes := 21    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  50 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
D
%s
*synth2,
Module huffman_decoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              400 Bit         RAMs := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      1 Bit        Muxes := 18    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  50 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module create_tree 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               6K Bit         RAMs := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               1K Bit         RAMs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              408 Bit         RAMs := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input     32 Bit        Muxes := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  21 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
� 
@
%s
*synth2(
Module raw_decoder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 3     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                 1x32  Multipliers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               1K Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              800 Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              400 Bit         RAMs := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  23 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
cNot enough pipeline registers after wide multiplier. Recommended levels of pipeline registers is %s4267*oasys2
22default:default2]
GD:/SDUP_2020_projekt_H/Huffman/Huffman.srcs/sources_1/new/raw_decoder.v2default:default2
1862default:default8@Z8-5845h px� 
�
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
212default:default2)
probabilities_tab_reg2default:default2
322default:default2
112default:defaultZ8-5784h px� 
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The depth (%s address bits) is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4035*oasys2)
probabilities_tab_reg2default:default2
62default:defaultZ8-5583h px� 
�
iOptimized %s bits of RAM "%s" due to constant propagation. Old ram width %s bits, new ram width %s bits.
4187*oasys2
242default:default2!
code_list_reg2default:default2
322default:default2
82default:defaultZ8-5784h px� 
�
�The signal %s is implemented as block RAM but is better mapped onto distributed LUT RAM for the following reason(s): The depth (%s address bits) is shallow. Please use attribute (* ram_style = "distributed" *) to instruct Vivado to infer distributed LUT RAM.
4035*oasys2!
code_list_reg2default:default2
62default:defaultZ8-5583h px� 
�
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default20
decoded_characters_array_reg2default:defaultZ8-4652h px� 
�
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
12default:default2&
decoded_output_reg2default:defaultZ8-4652h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[3]2default:default2
FDE2default:default2!
tree/i_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[2]2default:default2
FDE2default:default2!
tree/i_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[1]2default:default2
FDE2default:default2!
tree/i_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[0]2default:default2
FDE2default:default2!
tree/i_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[2]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[1]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[0]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[4]2default:default2
FDE2default:default2!
tree/i_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/i_reg_rep[5]2default:default2
FDE2default:default2!
tree/i_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[5]2default:default2
FDE2default:default2.
tree_probability_in_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[4]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
tree_symbol_in_reg[3]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[0]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[1]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[2]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[3]2default:default2
FDE2default:default2.
tree_probability_in_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[4]2default:default2
FDE2default:default2.
tree_probability_in_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[5]2default:default2
FDE2default:default2.
tree_probability_in_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[6]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[7]2default:default2
FDE2default:default2.
tree_probability_in_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[8]2default:default2
FDE2default:default2.
tree_symbols_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_probability_in_reg[9]2default:default2
FDE2default:default2/
tree_probability_in_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[0]2default:default2
FDE2default:default2%
i_iterator_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[1]2default:default2
FDE2default:default2%
i_iterator_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[2]2default:default2
FDE2default:default2%
i_iterator_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[3]2default:default2
FDE2default:default2%
i_iterator_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[4]2default:default2
FDE2default:default2%
i_iterator_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[5]2default:default2
FDE2default:default2%
i_iterator_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[6]2default:default2
FDE2default:default2%
i_iterator_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[7]2default:default2
FDE2default:default2%
i_iterator_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[8]2default:default2
FDE2default:default2%
i_iterator_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2)
i_iterator_reg_rep[9]2default:default2
FDE2default:default2%
i_iterator_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[5]2default:default2
FDE2default:default2(
tree/position_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[4]2default:default2
FDE2default:default2(
tree/position_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[3]2default:default2
FDE2default:default2(
tree/position_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[2]2default:default2
FDE2default:default2(
tree/position_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[1]2default:default2
FDE2default:default2(
tree/position_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
tree/position_reg_rep[0]2default:default2
FDE2default:default2(
tree/position_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[0]2default:default2
FDE2default:default2&
tree/shift2_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[0]2default:default2
FDE2default:default2%
tree/shift_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[1]2default:default2
FDE2default:default2%
tree/shift_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[1]2default:default2
FDE2default:default2%
tree/shift_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[2]2default:default2
FDE2default:default2%
tree/shift_reg[4]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
tree/\shift_reg[2] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[3]2default:default2
FDE2default:default2%
tree/shift_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[4]2default:default2
FDE2default:default2%
tree/shift_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[5]2default:default2
FDE2default:default2%
tree/shift_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[6]2default:default2
FDE2default:default2%
tree/shift_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[7]2default:default2
FDE2default:default2%
tree/shift_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2&
tree/shift2_reg[8]2default:default2
FDE2default:default2&
tree/shift_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2(
tree/position_reg[6]2default:default2
FDE2default:default2,
tree/position_reg_rep[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2(
tree/position_reg[7]2default:default2
FDE2default:default2,
tree/position_reg_rep[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[0]2default:default2
FDE2default:default2!
tree/j_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[1]2default:default2
FDE2default:default2!
tree/j_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[2]2default:default2
FDE2default:default2!
tree/j_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[3]2default:default2
FDE2default:default2!
tree/j_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[4]2default:default2
FDE2default:default2!
tree/j_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/j_reg_rep[5]2default:default2
FDE2default:default2!
tree/j_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
tree/j_reg[6]2default:default2
FDE2default:default2%
tree/j_reg_rep[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2!
tree/j_reg[7]2default:default2
FDE2default:default2%
tree/j_reg_rep[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[0]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[1]2default:default2
FDE2default:default21
decoder_symbols_amount_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[2]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[3]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[4]2default:default2
FDE2default:default21
decoder_symbols_amount_reg[5]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default23
\decoder_symbols_amount_reg[5] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[6]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder_symbols_amount_reg[7]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
decoder_symbols_in_reg[2]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
decoder_symbols_in_reg[1]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
decoder_symbols_in_reg[0]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
decoder_symbols_in_reg[4]2default:default2
FDE2default:default2-
decoder_symbols_in_reg[3]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\decoder_symbols_in_reg[3] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[0]2default:default2
FDE2default:default2.
tree_symbols_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[1]2default:default2
FDE2default:default2.
tree_symbols_length_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[2]2default:default2
FDE2default:default2.
tree_symbols_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[3]2default:default2
FDE2default:default2.
tree_symbols_length_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[4]2default:default2
FDE2default:default2.
tree_symbols_length_reg[5]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default20
\tree_symbols_length_reg[5] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
tree_symbols_length_reg[6]2default:default2
FDE2default:default2.
tree_symbols_length_reg[7]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\tree_symbols_length_reg[7] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[0]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[1]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[2]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[3]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[4]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[5]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys21
decoder/iterator_1_reg_rep[6]2default:default2
FDE2default:default2-
decoder/iterator_1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[0]2default:default2
FDE2default:default2
k_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[1]2default:default2
FDE2default:default2
k_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[2]2default:default2
FDE2default:default2
k_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[3]2default:default2
FDE2default:default2
k_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[4]2default:default2
FDE2default:default2
k_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[5]2default:default2
FDE2default:default2
k_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[6]2default:default2
FDE2default:default2
k_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[7]2default:default2
FDE2default:default2
k_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[8]2default:default2
FDE2default:default2
k_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2 
k_reg_rep[9]2default:default2
FDE2default:default2
k_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[2]2default:default2
FDE2default:default2%
tree/shift_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[3]2default:default2
FDE2default:default2%
tree/shift_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[4]2default:default2
FDE2default:default2%
tree/shift_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[5]2default:default2
FDE2default:default2%
tree/shift_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[6]2default:default2
FDE2default:default2%
tree/shift_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[7]2default:default2
FDE2default:default2%
tree/shift_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2%
tree/shift_reg[9]2default:default2
FDE2default:default2&
tree/shift_reg[10]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
tree/\shift_reg[10] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"decoder/\symbol_amount_var_reg[7] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[31]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[30]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[29]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[28]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[27]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[26]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[25]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[24]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[23]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[22]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[21]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[20]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[19]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[18]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[17]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[16]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[15]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[14]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[13]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[12]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[11]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
code_out_reg[10]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
code_out_reg[9]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
code_out_reg[8]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[31]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[30]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[29]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[28]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[27]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[26]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[25]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[24]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[23]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[22]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[21]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[20]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[19]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[18]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[17]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[16]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[15]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[14]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[13]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[12]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[11]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
tree_tab_length_reg[10]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
tree_tab_length_reg[9]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
tree_tab_length_reg[8]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[31]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[30]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[29]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[28]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[27]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[26]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[25]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[24]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[23]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[22]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[21]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[20]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[19]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[18]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[17]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[16]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[15]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[14]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[13]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[12]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[11]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
position_reg[10]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
position_reg[9]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
position_reg[8]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[31]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[30]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[29]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[28]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[27]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[26]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[25]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[24]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[23]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[22]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[21]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[20]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[19]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[18]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[17]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[16]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[15]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[14]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[13]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[12]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[11]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
counter_reg[10]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
counter_reg[9]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
counter_reg[8]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
symbol_it_reg[6]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
symbol_it_reg[7]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
symbol_it_reg[8]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
symbol_it_reg[9]2default:default2
create_tree2default:defaultZ8-3332h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:49 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+----------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name     | RTL Object                   | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+----------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|create_tree     | probabilities_tab_reg        | 64 x 32(WRITE_FIRST)   |   | R | 64 x 32(READ_FIRST)    | W |   | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�|raw_decoder     | code_list_reg                | 64 x 32(READ_FIRST)    | W |   | 64 x 32(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�|raw_decoder     | decoded_characters_array_reg | 128 x 8(READ_FIRST)    | W |   | 128 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�|huffman_decoder | decoded_output_reg           | 1 K x 8(READ_FIRST)    | W |   | 1 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�|huffman_decoder | decoder_bit_input_reg        | 1 K x 1(READ_FIRST)    | W |   | 1 K x 1(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�+----------------+------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
t+----------------+----------------------------+-----------+----------------------+--------------------------------+
2default:defaulth px� 
�
%s*synth2�
u|Module Name     | RTL Object                 | Inference | Size (Depth x Width) | Primitives                     | 
2default:defaulth px� 
�
%s*synth2�
t+----------------+----------------------------+-----------+----------------------+--------------------------------+
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | ID_reg                     | Implied   | 256 x 32             | RAM64X1D x 48  RAM64M x 240    | 
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | symbols_tab_reg            | Implied   | 64 x 8               | RAM64M x 6                     | 
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | Link_reg                   | Implied   | 256 x 32             | RAM64X1D x 24  RAM64M x 120    | 
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | P_reg                      | Implied   | 256 x 32             | RAM64X1D x 56  RAM64M x 280    | 
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | code_length_tab_reg        | Implied   | 64 x 8               | RAM64M x 6                     | 
2default:defaulth px� 
�
%s*synth2�
u|create_tree     | code_tab_reg               | Implied   | 64 x 32              | RAM16X1D x 64  RAM32X1D x 32   | 
2default:defaulth px� 
�
%s*synth2�
u|raw_decoder     | codes_lengths_reg          | Implied   | 64 x 8               | RAM64M x 3                     | 
2default:defaulth px� 
�
%s*synth2�
u|raw_decoder     | input_data_reg             | Implied   | 1 K x 1              | RAM128X1D x 8                  | 
2default:defaulth px� 
�
%s*synth2�
u|raw_decoder     | symbols_reg                | Implied   | 64 x 8               | RAM64M x 3                     | 
2default:defaulth px� 
�
%s*synth2�
u|huffman_decoder | coder_codes_tab_reg        | Implied   | 64 x 8               | RAM16X1S x 16  RAM32X1S x 8    | 
2default:defaulth px� 
�
%s*synth2�
u|huffman_decoder | coder_codes_tab_length_reg | Implied   | 64 x 8               | RAM16X1S x 16  RAM32X1S x 8    | 
2default:defaulth px� 
�
%s*synth2�
u+----------------+----------------------------+-----------+----------------------+--------------------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:55 ; elapsed = 00:01:06 . Memory (MB): peak = 693.727 ; gain = 483.938
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:01:02 ; elapsed = 00:01:14 . Memory (MB): peak = 739.535 ; gain = 529.746
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2.
tree/probabilities_tab_reg2default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2)
decoder/code_list_reg2default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys28
$decoder/decoded_characters_array_reg2default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2&
decoded_output_reg2default:defaultZ8-4480h px� 
�
�The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2)
decoder_bit_input_reg2default:defaultZ8-4480h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:01:05 ; elapsed = 00:01:17 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
,Flop %s is being inverted and renamed to %s.3906*oasys2/
tree/tree_tab_length_reg[7]2default:default23
tree/tree_tab_length_reg[7]_inv2default:defaultZ8-5365h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:01:08 ; elapsed = 00:01:20 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:08 ; elapsed = 00:01:20 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|1     |BUFG       |     1|
2default:defaulth px� 
H
%s*synth20
|2     |CARRY4     |   204|
2default:defaulth px� 
H
%s*synth20
|3     |LUT1       |   437|
2default:defaulth px� 
H
%s*synth20
|4     |LUT2       |   183|
2default:defaulth px� 
H
%s*synth20
|5     |LUT3       |   203|
2default:defaulth px� 
H
%s*synth20
|6     |LUT4       |   396|
2default:defaulth px� 
H
%s*synth20
|7     |LUT5       |   211|
2default:defaulth px� 
H
%s*synth20
|8     |LUT6       |   912|
2default:defaulth px� 
H
%s*synth20
|9     |MUXF7      |    65|
2default:defaulth px� 
H
%s*synth20
|10    |RAM128X1D  |     2|
2default:defaulth px� 
H
%s*synth20
|11    |RAM16X1D   |    16|
2default:defaulth px� 
H
%s*synth20
|12    |RAM16X1S   |    32|
2default:defaulth px� 
H
%s*synth20
|13    |RAM32X1D   |     8|
2default:defaulth px� 
H
%s*synth20
|14    |RAM32X1S   |    16|
2default:defaulth px� 
H
%s*synth20
|15    |RAM64M     |   655|
2default:defaulth px� 
H
%s*synth20
|16    |RAM64X1D   |   128|
2default:defaulth px� 
H
%s*synth20
|17    |RAMB18E1   |     2|
2default:defaulth px� 
H
%s*synth20
|18    |RAMB18E1_1 |     3|
2default:defaulth px� 
H
%s*synth20
|19    |FDRE       |   902|
2default:defaulth px� 
H
%s*synth20
|20    |IBUF       |    35|
2default:defaulth px� 
H
%s*synth20
|21    |OBUF       |     9|
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+----------+------------+------+
2default:defaulth p
x
� 
T
%s
*synth2<
(|      |Instance  |Module      |Cells |
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+----------+------------+------+
2default:defaulth p
x
� 
T
%s
*synth2<
(|1     |top       |            |  4420|
2default:defaulth p
x
� 
T
%s
*synth2<
(|2     |  decoder |raw_decoder |   851|
2default:defaulth p
x
� 
T
%s
*synth2<
(|3     |  tree    |create_tree |  2909|
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+----------+------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 128 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:50 ; elapsed = 00:01:03 . Memory (MB): peak = 747.152 ; gain = 169.098
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:01:09 ; elapsed = 00:01:22 . Memory (MB): peak = 747.152 ; gain = 537.363
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
11012default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 857 instances were transformed.
  RAM128X1D => RAM128X1D (RAMD64E, RAMD64E, MUXF7, MUXF7, RAMD64E, RAMD64E): 2 instances
  RAM16X1D => RAM32X1D (RAMD32, RAMD32): 16 instances
  RAM16X1S => RAM32X1S (RAMS32): 32 instances
  RAM32X1D => RAM32X1D (RAMD32, RAMD32): 8 instances
  RAM32X1S => RAM32X1S (RAMS32): 16 instances
  RAM64M => RAM64M (RAMD64E, RAMD64E, RAMD64E, RAMD64E): 655 instances
  RAM64X1D => RAM64X1D (RAMD64E, RAMD64E): 128 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1582default:default2
1002default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:092default:default2
00:01:192default:default2
747.1522default:default2
508.2542default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
GD:/SDUP_2020_projekt_H/Huffman/Huffman.runs/synth_3/huffman_decoder.dcp2default:defaultZ17-1381h px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.094 . Memory (MB): peak = 747.152 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Sep 05 17:17:49 20202default:defaultZ17-206h px� 


End Record