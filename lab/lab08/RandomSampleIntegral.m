%% �����������
rng default
x = rand(1,1000);
x = [x,0,1];
y = x.^2 + x;
%% �����ݸ���x�Ĵ�С��������
[xs ind] = sort(x);
ys = y(ind);
GT = 5/6;
%% ʹ��trapz��ɵ����ι�ʽ�ķ���
S1 = trapz(xs,ys);
err1 = abs(S1 - GT)
%% ����ʵ�ֵ����ι�ʽ����(������Ҿ�����ͬѧ���Լ�˼����ɣ�
l = xs(2:end) - xs(1:end-1);
f = (ys(2:end) + ys(1:end-1))/2;
S2 = sum(l.*f);
err2 = abs(S2 - GT)
