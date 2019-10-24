%exm050202 

figure
t=(0:pi/50:2*pi)';		% 		<2>
dd=[1,0.95];				% 								<3>
xx=sin(t)*dd;				% 								<4>
yy1=cos(t)*dd;			% 
yy2=sin(2*t)*dd;			% 			<6>
plot(xx,yy1,'--b',xx,yy2,'-r.')	% 			<7>
grid on								% 
axis square							% 
xlabel('x'),ylabel('y')  




