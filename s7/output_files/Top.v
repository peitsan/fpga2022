`define USER_PINS
`define JTAG
module  Top (
    `ifdef USER_PINS
        output [7:0]    LED,        //1.5v
		  input  [3:0]    SW,        //1.5v
		  input    clk,        //1.5v
		  input    rst,        //1.5v]
    `endif
     `ifdef JTAG
        inout        	IP_SECURITY,    //3.3-v LVCMOS 
        output        	JTAG_SAFE       //3.3-v LVCMOS
     `endif

        ); 
endmodule
