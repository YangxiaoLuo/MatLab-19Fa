%exm020709
clear all
syms r phi theta
r=theta;					% 
x=r*cos(theta);			% 
y=r*sin(theta);			% 
dL=sqrt(diff(x,theta)^2+diff(y,theta)^2);						%	<6>
							% 
L=vpa(int(dL,theta,[0,pi]))	% 	<8>

syms x y z
f2=x^2+y^2+z^2;
F2=int(int(int(f2,z,sqrt(x*y),x^2*y),y,sqrt(x),x^2),x,1,2)	%	<11>
VF2=vpa(F2)				% 			<12> 

f3=(2*z-1)/z/(z-1);		% 
ff3=simplify(subs(f3,z,r*exp(1i*phi))*1i*r*exp(1i*phi));		%	<14>
							% 
disp('原围线积分的被积函数  f3')
pretty(f3)
disp(' ')
disp('转换成幅角变量定积分后的被积函数  ff3')
pretty(ff3)  

F3=int(ff3,phi,[0,2*pi])		% 					<21>









