module zybo_top(

input             CLK,
input             RST,
output reg [3:0]  LED

);

parameter LED_COUNTER_1SEC = 27'd124999999;

reg [26:0]  counter_1sec;

always @ (posedge CLK) begin
  if (RST)
    counter_1sec <= 27'd0;
  else if (counter_1sec == LED_COUNTER_1SEC)
    counter_1sec <= 27'd0;
  else
    counter_1sec <= counter_1sec + 27'd1;
end

always @ (posedge CLK) begin
  if (RST)
    LED <= 4'b0000;
  else if (counter_1sec == LED_COUNTER_1SEC)
    LED <= ~LED;
end

endmodule
