`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2020 17:47:21
// Design Name: 
// Module Name: raw_decoder
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


`define START           3'b000 // Stan poczatkowy
`define LOAD            3'b001 // Ladowanie danych
`define DECODE          3'b010 // Dekodowanie
`define SEND_DATA_1       3'b011 // Wyslij dane
`define INIT_ITERATOR_P       3'b100 // Wyslij dane
`define BITS_COUNTER_P       3'b101 // Wyslij dane
`define SEND_DATA_2       3'b110 // Wyslij dane
`define SEND_DATA_3       3'b111 // Wyslij dane

`define DECODING_1      2'b00 // Dekodowanie - podstan1
`define DECODING_2      2'b01 // Dekodowanie - podstan2
`define DECODING_3      2'b10 // Dekodowanie - podstan3
`define CODE_BIT_N      2'b11

module raw_decoder_upg(
    input wire clock, // zegar wejscioy
    input wire data_en, // sygnal enable
    input wire data_in, // dana wejsciowa do zdekodowania
    input wire [31:0] data_in_length, // dlugosc danych do zdekodowania
    input wire [31:0] huff_codes, // kody huffmana po przeksztalceniu
    input wire [7:0] huff_codes_length, // odpowiadajaca dlugosc kodow huffmana
    input wire [7:0] ascii_symbols, // symbole po kolei
    input wire [7:0] ascii_symbols_length, // liczba symboli
    output reg data_ready, // faga markujaca gotowosc danych
    output reg [7:0] data_out // zdekodowana dana
    );
    
    reg [2:0] state = `START; // stan poczatkowy
    reg [1:0] sub_state = `DECODING_1; // podstan poczatkowy
    
    reg [31:0] code_list [0:49];
    reg [7:0] codes_lengths [0:49];
    reg [7:0] symbols [0:49];
    reg input_data [0:1023];
    reg [31:0] input_data_length;
    reg [7:0] symbol_amount_var;
    reg [7:0] decoded_characters_array [0:99];

    // ITERATORY
    
    reg [15:0] init_iterator = 16'h0;
    reg [15:0] bits_counter = 16'h0; // MAX 1024 !

    integer decoded_chars_counter = 32'h0;
    integer i = 32'h0;
    
    integer bit_position = 32'h0;
    reg [15:0] code_position = 16'h0;
    
    reg [7:0] code_index = 8'h0;
    reg [7:0] bit_index = 8'h0;
    integer code_value = 32'h0;
    reg [7:0] character_length = 8'h0;
    
    integer sequence_to_and = 8'h0;
    
    always @(posedge clock) begin
        case(state)
            `START: begin
                if(data_en) begin
                
                    $display("Dekoder: start");
                
                    input_data_length <= data_in_length;
                    symbol_amount_var <= ascii_symbols_length;
                    
                    // Ta czesc inicjalizuje sie w "petli"
                    code_list[init_iterator] <= huff_codes;
                    codes_lengths[init_iterator] <= huff_codes_length;
                    symbols[init_iterator] <= ascii_symbols;
                    
                    //init_iterator = init_iterator + 1;
                    if(init_iterator != symbol_amount_var) begin
                        state <= `INIT_ITERATOR_P;
                    end
                    else begin // Jesli przeiterujemy wszyskie dane poczatkowe
                        character_length <= 1; // kazdy znak ma min 1 dlugosc
                        decoded_chars_counter <= 0; // ile juz zdekodowano
                        i <= 0;
                        bit_position <= 0;
                        data_en <=0;
                        state <= `LOAD;
                        $display("Dekoder: zaladoano dane inizjalizacyjne");
                    end
                end
            end
            
            `INIT_ITERATOR_P: begin
                init_iterator <= init_iterator + 1;
                state <= `START;
            end
            
            
            `LOAD: begin
                if(data_en) begin
                    input_data[bits_counter] <= data_in;
                    if(bits_counter != input_data_length) begin
                        state = `BITS_COUNTER_P;
                    end
                    else begin
                        state = `DECODE;
                        $display("Dekoder: zaladowano dane wejsciowe");
                    end
                end
            end    

            `BITS_COUNTER_P: begin
                bits_counter = bits_counter + 1;
                state <= `LOAD;
            end
            
            `DECODE: begin
                case(sub_state) 
                    `DECODING_1: begin
                        $display("DECODER: substate 1");
                        //
                        if(bit_position < input_data_length) begin
                            code_index <= character_length;
                            bit_index <= bit_position;
                            code_value <= 0;
                            code_position <= 0;
                            sub_state <= `DECODING_2;
                        end
                        else begin
                            i <= 0;
                            state <= `SEND_DATA_1; 
                        end
                    end
                    
                    `DECODING_2: begin
                        $display("DECODER: substate 2");
                        if(code_index != 0) begin
                            if(code_index-1 == 0) begin
                                code_value <= code_value + input_data[bit_index]; // wartosc aktualna plus 2^0 razy bit na pierszej poz
                            end
                            else begin
                                code_value <= code_value + ((2<<(code_index-2))*input_data[bit_index]);
                                // wartosc aktualna plus 2^x * dana
                            end
                            sub_state <= `CODE_BIT_N;
                        end
                        else begin
                            sub_state <= `DECODING_3;
                        end
                    end
                    
                    `CODE_BIT_N: begin
                    code_index = code_index - 1;
                    bit_index = bit_index - 1;
                    sub_state <= `DECODING_2;
                    end
                    
                    `DECODING_3: begin
                        $display("DECODER: substate 3");
                        if(code_position < symbol_amount_var) begin
                            
                            if(character_length == 0) begin
                                sequence_to_and = 0;
                            end
                            else begin
                                sequence_to_and = (2 << (character_length-1)) - 1;
                            end
                             // Sprawdz czy jest kod zostal znaleziony, jesli nie wez kolejny bit
                            if(((code_list[code_position])&sequence_to_and) == code_value) begin
                                if(codes_lengths[code_position] > character_length) begin
                                    character_length = character_length + 1;
                                end
                                else begin
                                    character_length = 1;                   
                                    decoded_characters_array[decoded_chars_counter] = symbols[code_position];
                                    decoded_chars_counter = decoded_chars_counter + 1;
                                    $display("Decoder: decoded symbol: ", symbols[code_position]);
                                end
                                code_position = symbol_amount_var;
                            end 
                            code_position = code_position + 1;
                        end
                        else begin
                            sub_state = `DECODING_1;
                            bit_position = bit_position + 1;
                        end
                    end
                endcase
            end
            
            // Wysylanie danych "poziomm wyzej"
            `SEND_DATA_1: begin // wszystko w minimum trzech taktach zegara
                if(i < decoded_chars_counter) begin
                    data_out <= decoded_characters_array[i];
                    state <= `SEND_DATA_2;
                    i = i + 1;
                end
                else begin
                    data_ready = 0;
                end
            end
            
            `SEND_DATA_2: begin
                data_ready <= 1;
                state <= `SEND_DATA_3;
            end
            
            `SEND_DATA_3: begin
                i=i+1;
                state <= `SEND_DATA_1;
            end
            
         endcase
    end
endmodule
