module allgates(a,b,y1,y2,y3,y4,y5,y6,y7);
input a,b;
output y1,y2,y3,y4,y5,y6,y7;
and g1(y1,a,b);
or  g2(y2,a,b);
not g3(y3,a);
xor g4(y4,a,b);
xnor g5(y5,a,b);
nand g6(y6,a,b);
nor g7(y7,a,b);
endmodule
