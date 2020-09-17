`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 17.08.2020 20:40:56
// Design Name:
// Module Name: huffman_decoder
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
 
// Stany pracy pozniej opisywane jako STATE
`define INIT                      5'b00000
`define CREATE_TREE_LOAD          5'b00001
`define CREATE_TREE_ACQUIRE       5'b00010
`define CREATE_TREE_ACQUIRE2      5'b00011
`define CREATE_TREE_ACQUIRE3      5'b00100
`define RAW_DECODER_LOAD_T        5'b00101
`define RAW_DECODER_LOAD_D        5'b00110
`define RAW_DECODER_LOAD_D_1      5'b00111
`define DECODER_CALC              5'b01000
`define SEND_DATA_FINAL           5'b01001
`define STAN_1                    5'b01010
`define STAN_2                    5'b01011
`define STAN_3                    5'b01100
`define STAN_4                    5'b01101
`define TREE_LOAD_DATA_ITERATE    5'b01110
`define TREE_LOAD_DATA_1          5'b01111
`define RAW_DECODER_LOAD_T_1      5'b10000
`define CZEKEJ                    5'b10001
`define CREATE_TREE_ACQUIRE4      5'b10010
`define STAN_1_1                  5'b10011
`define STAN_2_1                  5'b10100
`define STAN_3_1                  5'b10101
 
 
module huffman_decoder(
    input wire clock, // clock wejsciowy
    input wire data_enable, // 1 by zaczac operacje
    input wire reset, //reset
    input wire data_in, // wejsciowy ascii_symbol juz po huffmanie, wg mnie 15 bitow bedzie ok
    input wire [15:0] data_in_length,
    output reg [7:0] decoded_out, // zdekodowane dane
    output reg final_data_ready // data_ready
    );
   
   //Symbole i ich prawdopodobieñstwo wystêpowania w jêzyku polskim
parameter symbols_amount = 25;
    reg [7:0] ascii_symbols [0:symbols_amount - 1];// symbole w asci
    reg [31:0] probs [0:symbols_amount - 1];// prawdopodobienstwo
//Przypisanie verilogu
assign ascii_symbols[0] = {44};
assign probs[0] = {17};
assign ascii_symbols[1] = {118};
assign probs[1] = {84};
assign ascii_symbols[2] = {98};
assign probs[2] = {101};
assign ascii_symbols[3] = {121};
assign probs[3] = {113};
assign ascii_symbols[4] = {119};
assign probs[4] = {130};
assign ascii_symbols[5] = {102};
assign probs[5] = {137};
assign ascii_symbols[6] = {45};
assign probs[6] = {138};
assign ascii_symbols[7] = {46};
assign probs[7] = {151};
assign ascii_symbols[8] = {112};
assign probs[8] = {154};
assign ascii_symbols[9] = {103};
assign probs[9] = {155};
 
assign ascii_symbols[10] = {109};
assign probs[10] = {164};
assign ascii_symbols[11] = {116};
assign probs[11] = {209};
assign ascii_symbols[12] = {99};
assign probs[12] = {211};
assign ascii_symbols[13] = {100};
assign probs[13] = {250};
assign ascii_symbols[14] = {104};
assign probs[14] = {274};
assign ascii_symbols[15] = {108};
assign probs[15] = {317};
assign ascii_symbols[16] = {114};
assign probs[16] = {425};
assign ascii_symbols[17] = {115};
assign probs[17] = {436};
assign ascii_symbols[18] = {105};
assign probs[18] = {490};
assign ascii_symbols[19] = {110};
assign probs[19] = {497};
 
assign ascii_symbols[20] = {97};
assign probs[20] = {518};
assign ascii_symbols[21] = {111};
assign probs[21] = {577};
assign ascii_symbols[22] = {116};
assign probs[22] = {637};
assign ascii_symbols[23] = {101};
assign probs[23] = {858};
assign ascii_symbols[24] = {32};
assign probs[24] = {1716};
 
/// Zmienne globalne
parameter max_data_count = 1024; // maks wielkosc wprowadzanych danych
reg [4:0] state_main = `INIT; // stan poczatkowy
reg [31:0] data_count = 32'h0;
reg [31:0] how_many_decoded = 32'h0;
 
