%exm021006 
syms G1 G2 G3 G4 H1 H2 H3
A=[		0,   0,   0,   0, -H3;
      G1,   0,   0,   0, -H1;
		0,  G2,   0,   0,  H2;
		0,   0,  G3,   0,   0;
		0,   0,   0,  G4,   0];
b=[ 	1;   0;   0;   0;   0];
c=[	 0,   0,   0,   0,   1];
Y2Ub=c*((eye(size(A))-A)\b); 	%
disp([blanks(5),'传递函数 Y2Ub 为'])
pretty(Y2Ub)   

syms s
Sblock={100/(s+10),1/(s+1),(s+1)/(s^2+4*s+4),(s+1)/(s+6),(2*s+12)/(s+1),(s+1)/(s+2),1};				%							<9>
ww=subs(Y2Ub,{G1,G2,G3,G4,H1,H2,H3},Sblock);%	<10>
Y2Uc=simplify(ww);	
[NN,DD]=numden(Y2Uc);			%
NN=expand(NN);					%
disp('参数具体化的传递函数 Y2Uc 为')
pretty(NN/DD)  








