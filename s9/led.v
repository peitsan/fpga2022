module led_flow(clk,rst,led); //模块端口定义
   input clk,rst;
	output [7:0] led;
	//reg clk;
	reg [7:0] led;
	//分频得到1s时钟
	reg clk_1s;
	reg [22:0] count;
	always@(posedge clk or negedge rst)
	  begin 
		if(!rst)
		  begin 
			clk_1s<=0;
		   count<=0;
		  end
		else begin	
		if(count=='d6000000-1)
		  begin 
			clk_1s<=~clk_1s;
			count<=0;
			end		
		else
			count<=count+1;
	end
	end
	//流水灯控制
always@(posedge clk_1s or negedge rst)
		   begin
		     if(!rst)
		          begin 
		 	          led<=8'b1111_1111;
		          end
			  else 
			       begin
			         if(led==8'b1111_1111)
		            led<=8'b1111_1110;
		            else
		            led<= {led[6:0],1'b1};    // led 依次左移位
		          end
			end
		 endmodule