`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2020 17:45:45
// Design Name: 
// Module Name: create_tree
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


`define HUFF_INIT           3'b001
`define HUFF_LOAD           3'b010
`define HUFF_BUILD_TREE     3'b011
`define HUFF_MAKE_CODES     3'b100
`define HUFF_SEND_DATA      3'b101

`define INIT_STATE_1        1'b0
`define INIT_STATE_2        1'b1

`define SORT_S1             1'b0
`define SORT_S2             1'b1

`define BUILDING_TREE_S1    1'b0
`define BUILDING_TREE_S2    1'b1


`define MAKE_TREE_S1        2'b00
`define MAKE_TREE_S2        2'b01
`define MAKE_TREE_S3        2'b10

`define SEARCH_S1           1'b0
`define SEARCH_S2           1'b1

module create_tree(
    input wire clock,
    input wire tree_data_enable,
    input wire [7:0] symbol_in,
    input wire [31:0] probability_in,
    input wire [7:0] symbols_length,
    output reg tree_data_ready,
    output reg [31:0] code_out,
    output reg [7:0] code_out_length
    );
    
    parameter max_symbols_amount = 50;
    /// main variables
    reg [2:0] state = `HUFF_INIT;
    reg init_state = `INIT_STATE_1;
    reg sorting_state = `SORT_S1;
    reg building_tree_state = `BUILDING_TREE_S1;
    reg [1:0] making_tree_state = `MAKE_TREE_S1;
    reg searching_state = `SEARCH_S1;
    reg [7:0] symbols_tab[0:max_symbols_amount];
    reg [31:0] probabilities_tab[0:max_symbols_amount];
    reg [31:0] code_tab[0:max_symbols_amount];
    reg [7:0] code_length_tab[0:max_symbols_amount];
    
    parameter tree_max_length = (max_symbols_amount * 2) - 1;
    reg [31:0] ID [0:tree_max_length];
    reg [31:0] P [0:tree_max_length];
    reg [31:0] Link [0:tree_max_length];
    integer tree_tab_length;
    //reg [7:0] symbols_int_length = 8'h0;
    
    /// loop variables
    integer i = 32'h0;
    integer k = 32'h0;
    integer j = 32'h0;
    integer it = 32'h0;
    integer counter = 32'h0;
    integer temp = 32'h0;
    integer temp1 = 32'h0;
    integer temp2 = 32'h0;
    
    // variables for tree
    integer code_it = 32'h0;
    integer symbol_it = 324'h0;
    integer symbol = 32'h0;
    integer position = 32'h0;
    integer current_symbol = 32'h0;
    integer last_symbol = 32'h0;
    
    always @(posedge clock) begin
        case(state)
            `HUFF_INIT: begin
            $display("Huffman tree: inicjalizacja");
                counter <= 0;
                j <= 0;
                i <= 0;         
                state = `HUFF_LOAD;
            end
            
            `HUFF_LOAD: begin
                /////////////////// load data ////////////////////////
                if(tree_data_enable) begin
                    $display("Huffman tree: ladowanie danych");
                    tree_tab_length <= (symbols_length << 1) - 1;
                    symbols_tab[j] <= symbol_in;
                    probabilities_tab[j] <= probability_in;
                    code_length_tab[j] <= 0;
                    if(j!=symbols_length) begin
                        state <= `INCREMENT_J;
                    end
                    else begin
                         state <= `HUFF_LOAD2;
                    end
                end
            end
            
            `HUFF_LOAD2: begin
                if(i < symbols_length) begin
                    ID[i] = symbols_tab[i];
                    P[i] = probabilities_tab[i];
                    state <= `INCREMENT_I;
                end
                else begin
                    state <= `HUFF_LOAD3;
                 end
            end
            
            `HUFF_LOAD3: begin
                j <= 0;
                i <= 0;
                it <= 0;
                state = `HUFF_BUILD_TREE;
            end
                        
            `INCREMENT_J: begin
                j <= j+1;
                state <= `HUFF_LOAD;
            end
            
            `INCREMENT_I: begin
                i <= i+1;
                state <= `HUFF_LOAD2;
            end            
            
            `HUFF_BUILD_TREE: begin
            /// tworzenie drzewa
            /// 1. posortuj tablice
            /// 2. znajdz dwa symbole z najmniejszymi prawdopodobinstwami - pierwszy i drugi element z tablicy
            /// 3. w tablicy Id na kolejnym pustym miejscu [length+id] wstaw nowy indeks - moze byc dowolna liczba, nieostotne jaka
            /// 4. w tablic P na tym samym miejsciu [length+id] wstaw sume prawdopodbienstw dwoch znalezionych najmniejszych prawdopodbienstw
            /// 5. w tablicy P na miejscu pierwszego z znalezionych najmniejszych prawdopodobienstw [counter] wstaw 0 a na drugim miejscu [counter+1] wstaw 1 (w przypadku tego programu jest to -1 - sprawa do roziwazania)
            /// 6. w tablicy Link na miejscach znalezionych najmniejszych prawdopodbienstw Link[counter] & Link[counter+1] wartosc nowo utworzonego Id[length+id]
            /// powtarzaj kroki 1- 6 zwiekszajac iterator tablicy o 1 oraz iterator counter o 2 az przeleci liczba dlugosci symboli - 1
            /// osiagniete tablice powinny miec przykladowy format:
            /// Id:   | A | B | C | D | E | 5 | 6 | 7 | 8  |
            /// P:    | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 1 | 10 |
            /// Link  | 5 | 5 | 6 | 6 | 7 | 7 | 8 | 8 | 0  |
                $display("Huffman tree: budowanie drzewa");
                    case(building_tree_state)
                    `BUILDING_TREE_S1: begin
                     ///////////////////// sorting ////////////////////////////
                         case(sorting_state)
                            `SORT_S1: begin
                                if(P[j] >= P[j+1] && P[j] > 1) begin
                                    temp = P[j];
                                    temp1 = ID[j];
                                    temp2 = Link[j];
                                    P[j] = P[j+1];
                                    ID[j] = ID[j+1];
                                    Link[j] = Link[j+1];
                                    P[j+1] = temp;
                                    ID[j+1] = temp1;
                                    Link[j+1] = temp2;
                                end
                                if(j == symbols_length + it) begin
                                    sorting_state = `SORT_S2;
                                end
                                else begin
                                    j = j + 1;
                                end
                            end
                            `SORT_S2: begin
                                if(i < symbols_length + it) begin
                                    i = i + 1;
                                    j = 0;
                                    sorting_state = `SORT_S1; 
                                end
                                else begin
                                    building_tree_state = `BUILDING_TREE_S2;
                                end
                            end
                         endcase
                    end
                    `BUILDING_TREE_S2: begin
                    //////////////////// Build a tree /////////////////////////
                        ID[symbols_length+it] = symbols_length*10+it+1;                 /// (3)
                        P[symbols_length+it] = P[counter] + P[counter+1];               /// (4)
                        P[counter] = 0;                                                 /// (5)
                        P[counter+1] = 1;                                               /// (5)
                        Link[counter] = ID[symbols_length+it];                          /// (6)
                        Link[counter+1] = ID[symbols_length+it];                        /// (6)
                        counter = counter + 2;                    
                     /////////////////// change a main state //////////////////
                        if(it < symbols_length)begin
                           building_tree_state = `BUILDING_TREE_S1;
                            it = it + 1;
                        end
                        else begin
                            state = `HUFF_MAKE_CODES;
                            last_symbol = ID[tree_tab_length - 1];
                            i = 0;
                            j = 0;
                        end
                    end
                endcase
            end
            
            `HUFF_MAKE_CODES: begin
            /// przechodzenie drzewa
            /// algorytm
            /// potrzebujemy dwa iteratory
            /// jeden do iteracji kodow - za jeden przebieg petli da sie zakodowac jeden symbol
            /// drugi iterator do przechodzenia tablicy It
            /// 1. zapisz do zmiennej tymczasowej symbol wartosc kolejnego symbolu z tablicy symbolow
            /// 2. zapisz do zmiennej current_symbol wartosc obecnego symbolu zmienna ta bedzie wykorzystywana do kolejnych iteracji
            /// 3. oblicz pozycje wybranego symbolu w tablicy Id - algorytm w funkcji na gorze
            /// 4. iezeli P[obliczonej pozycji] jest rowny 0 przesun bitowo tablice kodow o 1 (mnozymy razy 2)i dodaj 0
            /// 5. jezeli P[obliczonej pozycji] jest rowny 1(tutaj chwilowo -1) przesun bitowo tablice kodow o 1(mnozymy razy 2) i dodaj 1
            /// 6. zwieksz dlugosc danego symbolu o 1
            /// 7. zamien obecny symbol na ten z tablicy Link z obliczonej pozycji
            /// 8. jesli uzyskany nowy symbol nie jest rowny ostatniemu z drzewa z tablicy Id[ilosc_symboli*2-1] powtorz kroki 3 - 7
            /// 9. zwieksz iterator symbolowy dopoki nie przeleci wszystkich symboli - ilosc_symboli
                $display("Huffman tree: tworzenie kodow");
                case(making_tree_state)
                    `MAKE_TREE_S1: begin
                        if(i < symbols_length) begin
                            symbol = symbols_tab[symbol_it];
                            current_symbol = symbol;
                            code_tab[symbol_it] = 0;
                            making_tree_state = `MAKE_TREE_S2;
                        end 
                        else begin
                           state = `HUFF_SEND_DATA;
//                           for(k=0;k<symbols_int_length;k=k+1) $display("Symbol: ", symbols_tab[k], " code: ", code_tab[k], " code length: ", code_length_tab[k]);
                           i = 0;
                        end 
                    end
                    
                    `MAKE_TREE_S2: begin
                        if(current_symbol != last_symbol)begin
                         position = 0;
                         making_tree_state = `MAKE_TREE_S3;
                        end
                        else begin
                            symbol_it = symbol_it + 1;
                            i = i+1;
                            making_tree_state = `MAKE_TREE_S1;
                        end
                    end
                    
                    `MAKE_TREE_S3: begin
                        if(current_symbol != ID[position])begin
                            position = position + 1;
                        end
                        else begin
                            if(P[position] == 0)begin
                                code_tab[symbol_it] = code_tab[symbol_it] * 2;
                            end
                            else if(P[position] == 1) begin
                                code_tab[symbol_it] = code_tab[symbol_it] * 2;
                                code_tab[symbol_it] = code_tab[symbol_it] + 1;
                            end
                            code_length_tab[symbol_it] = code_length_tab[symbol_it] + 1;
                            current_symbol = Link[position];
                            making_tree_state = `MAKE_TREE_S2;
                        end
                    end
               endcase
            end
            
            `HUFF_SEND_DATA: begin
                tree_data_ready = 1'b1;
                if(i < symbols_length) begin
                    code_out = code_tab[i];
                    code_out_length = code_length_tab[i];
                    i = i + 1;
                end
            end
        endcase
    end
endmodule 

