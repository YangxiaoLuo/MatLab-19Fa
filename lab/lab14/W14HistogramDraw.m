rng default %为本例结果可被重现而设，并非必要。
mu=4;sigma=2; %定义均值和标准差
a=normrnd(mu,sigma,10000,1); %产生正态分布随机数组a
%a=4+2*randn(10000,1);			%另一种等价的生成正态分布随机数组的方法
subplot(2,1,1),histogram(a) 
%绘制a的频数统计直方图,histogram颜色相比hist会发生变化
subplot(2,1,2),histfit(a) 		%带有拟合曲线的频数统计直方图绘制

figure;
subplot(2,1,1),hist(a,50) %hist绘图与histfit默认的直方图颜色是一样的
subplot(2,1,2),histfit(a,50)
