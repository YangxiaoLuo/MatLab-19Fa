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

legend('符号表达式 f1','符号函数 f2(x)','参数表达式  u，v')% <12>
title('输入f 可用三种不同形式编码')		% 					<13>
xlabel('x'),ylabel('y')					%					<14>












