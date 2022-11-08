module voter_33(A,B,C,Y);
		input A, B, C;
		output Y;
		reg Y;
		always@(A or B or C)
			if(A & B|A & C|A & B & C)
					Y = 1;
			else 
					Y = 0;
		// printf(Y);
endmodule