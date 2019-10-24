%exm040103 

figure
d=pi/100;						%
t=0:d:2*pi;
x=sin(t);
dxdt_diff=diff(x)/d;		%
dxdt_grad=gradient(x)/d;	%
subplot(1,2,1)
plot(t,x,'b')
hold on
plot(t,dxdt_grad,'m','LineWidth',8)
plot(t(1:end-1),dxdt_diff,'.k','MarkerSize',8)
axis([0,2*pi,-1.1,1.1])
title('[0, 2\pi]')
legend('x(t)','dxdt_{grad}','dxdt_{diff}','Location','North')
xlabel('t'),box off
hold off
subplot(1,2,2)
kk=(length(t)-10):length(t);
hold on
plot(t(kk),dxdt_grad(kk),'om','MarkerSize',8)
plot(t(kk-1),dxdt_diff(kk-1),'.k','MarkerSize',8)
title('[end-10, end]')
legend('dxdt_{grad}','dxdt_{diff}','Location','SouthEast')
xlabel('t'),box off
hold off  



