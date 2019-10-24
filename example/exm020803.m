%exm020803
clear all
syms n m z T					
gn1(n)=sin(n*T);					% 
Gz1=ztrans(gn1,n,z);			% 
disp('Gz1 =')
pretty(Gz1)						%   

gn1i=iztrans(Gz1,z,n)			%   

g1=kroneckerDelta(n);			% 							<7>
g2=heaviside(m);					% 					<8>
g3=1;								% 						<9>
gn2=[g1,g2,g3] 					% 				<10>
Gz2=ztrans(gn2,[n,m,m],z)		% 				<11>  

gn2i=iztrans(Gz2,z,[n,m,m])	%   

gn2i=rewrite(gn2i,'heaviside')									%	<13>







