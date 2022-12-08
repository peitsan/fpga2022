`timescale 1ns/100ps //定义仿真时间单位和精度

module tb_voter; 
 
//激励信号定义，对应连接到待测试模块的输入端口，reg类型
      reg tb_A;
	   reg tb_B;
      reg tb_C;	
//待检测信号定义，对应连接到待测试模块的输出端口，wire类型
      wire tb_Y;
//例化待测试模块/调用模块
	voter_33 U_voter_33( 
      /*input A,B,C;*/  
		.A(tb_A),
		.B(tb_B),
		.C(tb_C),
		
	 /*output Y;*/	
	   .Y(tb_Y) 
);   
      
// 仿真系统初始化/产生激励
   initial begin	
		tb_A=0;
	   tb_B=0;
      tb_C=0;
		#100;
		tb_A=0;
	   tb_B=0;
      tb_C=1;
		#100;
		tb_A=0;
	   tb_B=1;
      tb_C=0;
		#100;
		tb_A=0;
	   tb_B=1;
      tb_C=1;
		#100;
		tb_A=1;
	   tb_B=0;
      tb_C=0;
		#100;
		tb_A=1;
	   tb_B=0;
      tb_C=1;
		#100;
		tb_A=1;
	   tb_B=1;
      tb_C=0;
		#100;
		tb_A=1;
	   tb_B=1;
      tb_C=1;
		#100;   
	end	
 endmodule