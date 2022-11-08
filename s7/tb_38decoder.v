`timescale 1ns/100ps

module tb_38decoder;


reg a;
reg b;
reg c;
wire [7:0]data;

tb_38decoder tb_38decoder_0(
    .a(a),
    .b(b),
    .c(c),
    .data(data)
);


initial begin
    a=0;b=0;c=0;
    #200;
    a=0;b=0;c=1;
    #200;
    a=0;b=1;c=0;
    #200;
    a=0;b=1;c=1;
    #200;
    a=1;b=0;c=0;
    #200;
    a=1;b=0;c=1;
    #200;
    a=1;b=1;c=0;
    #200;
    a=1;b=1;c=1;
    #200;
    $stop;
end

endmodule
