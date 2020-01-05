rng default,A0 = rand(300,300);
A=A0+A0'+1e3*eye(300);
x=rand(300,1);			
b=A*x;	
x_old = zeros(300,1);
err = 1e12;
iter = 0;
while(err>1e-6)
    iter = iter + 1;
    p = b - A*x_old;
    lambda = 1e-2;
    x_new = x_old + lambda*p;
    err = norm(x_new-x_old);
    x_old = x_new;
end
iter
err = norm(x_new-x)

