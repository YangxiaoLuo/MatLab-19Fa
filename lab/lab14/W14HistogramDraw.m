rng default %Ϊ��������ɱ����ֶ��裬���Ǳ�Ҫ��
mu=4;sigma=2; %�����ֵ�ͱ�׼��
a=normrnd(mu,sigma,10000,1); %������̬�ֲ��������a
%a=4+2*randn(10000,1);			%��һ�ֵȼ۵�������̬�ֲ��������ķ���
subplot(2,1,1),histogram(a) 
%����a��Ƶ��ͳ��ֱ��ͼ,histogram��ɫ���hist�ᷢ���仯
subplot(2,1,2),histfit(a) 		%����������ߵ�Ƶ��ͳ��ֱ��ͼ����

figure;
subplot(2,1,1),hist(a,50) %hist��ͼ��histfitĬ�ϵ�ֱ��ͼ��ɫ��һ����
subplot(2,1,2),histfit(a,50)
