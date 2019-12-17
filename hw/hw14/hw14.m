%% Q1
N1 = [3 0 1 0];
N2 = [1 0 0 0.5];
D1 = [1 2 -2];
D2 = [5 2 0 1];
N = conv(N1,N2);
D = conv(D1,D2);
[Q, R] = deconv(N,D);
disp(poly2str(Q,'x'));
disp(poly2str(R,'x'));
N2 = conv(Q,D)+R;
err = norm(abs(N-N2))
%% Q2
s = 1e-4;
t = -2:s:2;
sigma = 5:5:25;
[Sigma, T] = meshgrid(sigma, t);
X = (Sigma/sqrt(pi)).*exp(-(Sigma.^2).*(T.^2));
Y = t';Y(abs(t)<=1)=1;Y(abs(t)>1)=0;
for k = 1:5
    Z(:,k) = conv(X(:,k),Y)*s;
end
tz = -4:s:4;
plot(tz, Z);
%% Q3
load W15Q3.mat
total = score(:,1)*0.4+score(:,2)*0.6;
scatter(score(:,1),score(:,2),[],total);
xlabel('homework');
ylabel('final');
title('score');