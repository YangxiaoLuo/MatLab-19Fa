%exm020503.m clear all
syms a b c d x y t
f1=a*sin(x)+b						% 
s11=subs(f1,a,c)					% 
s12=subs(f1,sin(x),log(y))		%   
s21=subs(f1,[a,sin(x)],[d*exp(y),cos(y)])	% 
s22=subs(f1,{a,sin(x)},{d*exp(y),cos(y)})	%   
f3(x)= sin(x+c)+d==x							% 
s31=subs(f3,[c,d],[sym(pi/3),1])				% 		<9>
s32=subs(f3,{sin(x+c),d},{exp(-x),2})		%		<10>  
f3(x)= sin(x+c)+d==x							% 
s31=subs(f3,[c,d],[sym(pi/3),1])				% 		<9>
s32=subs(f3,{sin(x+c),d},{exp(-x),2})		%		<10>  
f4(x,y)=x+y					% 
s41=subs(f4,[x,y],[a,b])	% 				<12>
s42(a,y)=subs(f4,x,sin(a))	% 	<13>  
f5=[a,b,c/a,d;d,c,b,a*x]		% 
s51=subs(f5,a,sym(pi))			% 		<15>
s52=subs(f5,f5(1,1),sym(pi))% <16>
s53=subs(f5,f5(1,3),sym(7)) % <17>
f5(1,1)=sym(pi)				% 			<18>  

f6=cos(a*t)*exp(-b*t)				% �������ű��ʽ
tt=0:0.01:2;							% ����˫��������
s61=subs(f6,{a,b,t},{6,1.2,tt});	% f6�з��ű�����˫������ֵ�û�		<21>
ctt=class(tt)
cs61=class(s61)						% ����s61����֪���Ƿ��Ŷ���
plot(tt,s61,'LineWidth',3)			% �ɽ���˫���Ⱥͷ������ݻ�ͼ2.5-1	<24>
xlabel('tt'),ylabel('s61') 		% ��ע���������� 








