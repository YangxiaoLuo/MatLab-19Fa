function polygon(N)
% Draw a N-polygon
% N     The number of sides
% polygon
% polygon(N)

% Yangxiao Luo 11/19/2019
if nargin == 0
    N = 100;
end
if fix(N) ~= N
    error('The input should be a natural number.')
elseif N<3
    error('The input should be greater than 2.')
end
t=0:2*pi/N:2*pi;
x=sin(t);
y=cos(t);
plot(x,y);
if nargin == 0
    title('Circle')
else
    title(['Polygon with ' int2str(N) ' edges'])
end

