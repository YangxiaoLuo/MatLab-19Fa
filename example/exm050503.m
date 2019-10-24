%exm050503 
clear,close					% 清空内存，关闭此前图形窗
ld=6;							% 决定动线线段长度
Nt=150;						% 封闭路径的点数
t=(0:Nt)/Nt*2*pi;			% 周期参数数组
nt=length(t);
figure							% 开启图形窗
x=sin(2*t);					% x坐标参数表达式
y=cos(2*t).*cos(3*t);		% y坐标参数表达式
z=sin(t).*cos(5*t);			% z坐标参数表达式'LineWidth',0.5,
plot3(x,y,z,'Color',[0.9,0.3,0.9])% 绘制粉色迹线
view(-133,27)					% 设置观察视角
xticks([]),yticks([]),zticks([])
set(gca,'LineWidth',2,'Box','on','BoxStyle','full',...
		'XColor','y','YColor','y','ZColor','y',...
		'Color',get(gcf,'Color'))				% 设置坐标轴系

w=(1:ld)';
dd=[w,w+Nt/2];									% 双动线段起始位置数组	<17>
hd=line(x(dd),y(dd),z(dd),'LineWidth',4);	% 绘制双动线段			<18>
hd(1).Color='r';hd(2).Color='b';				% 两线段分设为红、蓝线	<19>

kc=4;													% 绕封闭路径的次数
for jj=1:kc
for ii=1:nt
	tt=rem(dd+ii,nt);								% 求余运算			<23>
	if any(tt(:)==0);								% 避免整除的余数0	<24>
		tt=tt+Nt*(tt==0);
	end;																%	<26>
	set(hd(1),'XData',x(tt(:,1)),'YData',...
		y(tt(:,1)),'ZData',z(tt(:,1)))			% 改变红线段坐标
	set(hd(2),'XData',x(tt(:,2)),'YData',...
		y(tt(:,2)),'ZData',z(tt(:,2)))			% 改变蓝线段坐标
	pause(0.1)										% 控制速度
end
end
