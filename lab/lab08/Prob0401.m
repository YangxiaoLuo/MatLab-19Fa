clear
load prob_data401.mat
y = smooth(y);
dt=t(2)-t(1);
% yc=diff(y)/dt; %ע��yc �ĳ��Ƚ���y ��1
% plot(t,y,'b',t(2:end),yc,'r')
% grid on
% dt=t(2)-t(1);
yc=gradient(y)/dt;
plot(t,y,'b',t,yc,'r')
grid on