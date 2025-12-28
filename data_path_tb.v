`timescale 1ns / 1ps

module data_path_tb();
reg clk_in;
reg rst;
data_path dp(clk_in,rst);

initial begin
clk_in=0;
forever #10 clk_in=~clk_in;
end

initial begin
rst=1;
#90
rst=0;
end


endmodule
