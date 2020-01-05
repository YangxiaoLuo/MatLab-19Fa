f = @(x) x.*sin(x) + cos(x);
% g = @(x) 0;
% fplot(f,[0,pi]);
x1 = pi/2; x2 = pi;%ע�⵽f(x1)>0,f(x2)<0
while(x2-x1>=1e-8)
    x_new = (x1+x2)/2;
%     clf
%     hold on
%     fplot(f,[0,pi]);
%     plot(x1,f(x1),'.m',x2,f(x2),'.g',x_new,f(x_new),'.r','MarkerSize',30);
%     fplot(g,[0,pi],'k-');
%     hold off
    if(f(x_new)>=0)
        x1 = x_new;
    else
        x2 = x_new;
    end
end
res = x_new
