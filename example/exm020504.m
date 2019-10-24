%exm020504.m
clear all						%
syms a b c d
A=[a b;b d]					% 
[V,D]=eig(A)					%  

VD=simplify([V;D]);			% 
[NVD1,sigma]= subexpr(VD)	%   

syms w							% 							<7>
[NVD2,w]=subexpr(VD,w)		% 				<8>  

pretty(VD)					% 						<9>  

syms Q
NVD3=subs(VD,(a^2-2*a*d+4*b^2+d^2)^(1/2),Q)					%	<11>









