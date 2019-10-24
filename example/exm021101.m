%exm021101 
clear,figure
syms x
f1=exp(-x)*sin(x);					%				<3>
Lh1=fplot(f1,'r:','LineWidth',8)	%		<4>

f2(x)=exp(-x)*sin(x);			% 					<5>
hold on							% 			<6>
fplot(f2,'b-','LineWidth',4)	% 		<7>

syms t
u=t;v=exp(-t)*sin(t);			% 				<9>
fplot(u,v,'y-','LineWidth',1)	% 		<10>
hold off							% 						<11>

legend('���ű��ʽ f1','���ź��� f2(x)','�������ʽ  u��v')% <12>
title('����f �������ֲ�ͬ��ʽ����')		% 					<13>
xlabel('x'),ylabel('y')					%					<14>












