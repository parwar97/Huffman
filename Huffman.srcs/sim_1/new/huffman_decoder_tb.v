`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 26.08.2020 18:16:29
// Design Name:
// Module Name: huffman_decoder_tb
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
 
 
module huffman_decoder_tb;
 
reg clock;
reg data_enable;
reg data_in;
reg reset;
//reg [7:0] data_count;
wire [7:0] decoded_out;
wire decoded_data_ready;
 
integer i = 32'h0;
parameter data_in_length = 50;
reg data_to_input [data_in_length-1:0] = {
1,0,0,1,1,1,0,0,0,0,
0,1,1,1,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0
};
 
huffman_decoder decoder(
    .clock(clock),
    .data_enable(data_enable),
    .reset(reset),
    .data_in(data_in),
    .data_in_length(data_in_length),
    .decoded_out(decoded_out),
    .final_data_ready(decoded_data_ready)
    );
   
    initial begin
        forever #10 clock = ~clock;
    end
   
    initial begin
        clock = 0;
        data_in = 0;
        data_enable = 0;
        reset = 1;
        //data_count = 50;
        #200
           reset = 0;
         data_enable = 1;
         
         for(i =0; i < 50; i = i + 1) begin
            data_in = data_to_input[i];
            #20;
         end
       
        #100000000000; //delay 2100ps to finish testing
        $finish; // inform that the test was finished
    end
 
 
endmodule