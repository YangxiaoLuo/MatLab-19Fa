%% ����Ѽ�ӵ�����
clear;
rng default;
num_d = 4;       %Ѽ�ӵ�����
num_sample = 1e6;%Ͷ�������
% r = rand(num_sample,num_d); %��ʵ�뾶���Ǿ��ȷֲ��������ڽ����û��Ӱ��,�ɺ���֮
theta = rand(num_sample,num_d)*2*pi; %�ؼ����ڶԽǶȵ�ģ�⣬ÿ��4�д�����ֻѼ�ӵĽǶ�
%% ��������Ѽ�ӵ����Ƕ�
theta_s = sort(theta,2);%��ÿһ�а���С����Ĵ�������
theta_diff = theta_s(:,2:num_d)-theta_s(:,1:num_d-1);
%�ڶ��м���һ�У������м��ڶ��У������м�������
theta_diff = [theta_diff,theta_s(:,1)+2*pi-theta_s(:,num_d)];
%����һ��+2*pi��������Ҳ����ȥ
%% ����Ѽ������һ����Բ�ڣ����ҽ���������һ�����ڽǶȴ��ڵ���pi
criteria = theta_diff>=pi;    %���ڵ���pi�ĽǶȻ���Ϊ1������Ϊ0
criteria_s = sum(criteria,2); %ÿ����ͣ����������������һ��1������Ϊ0
Na = sum(criteria_s>=1);       %����������Ѽ�Ӽ���
prob = Na/num_sample
gt = num_d*(1/2)^(num_d-1);
err = abs(prob-gt)



