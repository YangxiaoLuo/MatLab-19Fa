%exm030301 



clear
t=-3*pi:pi/10:3*pi;		%
st=sin(t);					%				<3>
y=st./t;					%				<4>
Lt=(t==0);					%			<5>
tt=t+Lt.*realmin;			%							<6>
yy=sin(tt)./tt;			%								<7>
subplot(1,2,1),plot(t,y,'LineWidth',2),axis([-9,9,-0.5,1.2]),
xlabel('t'),ylabel('y'),title('残缺图形')
subplot(1,2,2),plot(tt,yy,'LineWidth',2),axis([-9,9,-0.5,1.2])
xlabel('tt'),ylabel('yy'),title('正确图形')  





