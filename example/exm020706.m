%exm020706
clear all
syms s					% 
F=exp(-2*s)/s			% 
P1=pade(F)			% 
P2=pade(F,s,'Order',[4,5],'OrderMode','relative')

pretty(P1)			%   

syms t					% 
f=ilaplace(F,s,t)	%
p1=ilaplace(P1,s,t)	% 
p2=simplify(ilaplace(vpa(P2),s,t));								%	<11>
						% 
Nc=size(char(p2),2);% 				<13>
disp(' ')
disp(['表达计算结果p2的字符很多，共有 Nc= ',int2str(Nc),'个字符']) 

fplot(f,[0,5],'Color','r','LineWidth',3);		% 
hold on
fplot(p1,[0,5],'Color','b','LineStyle','--');	
								% 
fplot(p2,[0,5],'Color','g','LineStyle',':','LineWidth',2);
								% 
hold off
axis([0,5,-0.7,1.2])
grid on
legend('exp(x)/sqrt(x)','3阶近似','4/5阶近似','Location','Best')
title('时滞单位阶跃及其帕德近似展开')
xlabel('t'),ylabel('y')  






