`include "mux 8x1.v"
module tb;
reg  a,b,c,d,e,f,g,h,s0,s1,s2;
wire y;
mux_8x1 dut(.*);
initial begin
a=0;b=0;c=1;d=0;e=1;f=0;g=1;h=1;#10;
s0=0;s1=0;s2=0;#10;
s0=0;s1=1;s2=0;#10;
s0=1;s1=0;s2=0;#10;
s0=1;s1=1;s2=0;#10;
s0=0;s1=0;s2=1;#10;
s0=0;s1=1;s2=1;#10;
s0=1;s1=0;s2=1;#10;
s0=1;s1=1;s2=1;#10;
end
initial begin
$monitor("time=%0t,a=%0b,b=%0b,c=%0b,d=%0b,e=%0b,f=%0b,g=%0b,h=%0b,s0=%0b,s1=%0b,s2=%0b,y=%0b",$time,a,b,c,d,e,f,g,h,s0,s1,s2,y);
end 
endmodule
