%exm040105 
figure
x=linspace(0.01,1.2,50);			%
g1=x.^(-0.2);	g2=x.^5;				%
plot(x,g1,'-r.',x,g2,'-b*')
axis([0,1.2,0,3])
legend('g_1(x)=1/x^{0.2}','g_2(x)=x^5','Location','North')
title('x位于[0,1]间的g_1(x)曲线与g_2(x)曲线所夹的区域')
xlabel('x')

format long
G1=@(x)x.^-0.2;			%	<8>
Q1=integral(G1,0,1)		%			<9>
G2=@(x)x.^5;				%						<10>
Q2=integral(G2,0,1)		%		<11>
S12=Q1-Q2 				%					<12> 

G=@(x)x.^[-0.2;5];						%		<13>
Q=integral(G,0,1,'ArrayValued',true)	%			<14>
S=[1,-1]*Q														%		<15>  

syms t										%
Gsym=vpa(int(t.^[-0.2;5],0,1));		%
Ssym=Gsym(1)-Gsym(2)					%<17>  







