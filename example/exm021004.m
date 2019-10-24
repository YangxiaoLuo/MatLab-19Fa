%exm021004 
clear all
syms x
eq=  x^3-3*x-6==0;	% 
S11=solve(eq,x)		% 	<4>

S2=vpa(S11)			% 	<5>  

S3=solve(eq,x,'MaxDegree',3);	% 			<6>
pretty(S3)							% 

S41=solve(eq,x,'PrincipalValue',true,'MaxDegree',3)			%	<8>

S42=solve(eq,x,'Real',true,'MaxDegree',3)						%	<10>

syms y
eq1=sin(x)-cos(y)^2;			%						<13>
eq2=x/2-y;						% 						<14>
S5=solve([eq1,eq2],[x,y])		% 					<15>

S5.x								% 							<16>

S5.y								% 					<17>