%exm040109 

tspan=[0,30];				%
y0=[1;0];					%
[tt,yy]=ode45(@DyDt,tspan,y0);									%<3>
figure
plot(tt,yy(:,1),'LineWidth',1)
grid on
xlabel('t'),ylabel('x(t)')
title('����΢�ַ��̳�ֵ����Ľ�')  

figure
plot(yy(:,1),yy(:,2),'LineWidth',1)	%
grid on
xlabel('λ��'),ylabel('�ٶ�')
title('����΢�ַ��̵���켣')  









