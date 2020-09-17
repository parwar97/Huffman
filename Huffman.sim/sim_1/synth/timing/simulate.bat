@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim huffman_decoder_tb_time_synth -key {Post-Synthesis:sim_1:Timing:huffman_decoder_tb} -tclbatch huffman_decoder_tb.tcl -view D:/SDUP_2020_projekt_H/Huffman/huffman_decoder_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
