%exm020601.m
clear all				% 
a=sym(1)/3			% 
DefPrec=digits		% 								<3>
b=vpa(a)				% 				<4>

whos a b				%   

isAlways(a==b)		% 	<6>  
S21=a-b				% <7>
isAlways(S21==0)		% 
S22=b^2				% 
isAlways(S22==a^2)	% 		<10>  

S31=cos(a)-cos(b)	% 			<11>
isAlways(S31==0)		% 	<12>
S32=cos(b)/cos(a)	% 					<13>
S33=vpa(S32)			% 
isAlways(S32==sym(1))	% 			<15>  

digits(48)			% 			<16>
S41=vpa(a,5)			% 				<17>
S42=vpa(a)			% 				<18>  

S51=abs(a-S41)	 	% 
S52=abs(a-S42)		% 	<20>
isAlways(a==S42)		% 	<21>
S53=abs(a-b)			% 		<22>




