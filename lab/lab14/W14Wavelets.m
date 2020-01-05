%% ��ʵ�ź�������źŵ�����
close all
x = 0:pi/50:2*pi;
l = length(x);
f = sin(x);
rng default
y = f + randn(1,l)*0.1;
plot(x,f,x,y,'LineWidth',1.5);
legend('f(x)','y(x)','Location','best');

%% �౴����������С������ʾ
[c0,d0]=dwt(f,'db2');
[cy,dy]=dwt(y,'db2');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off

%% ��������С����ʾ
[c0,d0]=dwt(f,'Haar');
[cy,dy]=dwt(y,'Haar');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off

%% �౴����������С����ƽ��С���任��ʾ
f = f(1:100);y = y(1:100); 
%ƽ��С���任Ҫ���źų���Ϊ2^level�ı�����levelΪ�ֽ����
[c0,d0]=swt(f,1,'db2');
[cy,dy]=swt(y,1,'db2');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('��ʵ�źŵ�С����Ƶϵ��','�����źŵ�С����Ƶϵ��','Location','best');
hold off