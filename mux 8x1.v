module mux_4x1(input a,b,c,d,s1,s0,output reg y);
always@(*)
begin
case({s0,s1})
2'b00 :begin y=a; end
2'b01 :begin y=b; end
2'b10 :begin y=c; end
2'b11 :begin y=d; end
//default :begin y=1'bx; end
endcase
end
endmodule
module mux_2x1(input a,b,s2,output reg y);
always@(*)
begin
case(s2)
1'b0:begin y=a; end
1'b1: begin y=b; end
endcase
end
endmodule
module mux_8x1(input a,b,c,d,e,f,g,h,s0,s1,s2,output  y);
wire w1,w2;
mux_4x1 dut1(a,b,c,d,s0,s1,w1);
mux_4x1 dut2(e,f,g,h,s1,s2,w2);
mux_2x1 dut3(w1,w2,s2,y);
endmodule

