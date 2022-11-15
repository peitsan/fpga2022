`timescale 1ns/100ps //定义仿真时间单位与精度

module s8dff_tb;
	//定义一个激励信号寄存器
	reg d_tb,clk_tb,s_tb,r_tb;
	//定义待测信号为wire型
	wire q_tb,qn_tb;
	//例化待测模块
	s8ddf U_s8dff(
		//input d,clk
		.d(d_tb),
		.clk(clk_tb),
		.s(s_tb),
		.r(r_tb),
		//输出
		.q(q_tb),
		.qn(qn_tb)
	);
	
	initial 
		begin clk_tb=0;
		#5 forever
		#100 clk_tb = clk_tb;
		end
		
		initial begin
		  d_tb = 0;
		 #200 d_tb = 1;
		 #700 d_tb = 0;
		 #300 d_tb = 1;
		 end
		 
		initial begin
		  r_tb = 1;
		 #50 d_tb = 0;
		 #250 d_tb = 1;
		 end
endmodule
	
	
	