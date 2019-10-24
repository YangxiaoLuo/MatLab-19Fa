%exm020901
clear all
syms x(t) y(t)				% 	<2>
eq11= diff(x,t)-y;			% 	<3>
eq12= diff(y,t)==-x;		% 			<4>
cond= x(0)==sym(0.5);		% 						<5>
S1=dsolve(eq11,eq12,cond)	% 		<6>
								% 
disp('  ')
disp('微分方程组的解 S1')
disp([blanks(10),'x(t)',blanks(18),'y(t)'])
disp([S1.x,S1.y])  

[X31,Y31]=dsolve(eq11,eq12,cond)	% 		<12>  

% [Y32,X32]=dsolve(eq21,eq22,'x(0)=0.5')	% 		<13>  

[Y32,X32]=dsolve(eq11,eq12,cond)	% 		<13>  


