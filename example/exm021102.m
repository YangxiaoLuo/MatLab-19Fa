%exm021102 
clear
syms s t 
x(s,t)=cos(s)*cos(t);			
y(s,t)=cos(s)*sin(t);			
z(s,t)=sin(s);					

figure
Sh=fsurf(x,y,z,[0,pi/2,-pi/2,pi])			% 				<7>
xlabel('x'),ylabel('y'),zlabel('z')
str=['x(s,t)=',char(x),', y(s,t)=',char(y),', z(s,t)=',char(z)]%<8>
												% 			<9>
title(str)

Sh.EdgeColor='none';				% 
camlight								% 	<12>





