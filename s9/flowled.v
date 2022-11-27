module flowled (input wire Clock,input wire RESET_N,output wire [7:0] LED);
reg [27:0] cnt_1s;
reg clk_1s_en;
always @(posedge Clock or negedge RESET_N)
begin
if(!RESET_N) begin
        cnt_1s <= 0;
        clk_1s_en <= 0;
    end
    else begin
        if(cnt_1s == 'd25_000_000-1)
			begin
            cnt_1s <= 0;
            clk_1s_en <= ~clk_1s_en;
        end
        else
        cnt_1s <= cnt_1s + 1;
    end
end
reg [7:0] led_set;
  
always @(posedge clk_1s_en or negedge RESET_N)
begin
    if(!RESET_N) begin
        led_set <= 8'b0000_0000;
    end
    else begin
        if(led_set == 8'b0000_0000)
         led_set <= 8'b1000_0000;
        else
         led_set <= {1'b0,led_set[7:1]};
    end
end
assign LED = led_set;
endmodule