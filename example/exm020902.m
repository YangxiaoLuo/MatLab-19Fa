%exm020902
clear all
syms y(x)									% 				<2>
Dy=diff(y,x);								% 	<3>
eq1= x*diff(y,x,2)-3*diff(y,x)==x^2;	% 	<4>
cond=[y(1)==0,Dy(1)==sym(-0.75)];		% 		<5>
y1=dsolve(eq1,cond)  

D2y=diff(y,x,2);						% 		<7>
eq2=x*D2y-3*Dy==x^2;				% 		<8>
y2=dsolve(eq2,cond)					% 		<9>  

fplot(y1,[-1,6],'LineWidth',2);									%	<10>
									% 
hold on							% 
plot(1,0,'r.','MarkerSize',25)% 
hd=quiver(1,0,1,-.75,'Color','r');								%	<14>
						% 
hd. MaxHeadSize=1;	% 								<16>
hold off				% 
grid on				% 
text(1,1,{'y(1)= 0';'y^{''}(1)= -0.75'})	% <19>
ylabel('y')			% 
title(['y(x) = ',char(y1)])	%   







