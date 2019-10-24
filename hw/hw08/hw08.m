%% Q1
F = @(x)exp(-abs(x)).*abs(sin(x));
a_in = integral(F, 5*pi, 10*pi, 'AbsTol', 1e-9);
d = pi/10;
t = 5*pi:d:10*pi;
y = exp(-abs(t)).*abs(sin(t));
a_t = trapz(t, y);
syms x
f = exp(-abs(x))*abs(sin(x));
a_s = vpa(int(f, 5*pi, 10*pi),16);
err_in = double(abs(a_s-sym(a_in)));
err_t = double(abs(a_s-sym(a_t)));
%% Q2
clear
sample = rand(2, 1e6);
in_cir_sample = (sample(1,:)-(1/2)).^2+(sample(2,:)-(1/2)).^2 < (1/4);
num = sum(in_cir_sample);
pi_appr = 4*num/1e6;
%% Q3
clear
d = 1e-5;
t = 0:1e-5:2;
f = log(1+t);
df_d = diff(f)/d;
df_g = gradient(f)/d;
err_d=abs(df_d(t==1)-(1/2));
err_g=abs(df_g(t==1)-(1/2));
%% Q4
% (2)
clear
syms x y
f = (x+y)/(1+x^2+y^2)^(3/2);
a = int(int(f,x,[0,1]),y,[0,1]);
a_sym = vpa(a);

N = 2000; d = 1/N;
x = d/2:d:1;
x_1 = repmat(x, N, 1);
x_2 = repmat(x.^2, N, 1);
f = (x_1+x_1')./(1+x_2+x_2').^(3/2);
a_r = sum(reshape(f,1,[]))*d*d;
err_1 = double(abs(a_sym-sym(a_r)));

t = 0:d/2:1;
M = length(t);
ind_x = ones(1, M);
ind_x(2:2:M) = 4;
ind_x(3:2:M) = 2;
ind_x(end) = 1;
ind = ind_x'*ind_x;
t_1 = repmat(t, M, 1);
t_2 = repmat(t.^2, M, 1);
g = (t_1+t_1')./(1+t_2+t_2').^(3/2);
a_sim = sum(reshape(g.*ind,1,[]))*d*d/36;
err_2 = double(abs(a_sym-sym(a_sim)));