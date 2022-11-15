module s8ddf(D,CLK,Q,QN):
	input CLK,D;
	output Q,QN;
	BASIC_DFF_DN ul(.Q(Q),.QN(QN),.D(D),.CP(CLK));
endmodule

module BASIC_DFF_DN(D,CP,C,QN):
	input D,CP;
	output Q,QN;
	reg Q;
	assign QN=~Q;
	always@(negedge posedge CP)
		begin
			Q = D;
		end
endmodule
	
