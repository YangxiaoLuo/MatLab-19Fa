function ydot=DyDt(t,y)
mu=2;
ydot=[y(2);mu*(1-y(1)^2)*y(2)-y(1)];		%ע�⣺һ�׵���ydot��(2*1)������
