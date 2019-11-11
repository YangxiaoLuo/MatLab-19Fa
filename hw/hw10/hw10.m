%% Q1
A = [1 4 7
    2 5 8
    3 6 9];
n_1 = norm(A,1);
n_2 = norm(A, 2);
n_inf = norm(A, inf);
n_fro = norm(A, 'fro');
[U, S, V] = svd(A);
n_ker = norm(diag(S), 1);
%% Q3
A = magic(4);
b = ones(4, 1);
x_1 = A\b;
err_1 = norm(abs(A*x_1-b));
x_2 = inv(A)*b;
err_2 = norm(abs(A*x_2-b));
A1 = A;
A1(:, end+1) = b;
R = rref(A1);
x_3 = R(:, end);
err_3 = norm(abs(A*x_3-b));

A_s = sym(A);
b_s = sym(b);
x_s = linsolve(A_s,b_s);
Z_s = null(A_s);
syms c1
x_sg = x_s + c1*Z_s;
%% Q_4
rng default
A=rand(400,400)+5e2*eye(400); 
x=rand(400,1);      
b=A*x;  
M = triu(A);
N = M-A;
B = M\N; f = M\b;
x_old = zeros(400,1);
err = 1e12;	
iter = 0;
while(err>1e-6)
    iter = iter + 1;
    x_new = B*x_old + f;
    err = norm(x_new-x_old);
    x_old = x_new;
end			
err = norm(x_new-x);