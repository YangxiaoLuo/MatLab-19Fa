function mandelbrot(n,niter,xs,ys,g)
% Draw a Mandelbrot set.
% n: resolution
% niter: maximum iteration number
% xs,ys: centor of the window
% g: 2*g is the width and the height of the window
x0 = xs-g; x1 = xs+g;
y0 = ys-g; y1 = ys+g;
[x,y] = meshgrid(linspace(x0,x1,n),linspace(y0,y1,n));
c = x+1i*y;
z = zeros(size(c));
k = zeros(size(c));
for ii = 1:niter
    z = z.^2+c;
    k(abs(z)>2&k==0) = niter-ii;
end
figure,
set(gcf,'position',[100 100 1024 1024])
imagesc(k),
colormap cool
axis square
axis off
% zn = zeros(size(c));
% n = zeros(size(c))+niter;
% for ii = 1:niter
%     z = z.^2+c;
%     upd = abs(z)>2&zn==0;
%     zn(upd) = z(upd);
%     n(upd) = ii;
% end
% nsmooth = abs(n+1-log(log(abs(zn)))./log(2));
% nsmooth(nsmooth>360) = nsmooth(nsmooth>360) - 360;
% nsmooth(nsmooth<0) = nsmooth(nsmooth<0) +360;
% color = hsv2rgb(0.95+10*nsmooth,zeros(size(c))+0.6,zeros(size(c))+1);
% imshow(color)