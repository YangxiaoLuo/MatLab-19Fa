%exm070102m     ����7.1-2ʹ�õ�M�ű��ļ���ȥ����Simulinkģ���ļ�exm070102.slx���м��㡣

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
title('exm070102����ģ�͵ĵ�λ��Ծ��Ӧ')
xlabel('t'),ylabel('y')  