/// Tabele dla danych z algorytmu tworzenia drzewa
reg [7:0] ascii_symbol_in;
reg [31:0] symbol_prob_in;
reg [7:0] symbols_number;
reg create_tree_data_en;
wire create_tree_data_rdy;
wire [31:0] create_tree_code_out;
wire [7:0] create_tree_code_out_length;
 
// Tabele dla danych dekodera
parameter max_bits = 1024; // maksymalna ilosc bitow na wejscie dekodera
reg raw_decoder_input  [0:max_bits-1];
reg raw_decoder_data_en;
reg raw_decoder_data_in;
reg [15:0] raw_decoder_data_length_in;
reg [31:0] raw_decoder_huff_codes;
reg [7:0] raw_decoder_huff_code_length_in;
reg [7:0] decoder_ascii_symbol;
reg [7:0] decoder_ascii_symbols_length;
wire [7:0] raw_decoder_data_out;
wire raw_decoder_data_ready;
 
reg [7:0] final_output [0:max_data_count-1];
 
//////////////
reg [7:0] codes_tab [0:symbols_amount-1];
reg [7:0] codes_tab_length [0:symbols_amount-1];
/////////////
 
 
/// iteratory
reg [31:0] i_iterator; //= 32'h0;
reg [31:0] k = 32'h0;
 
create_tree tree(
        .clock(clock),
        .data_en(create_tree_data_en),
        .ascii_symbol_input(ascii_symbol_in),
        .prob_in(symbol_prob_in),
        .ascii_symbols_length(symbols_number),
        .code_ready(create_tree_data_rdy),
        .code(create_tree_code_out),
        .code_length(create_tree_code_out_length)
        );  
 
raw_decoder decoder(
        .clock(clock),
        .data_en(raw_decoder_data_en),
        .data_in(raw_decoder_data_in),
        .data_in_length(raw_decoder_data_length_in),
        .huff_codes(raw_decoder_huff_codes),
        .huff_codes_length(raw_decoder_huff_code_length_in),
        .ascii_symbols(decoder_ascii_symbol),
        .ascii_symbols_length(decoder_ascii_symbols_length),
        .data_ready(raw_decoder_data_ready),
        .data_out(raw_decoder_data_out)
        );
       
