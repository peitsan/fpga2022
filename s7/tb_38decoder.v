`timescale 1ns/100ps

module tb_38decoder;
reg [3:0]sw;
wire [7:0]data;

decode38 tb_38decoder_0(
	 .SW(sw),
    .LED(data)
);


initial begin
	 sw[0] =0;sw[1]=0;sw[2]=0;
    #200;
    sw[0] =0;sw[1]=0;sw[2]=1;
    #200;
    sw[0] =0;sw[1]=1;sw[2]=0;
    #200;
    sw[0] =0;sw[1]=1;sw[2]=1;
    #200;
    sw[0] =1;sw[1]=0;sw[2]=0;
    #200;
    sw[0] =1;sw[1]=0;sw[2]=1;
    #200;
    sw[0] =1;sw[1]=1;sw[2]=0;
    #200;
    sw[0] =1;sw[1]=1;sw[2]=1;
    #200;
    $stop;
endA

endmodule
