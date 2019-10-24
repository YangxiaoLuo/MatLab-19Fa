%% Ch4_Q1
d = 0.001;
t = -1:d:2;
y = abs(t).^(1/3);
s = sum(y);
s_sa = s*d;
plot(t, y)
%% Ch4_Q2
d = 0.001;
t = d:d:10; % The first point should be thrown out
f = sin(t)./t;
y1 = cumtrapz(t,f);
plot(t, y1)
F = @(x)sin(x)./x;
y2 = zeros(1,10/d);
for i = 1:10/d
    y2(i) = integral(F, 0, t(i));
end
plot(t, y2)
y1(t==4.5)
%% Ex3
load prob_data401.mat;
y = smooth(y);
dt = t(2)-t(1);
diff = gradient(y);
dy = diff/dt;
plot(t, dy)
%% Ex4
x = zeros(2, 4e6);
for i = 1:4e6
    x1 = 1; x2 = 1;
    while(x1^2+x2^2>1)
       [x1,x2] = rand(2,1); 
    end
    x(:,i) = [x1;x2];
end