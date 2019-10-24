%exm040104 
figure
clear
d=pi/8;					%
t=0:d:pi/2;				%
y=0.2+sin(t);				%
s=sum(y);					%
s_sa=d*s;					%			<6>
s_ta=d*trapz(y);			%				<7>
disp(['sum求得积分',blanks(3),'trapz求得积分'])
disp([s_sa, s_ta])
t2=[t,t(end)+d];					%
y2=[y,nan];						%
hs=stairs(t2,y2,':k','LineWidth',3);	%  <12>
hold on
ht=plot(t,y,'r','LineWidth',3);		% <14>
stem(t,y)							%
legend([hs,ht],'sum','trapz','location','best')				%  <16>
axis([0,pi/2+d,0,1.5])			%
hold off
shg 











