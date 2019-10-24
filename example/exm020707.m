%exm020707
clear all
syms a b x
f1=x*log(exp(a*x))
F11=int(f1,x)				%					<4>
F12=int(f1,x,'IgnoreAnalyticConstraints',true)					%	<5>

isAlways(F11==F12)		% 	<7>  

f2=1/x^b
F21=int(f2)				% 	<9>
F22=int(f2,'IgnoreSpecialCases',true)							%	<10>

f5=[a*x,b*x^2;1/x,sin(x)];
F5= int(f5);				% 		<13>
disp(' ')
disp('The integral of f5 is')
pretty(F5)  







