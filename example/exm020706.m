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
disp(['��������p2���ַ��ܶ࣬���� Nc= ',int2str(Nc),'���ַ�']) 

fplot(f,[0,5],'Color','r','LineWidth',3);		% 
hold on
fplot(p1,[0,5],'Color','b','LineStyle','--');	
								% 
fplot(p2,[0,5],'Color','g','LineStyle',':','LineWidth',2);
								% 
hold off
axis([0,5,-0.7,1.2])
grid on
legend('exp(x)/sqrt(x)','3�׽���','4/5�׽���','Location','Best')
title('ʱ�͵�λ��Ծ�������½���չ��')
xlabel('t'),ylabel('y')  






