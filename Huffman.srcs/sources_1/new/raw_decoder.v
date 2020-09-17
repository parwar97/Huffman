`timescale 1ns / 1ps
        //////////////////////////////////////////////////////////////////////////////////
        // Company:
        // Engineer:
        //
        // Create Date: 20.08.2020 17:47:21
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
         
         
        `define START           4'b0000 // Stan poczatkowy
        `define START_1         4'b1000 // Stan poczatkowy
        `define START_1_1       4'b1100 // Stan poczatkowy
        `define LOAD            4'b0001 // Ladowanie danych
        `define DECODE          4'b0010 // Dekodowanie
        `define LOAD_1          4'b1001
        `define SEND_DATA_1     4'b0011 // Wyslij dane
        `define INIT_ITERATOR_P 4'b0100 // Wyslij dane
        `define BITS_COUNTER_P  4'b0101 // Wyslij dane
        `define SEND_DATA_2     4'b0110 // Wyslij dane
        `define SEND_DATA_3     4'b0111 // Wyslij dane
        `define LOAD_1_1        4'b1011
        `define SEND_DATA_4     4'b1110
         
        `define DECODING_1      4'b0000 // Dekodowanie
        `define DECODING_2      4'b0001 // Dekodowanie
        `define DECODING_3      4'b0010 // Dekodowanie
        `define DECODING_3_1    4'b0011 // Dekodowanie
        `define DECODING_3_2    4'b0100 // Dekodowanie
        `define DECODING_3_3    4'b0101 // Dekodowanie
        `define DECODING_3_3_1  4'b0110 // Dekodowanie
        `define DECODING_3_4    4'b0111 // Dekodowanie
        `define CODE_BIT_N      4'b1000 // Dekodowanie
         
        module raw_decoder(
            input wire clock, // zegar wejscioy
            input wire data_en, // sygnal enable
            input wire data_in, // dana wejsciowa do zdekodowania
            input wire [15:0] data_in_length, // dlugosc danych do zdekodowania
            input wire [31:0] huff_codes, // kody huffmana po przeksztalceniu
            input wire [7:0] huff_codes_length, // odpowiadajaca dlugosc kodow huffmana
            input wire [7:0] ascii_symbols, // symbole po kolei
            input wire [7:0] ascii_symbols_length, // liczba symboli
            output reg data_ready, // faga markujaca gotowosc danych
            output reg [7:0] data_out // zdekodowana dana
            );
           
            reg [3:0] state_raw = `START_1; // stan poczatkowy
            reg [3:0] sub_state = `DECODING_1; // podstan poczatkowy
           
            reg [31:0] code_list [0:49];
            reg [7:0] codes_lengths [0:49];
            reg [7:0] symbols [0:49];
            reg input_data [0:1023];
            reg [15:0] input_data_length;
            reg [7:0] symbol_amount_var = 8'b00000001; // musi byc wieksze od 0 zeby przy inicjalizacji dzialalo
            reg [7:0] decoded_characters_array [0:99];
         
            // ITERATORY
           
            reg [15:0] init_iterator = 16'h0;
            reg [15:0] bits_counter = 16'h0; // MAX 1024 !
         
            reg [31:0] decoded_chars_counter = 32'h0;
            reg [31:0] iterator_1= 32'h0;
           
            reg [31:0] bit_position = 32'h0;
            reg [15:0] code_position = 16'h0;
           
            reg [7:0] code_index = 8'h0;
            reg [7:0] bit_index = 8'h0;
            reg [31:0] code_value = 32'h0;
            reg [7:0] character_length = 8'h0;
           
            reg [31:0] sequence_to_and = 8'h0;
           
            always @(posedge clock) begin
                case(state_raw)
               
                    `START_1: begin
                    data_ready <= 0;
                        if(data_en) begin
                            state_raw <= `START_1_1;
                        end
                    end
                   
                    `START_1_1: begin
                        state_raw <= `START;
                    end
               
                    `START: begin
                            $display("Dekoder: start");
                       
                            input_data_length <= data_in_length;
                            symbol_amount_var <= ascii_symbols_length;
                           
                            // Ta czesc inicjalizuje sie w "petli"
                            code_list[init_iterator] <= huff_codes;
                            codes_lengths[init_iterator] <= huff_codes_length;
                            symbols[init_iterator] <= ascii_symbols;
                           
                            if(init_iterator != symbol_amount_var) begin
                                state_raw <= `INIT_ITERATOR_P;
                            end
                            else begin // Jesli przeiterujemy wszyskie dane poczatkowe
                                character_length <= 1; // kazdy znak ma min 1 dlugosc
                                decoded_chars_counter <= 0; // ile juz zdekodowano
                                iterator_1<= 0;
                                bit_position <= 0;
                                state_raw <= `LOAD_1;
                                $display("Dekoder: zaladoano dane inizjalizacyjne");
                            end
                    end
                   
                    `INIT_ITERATOR_P: begin
                        init_iterator <= init_iterator + 1;
                        state_raw <= `START_1_1;
                    end
                   
                    `LOAD_1: begin
                        if(data_en) begin
                            state_raw <= `LOAD_1_1;
                        end
                    end
                   
                    `LOAD_1_1: begin
                            state_raw <= `LOAD;
                    end
                   
                    `LOAD: begin
                        if(data_en) begin
                            input_data[bits_counter] <= data_in;
                            if(bits_counter != input_data_length) begin
                                state_raw <= `BITS_COUNTER_P;
                            end
                            else begin
                                state_raw <= `DECODE;
                                $display("Dekoder: zaladowano dane wejsciowe");
                            end
                        end
                    end    
         
                    `BITS_COUNTER_P: begin
                        bits_counter <= bits_counter + 1;
                        state_raw <= `LOAD_1_1;
                    end
                   
                    `DECODE: begin
                        case(sub_state)
                            `DECODING_1: begin
                                if(bit_position < input_data_length) begin
                                    code_index <= character_length;
                                    bit_index <= bit_position;
                                    code_value <= 0;
                                    code_position <= 0;
                                    sub_state <= `DECODING_2;
                                end
                                else begin
                                    iterator_1<= 0;
                                    state_raw <= `SEND_DATA_1;
                                end
                            end
                           
                            `DECODING_2: begin // KRYTYCZNE
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
                            code_index <= code_index - 1;
                            bit_index <= bit_index - 1;
                            sub_state <= `DECODING_2;
                            end
                           
                            `DECODING_3: begin
                                if(code_position < symbol_amount_var) begin
                                   
                                    if(character_length == 0) begin
                                        sequence_to_and <= 0;
                                    end
                                    else begin
                                        sequence_to_and <= (2 << (character_length-1)) - 1;
                                    end
                                    sub_state <= `DECODING_3_1;
                                end
                                else begin
                                    sub_state <= `DECODING_1;
                                    bit_position <= bit_position + 1;
                                end
                            end
                   
                    `DECODING_3_1: begin
                        // Sprawdz czy jest kod zostal znaleziony, jesli nie wez kolejny bit
                        if(((code_list[code_position])&sequence_to_and) == code_value) begin
                            if(codes_lengths[code_position] > character_length) begin
                                sub_state <= `DECODING_3_2;
                            end
                            else begin
                                sub_state <= `DECODING_3_3;
                            end
                        end
                        else begin
                        sub_state <= `DECODING_3_4;
                        end
                    end
                   
                    `DECODING_3_2: begin
                        character_length <= character_length + 1;
                        code_position <= symbol_amount_var;
                        sub_state <= `DECODING_3_4;
                    end
                   
                    `DECODING_3_3: begin
                        character_length <= 1;                  
                        decoded_characters_array[decoded_chars_counter] <= symbols[code_position];
                        sub_state = `DECODING_3_3_1;
                    end
                   
                    `DECODING_3_3_1: begin
                        decoded_chars_counter <= decoded_chars_counter + 1;
                        code_position <= symbol_amount_var;
                        sub_state <= `DECODING_3_4;
                    end
                    `DECODING_3_4: begin
                        code_position <= code_position + 1;
                        sub_state <=`DECODING_3;
                    end
                    endcase
                end
                    // Wysylanie danych "poziom wyzej"
                    `SEND_DATA_1: begin // wszystko w minimum trzech taktach zegara
                        if(iterator_1< decoded_chars_counter) begin
                            data_out <= decoded_characters_array[iterator_1];
                            state_raw <= `SEND_DATA_2;
                        end
                        else begin
                            data_ready <= 0;
                        end
                    end
                   
                    `SEND_DATA_2: begin
                        data_ready <= 1;
                        state_raw <= `SEND_DATA_3;
                    end
                   
                    `SEND_DATA_3: begin
                        iterator_1<=iterator_1+1;
                        state_raw <= `SEND_DATA_4;
                    end    
                         
                    `SEND_DATA_4: begin
                        state_raw <= `SEND_DATA_1;
                    end  
                 endcase
            end
        endmodule