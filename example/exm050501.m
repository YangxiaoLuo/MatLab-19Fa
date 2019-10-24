%exm050501 

clear,figure
% 
R0=1;											% 
[X,Y,Z]=sphere(30);
X=R0*X;Y=R0*Y;Z=R0*Z;						% 
Hs=surf(X,Y,Z);								% 
shading  flat	
colormap(flipud(autumn))					% 
view([8,20])									% 
camlight,camlight left						% 
set(gca,'Box','on','BoxStyle','full',...% 				<11>
	'Color',get(gcf,'Color'))				% 	<12>
grid off
daspect([1,1,1])								% 
ak=12;bk=9;									% 
x1=-2*bk*R0;x2=ak/2*R0;y1=-ak*R0;y2=ak*R0;z1=-ak/2*R0;z2=ak/2*R0;
axis([x1 x2 y1 y2 z1 z2])					% 
xlabel('x'),ylabel('y'),zlabel('z')
% 轨线计算和动态线图（参见图5.5-1）
a=ak*R0;b=bk*R0;								% 				<20>
T0=2*pi;										% 
T=5*T0;dt=pi/100;
t=[0:dt:T]';									% 
f=sqrt(a^2-b^2);								% 
th=12.5*pi/180;								% 
E=exp(-t/20);									% 
x=E.*(a*cos(t)-f);							% 	<27>
y=E.*(b*cos(th)*sin(t));					% 	<28>
z=E.*(b*sin(th)*sin(t));					% 	<29>
hold on										% 	
comet3(x,y,z,0.02);							% 		<31>
hold off
title('comet3命令绘制的三维轨线图')


