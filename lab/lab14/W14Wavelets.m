%% 真实信号与带噪信号的生成
close all
x = 0:pi/50:2*pi;
l = length(x);
f = sin(x);
rng default
y = f + randn(1,l)*0.1;
plot(x,f,x,y,'LineWidth',1.5);
legend('f(x)','y(x)','Location','best');

%% 多贝西二阶正交小波的显示
[c0,d0]=dwt(f,'db2');
[cy,dy]=dwt(y,'db2');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('真实信号的小波低频系数','含噪信号的小波低频系数','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('真实信号的小波高频系数','含噪信号的小波高频系数','Location','best');
hold off

%% 哈尔正交小波显示
[c0,d0]=dwt(f,'Haar');
[cy,dy]=dwt(y,'Haar');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('真实信号的小波低频系数','含噪信号的小波低频系数','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('真实信号的小波高频系数','含噪信号的小波高频系数','Location','best');
hold off

%% 多贝西二阶正交小波的平稳小波变换显示
f = f(1:100);y = y(1:100); 
%平稳小波变换要求信号长度为2^level的倍数，level为分解层数
[c0,d0]=swt(f,1,'db2');
[cy,dy]=swt(y,1,'db2');

figure,hold on
plot(c0,'LineWidth',2);
plot(cy,'r:','LineWidth',2);
legend('真实信号的小波低频系数','含噪信号的小波低频系数','Location','best');
hold off
figure;

clf,hold on
plot(d0,'LineWidth',2);
plot(dy,'r:','LineWidth',2);
legend('真实信号的小波高频系数','含噪信号的小波高频系数','Location','best');
hold off