%exm050103 

figure
N=9;								%
t=0:2*pi/N:2*pi;					%
x=sin(t);y=cos(t);				%
tt=reshape(t,2,(N+1)/2);		%
tt=flipud(tt);					%
tt=tt(:);							%
xx=sin(tt);yy=cos(tt);
subplot(1,2,1),plot(x,y)		%						<8>
title('(1) ��������ͼ��'),axis equal off,shg		
subplot(1,2,2),plot(xx,yy)		%						<10>
title('(2) ����������ͼ��'),axis equal off,shg  



