%% ����һ������ĶԳ��ҶԽ�ԪΪ0����
n = 1000;
A = rand(n);
A = (A+A')/2;
Diagind = 1:n+1:n^2;
A(Diagind) = 0.0;
%% �����һ����Ϊ���ǵĲ��յ�
tic;
IndNotVisited = 2:n;     %��¼��δ�ȽϺͷ��ʵĵ�
Dist = A(1,:);
for i = 2:n
    [minv,minsp] = min(Dist(IndNotVisited));        %������δȷ��·�����ȵĵ���бȽϣ����Ч��
    minp = IndNotVisited(minsp);                    %minspΪ�Ӽ��е�λ�ã�������n�����е�λ�ã���Ҫ�ٵ���һ��
    Dist(IndNotVisited) = min(Dist(IndNotVisited),minv+A(minp,IndNotVisited));%�Ƚ�ԭʼ�����������̾�����µĺ��ĸ���С��������
    IndNotVisited(minsp)=[];                        %���ոո��¾���ĵ�ȥ��
end
toc;