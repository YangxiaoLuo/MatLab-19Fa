%exm050102 

close all								%
t1=(0:11)/11*pi;						%	
t2=(0:400)/400*pi;					%
t3=(0:50)/50*pi;						%
y1=sin(t1).*sin(9*t1);				%
y2=sin(t2).*sin(9*t2);
y3=sin(t3).*sin(9*t3);
subplot(2,2,1),plot(t1,y1,'r.')			%					<8>
axis([0,pi,-1,1]),title('(1)����ٵ���ɢͼ��')
subplot(2,2,2),plot(t1,y1,t1,y1,'r.')	%		<10>
axis([0,pi,-1,1]),Th=title('(2)����ٵ�����ͼ��');			%		<11>
subplot(2,2,3),plot(t2,y2,'r.')			%					<12>
axis([0,pi,-1,1]),title('(3)���ܼ�����ɢͼ��')
subplot(2,2,4),plot(t3,y3)					%				<14>
axis([0,pi,-1,1]),title('(4)���㹻������ͼ��')  








