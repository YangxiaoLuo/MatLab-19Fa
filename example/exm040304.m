%exm040304 

rng default				%							<1>
GRS=rand(1,25)			%			<2>

rng default				%							<3>
r1=randn(1,5)				%			<4>
r2=rand(1,5)				%													<5>
r3=randi([-3,2],1,5)	%  	<6>
r4=exprnd(0.4, 1,5)		%					<7>
st=rng;					%							<8>
r5=rand(1,5)				%													<9>  

rng(st)					%				  <10>
rr5=rand(1,5)				%					     <11>



