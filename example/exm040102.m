%exm040102 
figure
d=pi/100;
t=0:d:2*pi;
x=sin(t);
dt=5*eps;						%
x_eps=sin(t+dt);
dxdt_eps=(x_eps-x)/dt;		%
plot(t,x,'LineWidth',5)
hold on  
plot(t,dxdt_eps)
hold off
legend('x(t)','dx/dt')
xlabel('t')  

figure
x_d=sin(t+d);
dxdt_d=(x_d-x)/d;			%
plot(t,x,'LineWidth',5)
hold on
plot(t,dxdt_d)
hold off
legend('x(t)','dx/dt')
xlabel('t')      








