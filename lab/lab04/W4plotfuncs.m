%% W3��ҵQ3��ʹ��ezplot���ܻ���ֶ��ߵĴ������ǳ�����ƵĲ���
%% ���ź�����ͼ��
close all, clear all
syms x y z
ezplot('sin(x)*exp(x)'); %�Զ����������᷶Χ
figure;
fplot(sin(x)*exp(x));   %�����᷶Χ�̶���[-5,5],��title

%% ����������ͼ��
clear all
figure;
f = @(x) sin(x).*exp(x);
ezplot(f);
figure;
fplot(f);

