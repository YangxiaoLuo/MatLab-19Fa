function ydot=DyDt(t,y)
mu=2;
ydot=[y(2);mu*(1-y(1)^2)*y(2)-y(1)];		%注意：一阶导数ydot是(2*1)列向量
