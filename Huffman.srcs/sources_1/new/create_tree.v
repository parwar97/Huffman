`timescale 1ns / 1ps
         //////////////////////////////////////////////////////////////////////////////////
         // Company:
         // Engineer:
         //
         // Create Date: 19.08.2020 17:45:45
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
         
         
         `define BEGIN               4'b0000
         `define LOAD_TREE           4'b0001
         `define LOAD_TREE2          4'b0010
         `define INCREMENT_I         4'b0011
         `define INCREMENT_J         4'b0100
         `define LOAD_TREE3          4'b0101
         `define START_TREE          4'b0110
         `define CREATE_CODE         4'b0111
         `define SEND_DATA_TREE      4'b1000
         `define SEND_DATA_TREE2     4'b1001
         `define SEND_DATA_TREE3     4'b1010
         `define STAY                4'b1100
         `define SEND_DATA_TREE4     4'b1011
         
         
         `define GROUP_1_1           3'b000
         `define GROUP_1_2           3'b001
         `define GROUP_1_3           3'b010
         `define GROUP_1_4           3'b011
         `define INC_J               3'b100
         `define GROUP_2_1           3'b101
         `define GROUP_2_2           3'b110
         `define GROUP_3             3'b111
         
         `define TREE_1              3'b000
         `define TREE_2_1            3'b001
         `define TREE_2_2            3'b010
         `define TREE_1_2            3'b011
         `define TREE_2_1_2          3'b100
         `define TREE_2_1_1          3'b101
         `define TREE_2_1_3          3'b110
         `define TREE_2_1_4          3'b111
         
         
         `define GROW_TREE_1        3'b000
         `define GROW_TREE_1_1      3'b011
         `define GROW_TREE_2        3'b001
         `define GROW_TREE_3        3'b010
         `define POSITION_INC       3'b100
         `define GROW_TREE_4_1      3'b101
         `define GROW_TREE_4_2      3'b110
         `define GROW_TREE_4_2_1    3'b111
         
         
         module create_tree(
             input wire clock,
             input wire data_en,
             input wire [7:0] ascii_symbol_input,
             input wire [31:0] prob_in,
             input wire [7:0] ascii_symbols_length,
             output reg code_ready,
             output reg [31:0] code,
             output reg [7:0] code_length
             );
           
             parameter max_amount_of_symbols = 25;
             ///
             reg [3:0] state;
             reg [2:0] group_state;
             reg [2:0] tree_state;
             reg [2:0] grow_tree_state;
             reg [7:0] ascii_symbols_tab[0:max_amount_of_symbols];
             reg [31:0] prob_tab[0:max_amount_of_symbols];
             reg [31:0] code_tab[0:max_amount_of_symbols];
             reg [7:0] length_of_code_tab[0:max_amount_of_symbols];
           
             parameter max_length_of_tree = (max_amount_of_symbols << 2) - 1;
             reg [31:0] ID [0:max_length_of_tree];
             reg [31:0] shift;
             reg [31:0] shift2;
             reg [31:0] P [0:max_length_of_tree];
             reg [31:0] Link [0:max_length_of_tree];
             reg [31:0] length_of_tree_tab;
             reg [7:0] length_of_ascii_symbols_int;
           
             /// Zmienne wykorzystywane w petlach
             reg [31:0] i;
             reg [31:0] j;
             reg [31:0] it;
             reg [31:0] counter;
             reg [31:0] temp;
             reg [31:0] temp1;
             reg [31:0] temp2;
             reg [31:0] temp3;
             reg [31:0] temp4;
             reg [31:0] temp5;
           
             // Zmienne tworzenia drzewa
             reg  [31:0] code_it;
             reg  [31:0] ascii_symbol_it;
             reg  [31:0] ascii_symbol;
             reg  [31:0] position;
             reg  [31:0] current_symbol;
             reg  [31:0] last_symbol;
             
         
            initial begin
             state = `BEGIN;
             group_state = `GROUP_1_1;
             tree_state = `TREE_1;
             grow_tree_state = `GROW_TREE_1;
             i = 32'h0;
             j = 32'h0;
             it = 32'h0;
             counter = 32'h0;
             temp = 32'h0;
             temp1 = 32'h0;
             temp2 = 32'h0;
             temp3 = 32'h0;
             temp4 = 32'h0;
             temp5 = 32'h0;
             shift = 32'h0;
             shift2 = 32'h0;
             length_of_tree_tab = 32'h0;
             length_of_ascii_symbols_int = 8'h0;
             code_it = 32'h0;
             ascii_symbol_it = 32'h0;
             ascii_symbol = 32'h0;
             position = 32'h0;
             current_symbol = 32'h0;
             last_symbol = 32'h0;
            end
           
             always @(posedge clock) begin
                 case(state)
                 //Inicjalizacja
                     `BEGIN: begin
                         counter <= 0;
                         j <= 0;
                         i <= 0;
                         code_ready <= 0;
                         if(data_en) begin
                             state <= `STAY;
                         end        
                       
                     end
                   
                    `STAY: begin
                         state <= `LOAD_TREE;
                     end
                   
                   //Ladowanie danych
                     `LOAD_TREE: begin
                         /////////////////// load data ////////////////////////
                         if(j < ascii_symbols_length) begin
                         $display("Huffman tree: ladowanie danych");
                         length_of_tree_tab <= (ascii_symbols_length << 1);
                         ascii_symbols_tab[j] <= ascii_symbol_input;
                         prob_tab[j] <= prob_in;
                         length_of_code_tab[j] <= 0;
                         state <= `INCREMENT_J;
                         end
                         else begin
                             
                              state <= `LOAD_TREE2;
                         end
                     end
                 
                     
                     `LOAD_TREE2: begin
                         if(i < ascii_symbols_length) begin
                             ID[i] <= ascii_symbols_tab[i];
                             P[i] <= prob_tab[i];
                             state <= `INCREMENT_I;
                         end
                         else begin
                             length_of_tree_tab <= length_of_tree_tab - 1;
                             state <= `LOAD_TREE3;
                          end
                     end
                 
                     `LOAD_TREE3: begin
                         j <= 0;
                         i <= 0;
                         it <= 0;
                         state <= `START_TREE;
                     end
                             
                     `INCREMENT_J: begin
                         j <= j+1;
                         state <= `STAY;
                     end
                 
                     `INCREMENT_I: begin
                         i <= i+1;
                         state <= `LOAD_TREE2;
                     end            
                   
                   
                     `START_TREE: begin
                     /// tworzenie drzewa
                         $display("Huffman tree: budowanie drzewa");
                             case(tree_state)
                             `TREE_1: begin
                              ///////////////////// sorting ////////////////////////////
                                  case(group_state)
                                 
                                     `GROUP_1_1: begin
                                         temp <= P[j]; // temp <= P[2]
                                         temp1 <= ID[j];
                                         temp2 <= Link[j];
                                         group_state <= `GROUP_3;
                                     end
                                   
                                    `GROUP_3: begin
                                         temp3 <= P[j+1];
                                         temp4 <= ID[j+1];
                                         temp5 <= Link[j+1];
                                         group_state <= `GROUP_1_2;
                                    end
                                   
                                     `GROUP_1_2: begin
                                         if(temp >= temp3 && temp > 1) begin
                                             P[j] <= temp3;
                                             ID[j] <= temp4;
                                             Link[j] <= temp5;
                                             group_state <= `GROUP_1_3;
                                         end
                                         else begin
                                             group_state <= `GROUP_1_4;
                                         end
                                       
                                     end
                                   
                                     `GROUP_1_3: begin
                                         P[j+1] <= temp;
                                         ID[j+1] <= temp1;
                                         Link[j+1] <= temp2;
                                         group_state <= `GROUP_1_4;
                                     end
                                   
                                     `GROUP_1_4: begin
                                         if(j == ascii_symbols_length -2 + it) begin
                                             group_state <= `GROUP_2_1;
                                         end
                                         else begin
                                             group_state <= `INC_J;
                                         end
                                     end
                                   
                                     `INC_J: begin
                                         j <= j + 1;
                                         group_state <= `GROUP_1_1;
                                     end
                                   
                                     `GROUP_2_1: begin
                                         if(i < (ascii_symbols_length + it)) begin
                                             group_state <= `GROUP_2_2;
                                         end
                                         else begin
                                             tree_state <= `TREE_2_1;
                                         end
                                     end
                                   
                                     `GROUP_2_2: begin
                                         i <= i+1;
                                         j <= 0;
                                         group_state <= `GROUP_1_1;
                                     end
                                  endcase
                             end
                           
                             `TREE_2_1: begin
                                 shift  <= ascii_symbols_length << 3;
                                 shift2 <= ascii_symbols_length << 1;            
                                 P[ascii_symbols_length+it] <= P[counter];              
                                 tree_state <= `TREE_2_1_1;
                             end
                           
                             `TREE_2_1_1: begin
                                 ID[ascii_symbols_length+it] <= shift + shift2;
                                 P[ascii_symbols_length+it] <= P[ascii_symbols_length + it] + P[counter+1];
                                 tree_state <= `TREE_2_1_2;
                              end
                             
                              `TREE_2_1_2: begin
                                  ID[ascii_symbols_length+it] <= ID[ascii_symbols_length+it] + it + 1;
                                  tree_state <= `TREE_2_1_3;
                               end
                           
                             `TREE_2_1_3: begin
                                 P[counter] <= 0;                                                
                                 //P[counter+1] <= 1;                                            
                                 Link[counter] <= ID[ascii_symbols_length+it];                          
                                 //Link[counter+1] <= ID[ascii_symbols_length+it];                        
                                 tree_state <= `TREE_2_1_4;
                             end
                           
                             `TREE_2_1_4: begin
                                 //P[counter] <= 0;                                                
                                 P[counter+1] <= 1;                                              
                                 //Link[counter] <= ID[ascii_symbols_length+it];                          
                                 Link[counter+1] <= ID[ascii_symbols_length+it];                        
                                 tree_state <= `TREE_2_2;
                             end
                           
                             `TREE_2_2: begin
 
                                 counter <= counter + 2;                    
                                 if(it < ascii_symbols_length)begin
                                    tree_state <= `TREE_1_2;
                                 end
                                 else begin
                                     last_symbol <= ID[length_of_tree_tab - 1];
                                     i <= 0;
                                     j <= 0;
                                     state <= `CREATE_CODE;
                                 end
                             end
                           
                             `TREE_1_2: begin
                                 it <= it + 1;
                                 tree_state <= `TREE_1;
                             end
                           
                         endcase
                     end
                   
                     `CREATE_CODE: begin
                     /// przechodzenie drzewa
                         $display("Huffman tree: tworzenie kodow");
                         case(grow_tree_state)
                             `GROW_TREE_1: begin
                                 if(i < ascii_symbols_length) begin
                                     ascii_symbol <= ascii_symbols_tab[ascii_symbol_it];
                                     grow_tree_state <= `GROW_TREE_1_1;
                                 end
                                 else begin                        
                                    i <= 0;
                                    state <= `SEND_DATA_TREE;
                                 end
                             end
                           
                             `GROW_TREE_1_1: begin
                                 current_symbol <= ascii_symbol;
                                 code_tab[ascii_symbol_it] <= 0;
                                 grow_tree_state <= `GROW_TREE_2;
                             end
                           
                             `GROW_TREE_2: begin
                                 if(current_symbol != last_symbol) begin
                                     position <= 0;
                                     grow_tree_state <= `GROW_TREE_3;
                                 end
                                 else begin
                                     ascii_symbol_it <= ascii_symbol_it + 1;
                                     i <= i + 1;
                                     grow_tree_state <= `GROW_TREE_1;
                                 end
                             end
                           
                             `GROW_TREE_3: begin
                                 if(current_symbol != ID[position])begin
                                     grow_tree_state <= `POSITION_INC;
                                 end
                                 else begin
                                     if(P[position] == 0)begin
                                         grow_tree_state <= `GROW_TREE_4_1;
                                     end
                                     else if(P[position] == 1) begin
                                         grow_tree_state <= `GROW_TREE_4_2;
                                     end
                                 end
                             end
                           
                             `GROW_TREE_4_1: begin //KRYTYCZNE
                                 code_tab[ascii_symbol_it] <= (code_tab[ascii_symbol_it] << 1);
                                 length_of_code_tab[ascii_symbol_it] <= length_of_code_tab[ascii_symbol_it] + 1;
                                 current_symbol <= Link[position];
                                 grow_tree_state <= `GROW_TREE_2;
                             end
                           
                             `GROW_TREE_4_2: begin //KRYTYCZNE
                                 code_tab[ascii_symbol_it] <= (code_tab[ascii_symbol_it] << 1);
                                 grow_tree_state <= `GROW_TREE_4_2_1;
                             end
                           
                             `GROW_TREE_4_2_1: begin
                             code_tab[ascii_symbol_it] <= code_tab[ascii_symbol_it] + 1;
                             length_of_code_tab[ascii_symbol_it] <= length_of_code_tab[ascii_symbol_it] + 1;
                             current_symbol <= Link[position];
                             grow_tree_state <= `GROW_TREE_2;
                             end
                           
                             `POSITION_INC: begin
                                 position <= position + 1;
                                 grow_tree_state <= `GROW_TREE_3;
                             end
                           
                        endcase
                     end
                   
                     `SEND_DATA_TREE: begin
                         if(i < ascii_symbols_length) begin
                             code <= code_tab[i];
                             code_length <= length_of_code_tab[i];
                             state <= `SEND_DATA_TREE2;
                         end
                         else begin
                             code_ready <= 1'b0;
                         end
                     end
                   
                     `SEND_DATA_TREE2: begin
                         code_ready <= 1'b1;
                         state <= `SEND_DATA_TREE3;
                     end
                   
                     `SEND_DATA_TREE3: begin
                         i <= i+1;
                         state <= `SEND_DATA_TREE4;
                     end
                   
                     `SEND_DATA_TREE4: begin
                         state <= `SEND_DATA_TREE;
                     end
                   
                 endcase
             end
         endmodule