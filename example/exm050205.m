%exm050205 

clf;											% 			<1>
t=0:pi/50:2*pi;y=sin(t);
plot(t,y,pi/2,1,'r.','MarkerSize',16)
axis([0,2*pi,-1.2,1.2])						% 
text(1.1*pi/2,1,'\fontsize{14}\fontname{隶书}极大值');	% <5>
xv=0:pi/4:2*pi;								% 	<6>
xs={'0','\pi/4','\pi/2','3\pi/4','\pi',...
	'5\pi/4','3\pi/2','7\pi/4','2\pi'};	%			<8>
xticks(xv)									% 
xticklabels(xs)								% 
xtickangle(-30)								% 
grid on										% 			<12>
grid minor									%				<13>
title('\fontsize{12}\ity=sin(t)')			% 	<14>
xlabel('t')
ylabel('y')  



