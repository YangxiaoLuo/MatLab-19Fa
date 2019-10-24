%exm070102m     供例7.1-2使用的M脚本文件，去调用Simulink模型文件exm070102.slx进行计算。

[A,B,C,D]=linmod2('exm070102');		%
STF=tf(minreal(ss(A,B,C,D)))			% 

format short g
[Num,Den]=tfdata(STF);			%
Num{:},Den{:}						%  

t0=(0:0.1:5)';					%
[y,t]=step(STF,t0);				%
plot(t,y,'r','LineWidth',3)
grid on,grid minor
axis([0,5,0,0.4])
title('exm070102仿真模型的单位阶跃响应')
xlabel('t'),ylabel('y')  

