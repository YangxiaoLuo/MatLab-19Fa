%exm020703
clear
syms a t x g(x,t)			% 				<2>
f=[a,t*cos(x), g]			% 				<3>
fd11=diff(f)					% 		<4>
fd12=diff(f,t,2)				% 	<5>

fd21=diff(f,x,t)				%		<6> 

fd22=diff(diff(f,x),t)		% 						<7>  

fd31=jacobian(f,[x,t])		%		<8>
fd32=jacobian(f,[x;t]);		%			<9>
fd33=jacobian(f.',[x;t]);	% 			<10>  

isAlways((fd31==fd32)&(fd31==fd33))	% <11>  


