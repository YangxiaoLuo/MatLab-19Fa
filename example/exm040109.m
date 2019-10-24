%exm040109 

tspan=[0,30];				%
y0=[1;0];					%
[tt,yy]=ode45(@DyDt,tspan,y0);									%<3>
figure
plot(tt,yy(:,1),'LineWidth',1)
grid on
xlabel('t'),ylabel('x(t)')
title('二阶微分方程初值问题的解')  

figure
plot(yy(:,1),yy(:,2),'LineWidth',1)	%
grid on
xlabel('位移'),ylabel('速度')
title('二阶微分方程的相轨迹')  









