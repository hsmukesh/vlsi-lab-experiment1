module rca(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3;
xor g1(w,a,b);
xor g2(sum,w1,cin);
and g3(w2,a,b);
and g4(w3,w1,cin);
or g5(carry,w3,w2);
endmodule

module ripplecarry(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum,carry;
wire c1,c2,c3;
rca g1(.a(a[0]),.b(b[0]),.cin(cin),.s(sum[0]),.carry(c1));
rca g2(.a(a[1]),.b(b[1]),.cin(c1),.s(sum[1]),.carry(c2));
rca g3(.a(a[2]),.b(b[2]),.cin(c2),.s(sum[2]),.carry(c3));
rca g4(.a(a[3]),.b(b[3]),.cin(c3),.s(sum[3]),.carry(cout));
endmodule
