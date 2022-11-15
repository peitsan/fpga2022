module s8jkf(J,K,CP,R,S,CLK,RESET,SET,Q,QN);
	input J,K,CP,R,S,CLK,RESET,SET;
	output Q,QN;
	reg Q;
	ASYNC_RES_JKFF ul(
		.J(J),
		.K(K),
		.CP(CLK),
		.R(RESET),
		.S(SET),
		.Q(Q),
		.QN(QN)
	);
assign QN=~Q;
always@(posedge CP or posedge R or posedge S)
	if(R)
		Q<=1'b0;
	else if(S)
		Q<=1'b1;
	else
		begin	
			if(J == 1 && K == 1)
				Q <=~Q;
			else if(J == 0 && K == 1)
				Q<=1'b0;
			else if(J == 1 && K == 0)
				Q<=1'b1;
			end
endmodule
				