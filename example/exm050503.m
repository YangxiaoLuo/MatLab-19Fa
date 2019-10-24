%exm050503 
clear,close					% ����ڴ棬�رմ�ǰͼ�δ�
ld=6;							% ���������߶γ���
Nt=150;						% ���·���ĵ���
t=(0:Nt)/Nt*2*pi;			% ���ڲ�������
nt=length(t);
figure							% ����ͼ�δ�
x=sin(2*t);					% x����������ʽ
y=cos(2*t).*cos(3*t);		% y����������ʽ
z=sin(t).*cos(5*t);			% z����������ʽ'LineWidth',0.5,
plot3(x,y,z,'Color',[0.9,0.3,0.9])% ���Ʒ�ɫ����
view(-133,27)					% ���ù۲��ӽ�
xticks([]),yticks([]),zticks([])
set(gca,'LineWidth',2,'Box','on','BoxStyle','full',...
		'XColor','y','YColor','y','ZColor','y',...
		'Color',get(gcf,'Color'))				% ����������ϵ

w=(1:ld)';
dd=[w,w+Nt/2];									% ˫���߶���ʼλ������	<17>
hd=line(x(dd),y(dd),z(dd),'LineWidth',4);	% ����˫���߶�			<18>
hd(1).Color='r';hd(2).Color='b';				% ���߶η���Ϊ�졢����	<19>

kc=4;													% �Ʒ��·���Ĵ���
for jj=1:kc
for ii=1:nt
	tt=rem(dd+ii,nt);								% ��������			<23>
	if any(tt(:)==0);								% ��������������0	<24>
		tt=tt+Nt*(tt==0);
	end;																%	<26>
	set(hd(1),'XData',x(tt(:,1)),'YData',...
		y(tt(:,1)),'ZData',z(tt(:,1)))			% �ı���߶�����
	set(hd(2),'XData',x(tt(:,2)),'YData',...
		y(tt(:,2)),'ZData',z(tt(:,2)))			% �ı����߶�����
	pause(0.1)										% �����ٶ�
end
end