always @(posedge clock) begin
if(reset) begin
    create_tree_data_en <= 1'b0;                                
    raw_decoder_data_en <= 1'b0;
    i_iterator <= 0;
    data_count <=0;
    state_main <= `INIT;
    k <= 0;
end
else begin
                    case(state_main)        
                            `INIT: begin
                            if(data_enable) begin                                                                    
                                if(data_count < data_in_length) begin                
                                    raw_decoder_input [data_count] = data_in;        
                                    data_count = data_count + 1;                            
                                end                                      
                                else begin  
                                    raw_decoder_data_length_in = data_count;
                                    state_main <= `TREE_LOAD_DATA_1;                                        
                                end                                      
                            end                                          
                        end  
                       
                        `TREE_LOAD_DATA_1: begin
                            create_tree_data_en <=1;
                            state_main <= `CREATE_TREE_LOAD;
                        end
                       
                        `CREATE_TREE_LOAD: begin
                            if(i_iterator< symbols_amount) begin
                                symbols_number <= 25;
                                ascii_symbol_in <= ascii_symbols[i_iterator];
                                symbol_prob_in <= probs[i_iterator];
                                state_main <= `TREE_LOAD_DATA_ITERATE;
                            end
                            else begin
                                i_iterator<= 0; // !!!!!
                                state_main = `CREATE_TREE_ACQUIRE;
                            end
                        end
                       
                        `TREE_LOAD_DATA_ITERATE: begin
                            i_iterator <= i_iterator+ 1;
                            state_main <= `CZEKEJ;
                        end
                       
                        `CZEKEJ: begin
                            state_main <= `CREATE_TREE_LOAD;
                        end
                       
                        `CREATE_TREE_ACQUIRE: begin
                            if(create_tree_data_rdy || i_iterator> 0) begin
                                if(i_iterator< symbols_amount) begin
                                    state_main <= `CREATE_TREE_ACQUIRE2;
                                end
                                else begin
                               
                                    state_main <= `RAW_DECODER_LOAD_T_1;
                                    i_iterator<= 0;
                                end
                            end
                        end
                       
                        `CREATE_TREE_ACQUIRE2: begin
             
                            codes_tab[i_iterator] <= create_tree_code_out;
                            codes_tab_length[i_iterator] <= create_tree_code_out_length;
                            state_main <= `CREATE_TREE_ACQUIRE3;
                        end
                       
                        `CREATE_TREE_ACQUIRE3: begin
                        i_iterator<= i_iterator+ 1;
                        state_main <= `CREATE_TREE_ACQUIRE4;
                        end
                       
                        `CREATE_TREE_ACQUIRE4: begin
                            state_main <= `CREATE_TREE_ACQUIRE;
                        end
                       
                       
                        `RAW_DECODER_LOAD_T_1: begin
                            raw_decoder_data_en <= 1;
                            state_main <= `RAW_DECODER_LOAD_T;
                        end
                       
                        `RAW_DECODER_LOAD_T: begin
                             if(i_iterator< symbols_amount) begin
                                 raw_decoder_huff_codes <= codes_tab[i_iterator];
                                 decoder_ascii_symbols_length <= symbols_amount;
                                 raw_decoder_huff_code_length_in <= codes_tab_length[i_iterator];
                                 decoder_ascii_symbol <= ascii_symbols[i_iterator];
                                 state_main <= `STAN_1;
                             end
                             else begin
                                 i_iterator<= 0;
                                 raw_decoder_data_en <= 0;
                                 state_main <= `RAW_DECODER_LOAD_D_1;
                             end  
                        end
                       
                        `STAN_1: begin
                            i_iterator <= i_iterator + 1;
                            state_main <= `STAN_1_1;
                        end
                       
                        `STAN_1_1: begin
                            state_main <= `RAW_DECODER_LOAD_T;
                        end
                       
                        `RAW_DECODER_LOAD_D_1: begin
                            raw_decoder_data_en <= 1;
                            state_main <= `RAW_DECODER_LOAD_D;
                        end
                       
                        `RAW_DECODER_LOAD_D: begin
                            if(i_iterator< data_count) begin
                                raw_decoder_data_in <= raw_decoder_input [i_iterator];
                                state_main <= `STAN_2;
                            end
                            else begin
                                i_iterator<= 0;
                                state_main <= `STAN_4;
                            end
                        end
                       
                        `STAN_2: begin
                            i_iterator <= i_iterator + 1;
                            state_main <= `STAN_2_1;
                        end
                       
                        `STAN_2_1: begin
                            state_main <= `RAW_DECODER_LOAD_D;
                        end
                       
                       `STAN_4: begin
                            if(raw_decoder_data_ready) begin
                                state_main <= `DECODER_CALC;
                            end
                            else if(how_many_decoded > 0) begin
                                i_iterator<= 0;
                                k <= 0;
                                state_main <= `SEND_DATA_FINAL;
                            end
                        end
                       
                        `DECODER_CALC: begin
                                final_output[i_iterator] <= raw_decoder_data_out;
                                how_many_decoded <= how_many_decoded+1;
                                state_main <= `STAN_3;
                        end
                       
                       
                        `STAN_3: begin
                            i_iterator<= i_iterator+ 1;
                            $display("Zdekodowano: ",final_output[i_iterator],"Licznik: ",how_many_decoded);
                            state_main <= `STAN_3_1;
                        end
                       
                        `STAN_3_1: begin
                            state_main <= `STAN_4;
                        end
                       
                        `SEND_DATA_FINAL: begin
                            if(k < how_many_decoded) begin
                                final_data_ready = 1;
                                decoded_out = final_output[k];
                                k = k+1;
                            end
                            else begin
                                final_data_ready = 0;
                            end
                        end
                    endcase
                    end
                end    
        endmodule