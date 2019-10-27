%% Q2
clear,d = 1e-5;
tic;
x = 0:d:1;
y = zeros(1,length(x));
yp = @(X,Y) X+Y;
y(1)=0;
for i = 2:length(x)
    temp=y(i-1)+d*yp(x(i-1),y(i-1));
    y(i)=y(i-1)+d/2*(yp(x(i-1),y(i-1))+yp(x(i),temp));
end
toc;
err = abs(y(end)-(exp(1)-2))
%% Q3
clear
GTx = (sqrt((1-sqrt(1/3))^2+50)+1-sqrt(1/3))/2.5;
GTy = -1.25*GTx^2+GTx+10;
Slope = -2.5*GTx + 1;
GTvx = 2;
GTvy = GTvx*Slope;
d = 1e-5;
t = 0:d:3;
sx = zeros(1,length(t)); sx(1) = 0;
sy = zeros(1,length(t)); sy(1) = 10;
vx = zeros(1,length(t)); vx(1) = 2;
vy = zeros(1,length(t)); vy(1) = 2;
for i = 2:length(t)
    sx(i) = sx(i-1) + vx(i-1)*d;
    sy(i) = sy(i-1) + vy(i-1)*d;
    vx(i) = vx(i-1);
    vy(i) = vy(i-1) -10*d;
    if(sy(i)<sx(i)/sqrt(3))
        break;
    end
end
fprintf('The time is %f s\n',(i-1)*d);
fprintf('The x axis is %f m, err is %f m\n',sx(i),abs(sx(i)-GTx));
fprintf('The y axis is %f m, err is %f m\n',sy(i),abs(sy(i)-GTy));
fprintf('The horizontal speed is %f m/s, err is %f m/s\n',vx(i),abs(vx(i)-GTvx));
fprintf('The vertical speed is %f m/s, err is %f m/s\n',vy(i),abs(vy(i)-GTvy));