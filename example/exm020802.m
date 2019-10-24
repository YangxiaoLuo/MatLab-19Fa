%exm020802
clear all
syms t a s
gt1=heaviside(t-a);					% 
Gs11=laplace(gt1,t,s)				% 	<4>  

assume(a>0)							% 				<5>
Gs12= laplace(gt1,t,s)				% 						<6>  

gt1i=ilaplace(Gs12,s,t)				% 				<7>  

syms x b n
assume(n>0)
g1(t)=dirac(t);						% 
g2(x)=symfun(1,x);					% 					<10>
g3(t)=exp(-a*t)*sin(b*t);			% 			<11>
g4(x)=x^n;							% 			<12>
gt2=[g1(t),g3(t);g2(x),g4(x)]		% 		<13>

tx=[t,t;x,x]							% 		<14>
Gs2=laplace(gt2,tx,s)				% 	<15>  

gt2i=ilaplace(Gs2,s,tx)												%	<16>


