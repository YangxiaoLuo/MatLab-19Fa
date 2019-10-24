%exm020705
clear
syms x k
f=sin(x)/x;				% 									<3>
F(5)=f;for ii=4:-1:1;F(ii)=diff(F(ii+1));end	% 		<4>
fd=limit(F,x,0)			% 		<5>
ctaylor=fd./subs(factorial(k),[4:-1:0])			% 		<6>  

S2=taylor(f)				%	<7>  

pretty(S2)				%   

S3=taylor(f,x,0,'Order',8)		% 	<9>

fplot(f,[-4,4],'LineWidth',3,'Color','r');						%	<10>
								%
hold on						% 
fplot(S2,[-4,4],'LineStyle','--','Color','b');					%	<13>
								%
HS=fplot(S3,[-4,4]);		% 						<15>
HS.LineStyle=':';			% 
HS.LineWidth=2;				% 
HS.Color='g';					%									<18>
hold off						% 
grid on						% 
legend('sin(x)/x','6½×½üËÆ','8½×½üËÆ')	% 
xlabel('x')
title('sin(x)/x¼°Æä6½×¡¢8½×Ì©ÀÕ½üËÆ')		%   





