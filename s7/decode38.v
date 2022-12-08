module decode38 (SW,LED);
	input [3:0] SW;							//开关输入信号，利用了其中3个开关作为3-8译码器的输入
	output [7:0] LED;						//输出信号控制特定LED
   reg [7:0] LED;	
        //always过程块，括号中sw为敏感变量，当sw变化一次执行一次always中所有语句，否则保持不变
	always @ (SW)
	begin
		case(SW)                                                   //case语句，一定要跟default语句
			3'b000:	LED=8'b0111_1111;                         //条件跳转，其中“_”下划线只是为了阅读方便，无实际意义  
			3'b001:	LED=8'b1011_1111;                         //位宽'进制+数值是Verilog里常数的表达方法，进制可以是b、o、d、h（二、八、十、十六进制）
			3'b010:	LED=8'b1101_1111;
			3'b011:	LED=8'b1110_1111;
			3'b100:	LED=8'b1111_0111;
			3'b101:	LED=8'b1111_1011;
			3'b110:  LED=8'b1111_1101;
			3'b111:	LED=8'b1111_1110;
			default: ;
		endcase
	end
endmodule