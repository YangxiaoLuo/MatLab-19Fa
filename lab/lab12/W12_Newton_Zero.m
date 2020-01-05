f = @(x) x.*sin(x) + cos(x);
fp = @(x) x.*cos(x);
x1 = pi/2; x2 = pi;%ע�⵽f(x1)>0,f(x2)<0
x_old = pi*3/4;
while(1)
    x_new = x_old - f(x_old)/fp(x_old);
    if(abs(x_new - x_old)<1e-8)
        break;
    end
    x_old = x_new;
end
res = x_new
