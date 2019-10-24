%exm020708
clear all
syms x
f1=log(1+sqrt(x));
F1=int(f1,x,[0,1])		% 				<4>  

syms m a t1 t2 
assume(a>0),assume(m,'real')		% 
f2(x)=exp(-(x-m)^2/(2*a^2))/(a*sqrt(sym(2)*pi));	
			% 
F21=int(f2,x)				% 				<9>
F22=int(f2,x,[t1,t2])	% 					<10>

P21=F21(Inf)-F21(-Inf)				% 	<11>
P22=subs(F22,{t1,t2},{-Inf,Inf})	% 	<12>

syms e
f3=1/sqrt(abs(x));		% 		<16>
F3_0L=limit(int(f3,x,[-1,e]),e,0,'left')	%	<17>
F3_0R=limit(int(f3,x,[e,2]),e,0,'right')	%	<18>
F3=int(f3,x,[-1,2])								% 			<19>  

f4(x)=1/x;				% 
F41_0L=int(f4,x,[-1,0])	% 	<21>
F41_0R=int(f4,x,[0,2])	% 	<22>
F41=int(f4,x,[-1,2])	% 		<23>

F42=int(f4,x,[-1,2],'PrincipalValue',true)						%	<24>

f5=sin(x)/(x^2+x+1);
F51=int(f5,[0,5])		% 			<26>
F52=vpa(int(f5,[0,5]))	% 			<27>  

