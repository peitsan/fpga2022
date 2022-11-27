
`define USER_PINS
`define LED

`define GPIO
`define JTAG
 
module  DE10_LITE_Golden_Top (
        input           CPU_RESETn,      //3.3-v LVCMOS        
        
    `ifdef USER_PINS
        output [7:0]    LED,        //1.5v
		  input    clk,        //1.5v
		  input    rst,        //1.5v
        input  [3:0]    USER_PB,         //1.5v
        input  [4:0]    USER_DIPSW,     //1.5v
    `endif
    	    
    `ifdef USB 
        input           USB_RESETn,     //3.3-v LVCMOS
        input           USB_WRn,   	//3.3-v LVCMOS  
        input           USB_RDn,   	//3.3-v LVCMOS    
        input           USB_OEn,   	//3.3-v LVCMOS    
        inout  [1:0]    USB_ADDR,  	//3.3-v LVCMOS    
        inout  [7:0]    USB_DATA,  	//3.3-v LVCMOS    
        output          USB_FULL,  	//3.3-v LVCMOS    
        output          USB_EMPTY, 	//3.3-v LVCMOS    
        input           USB_SCL,   	//3.3-v LVCMOS    
        inout           USB_SDA,   	//3.3-v LVCMOS    
        input           USB_CLK,   	//3.3-v LVCMOS    
    `endif
     `ifdef GPIO
        input	[8:1] 	ADC1IN,       //2.5v
        input 	[8:1] 	ADC2IN,       //2.5v
     `endif

     `ifdef JTAG
        inout        	IP_SECURITY,    //3.3-v LVCMOS 
        output        	JTAG_SAFE       //3.3-v LVCMOS
     `endif

        ); 
endmodule
