`timescale 1ns / 100ps
module led_tb;
 
parameter CLK_PERIOD = 40;  //CLK_PERIOD=40ns, Frequency=25MHz
 
reg       sys_clk;
reg       sys_rst_n;  //active low
wire      led_out;
 
initial
	sys_clk = 1'b0;
always
	sys_clk = #(CLK_PERIOD/2) ~sys_clk;
 
 
initial 
	begin
		sys_rst_n = 1'b0;
		#100;
		sys_rst_n = 1'b1;
	end
 
blink #(.CNT_NUM(10)) blink_uut(
                               .clk_in    (sys_clk),
                               .rst_n_in  (sys_rst_n),
                               .led_out   (led_out)
                               );
 
endmodule
