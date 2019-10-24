%exm050207 
figure
t=2*pi*(0:20)/20;
y=cos(t).*exp(-0.4*t);				%
stem(t,y,'g','Color','k');			%
hold on
stairs(t,y,':r','LineWidth',3)	%
hold off
legend('\fontsize{14}\it stem','\fontsize{14}\it stairs')
axis tight							% 
xlabel('t'),ylabel('y')
