function GF=cometZZy(varargin)
%COMET  有头体形成拖尾动迹线
%   COMET(Y)        显示以Y为纵坐标数据的动迹线
%   COMET(X,Y)      显示以X、Y为横、纵坐标数据的动迹线
%   COMET(X,Y,p)    长度为 p*length(Y)的动迹线；p缺省时，默认 p = 0.10.
%   COMET(X,Y,p,hMK,bMS,btLW)   hMK用于设置动线头形，应选用预定义字符串；
%                               bMS用于设置动线头的大小，应是正整数；
%                               btLW用于设置线宽，应是正整数。
%                               以上三输入量必须同时使用。
%   COMET(X,Y,p,hMK,bMS,btLW,hC,bC,tC)
%                               hC、bC、tC分别用于设置动线头、动线体、迹线
%                               的颜色；三者必须同时使用。
%   COMET(X,Y,p,hMK,bMS,btLW,hC,bC,tC,mN,fS)
%                               mN设置完整心迹线重复次数；fS（〉10）控制重播速度
%   Charles R. Denham, MathWorks, 1989.
%   Copyright 1984-2017 The MathWorks, Inc.
%   Revised by ZZY, 21/05/2018

%
%   Example:
%       t = -pi:pi/200:pi;
%       comet(t,tan(sin(t))-sin(tan(t)))
%
%   See also COMET3.


% Parse possible Axes input
[ax,args,nargs] = axescheck(varargin{:});
if nargs < 1
    error(message('MATLAB:narginchk:notEnoughInputs'));
elseif nargs >11
    error(message('MATLAB:narginchk:tooManyInputs'));
end

% Parse the rest of the inputs
if nargs < 2, x = args{1}; y = x; x = 1:length(y); end
if nargs == 2, [x,y] = deal(args{:}); end
if nargs < 3, p = 0.10; end
if nargs >= 3, [x,y,p] = deal(args{[1,2,3]}); end

if ~isscalar(p) || ~isreal(p) ||  p < 0 || p >= 1
    error(message('MATLAB:comet:InvalidP'));
end

x = datachk(x);
y = datachk(y);

ax = newplot(ax);

if ~strcmp(ax.NextPlot,'add')
    % If NextPlot is 'add', assume other objects are driving the limits.
    % Otherwise, set the limits so that the axes limits don't jump around
    % during animation.
    [minx,maxx] = minmax(x);
    [miny,maxy] = minmax(y);
    axis(ax,[minx maxx miny maxy])
end
co = get(ax,'colororder');

m = length(x);
k = round(p*m);

if size(co,1)>=3
    colors = [ co(1,:);co(2,:);co(3,:)];
    lstyle = '-';
else
    colors = repmat(co(1,:),3,1);
    lstyle = '--';
end

head = line('parent',ax,'color',colors(1,:),'marker','o','linestyle','none', ...
            'xdata',x(1),'ydata',y(1),'Tag','head');

body = matlab.graphics.animation.AnimatedLine('color',colors(2,:),...
    'linestyle',lstyle,...
    'Parent',ax,...
    'MaximumNumPoints',max(1,k),'tag','body');
tail = matlab.graphics.animation.AnimatedLine('color',colors(3,:),...
    'linestyle','-',...
    'Parent',ax,...
    'MaximumNumPoints',1+m,'tag','tail'); %Add 1 for any extra points
%+++++++++++++++++++ZZY adds the following codes++++++++++++++++++
if nargs>=6
    [hMK,hMS,btLW]=args{[4,5,6]};
    head.Marker=hMK;
    head.MarkerSize=hMS;
    body.LineWidth=btLW;
    tail.LineWidth=btLW;
end
if nargs>=9
    [hC,bC,tC]=args{[7,8,9]};
    head.Color=hC;
    body.Color=bC;
    tail.Color=tC;
    mN=3;fS=12;
    if nargs>9;[mN,fS]=args{[10,11]};end
end
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    

if length(x) < 2000
    updateFcn = @()drawnow;
else
    updateFcn = @()drawnow('limitrate');
end

% Grow the body
for i = 1:k
    % Protect against deleted objects following the call to drawnow.
    if ~(isvalid(head) && isvalid(body))
        return
    end
    set(head,'xdata',x(i),'ydata',y(i));
    addpoints(body,x(i),y(i));
    updateFcn();
end

% Add a drawnow to capture any events / callbacks
drawnow
GF(1)=getframe(gcf);
% Primary loop
for i = k+1:m
    % Protect against deleted objects following the call to drawnow.
    if ~(isvalid(head) && isvalid(body) && isvalid(tail))
        return
    end
    set(head,'xdata',x(i),'ydata',y(i))
    addpoints(body,x(i),y(i))
    addpoints(tail,x(i-k),y(i-k));
    updateFcn();
    drawnow
    GF(i-k+1)=getframe(gcf);
    if i>100,break,end          %zzy
end
drawnow
Lgf=length(GF);                 %zzy
% Clean up the tail
for i = m+1:m+k
    % Protect against deleted objects following the call to drawnow.
    if ~isvalid(tail)
        return
    end
    addpoints(tail,x(i-k),y(i-k));
    updateFcn();
    GF(Lgf+i-m)=getframe(gcf);  %zzy
end
drawnow
movie(gcf,GF,mN,fS)              %zzy

end

function [minx,maxx] = minmax(x)
minx = min(x(isfinite(x)));
maxx = max(x(isfinite(x)));
if minx == maxx
    minx = maxx-1;
    maxx = maxx+1;
end
end
%-------------
function y = datachk(x, kind)
%DATACHK Convert input to appropriate data for plotting
%  Y=DATACHK(X) creates a full, double array from X and returns it in Y.
%  If X is a cell array each element is converted elementwise.
%  Y=DATACHK(..., KIND) customizes the check depending on KIND. KIND
%  can be
%    'double' (default): outputs are converted to full double
%    'numeric':          outputs are numeric and allow conversion to 
%                        double for non-numeric values. Double values are made full.

%   Copyright 1984-2016 The MathWorks, Inc. 

if nargin == 1
    kind = 'double';
end
if iscell(x)
    y = cellfun(@(n)datachk(n,kind),x,'UniformOutput',false);
elseif isa(x,'double')
    y = full(x);
elseif strcmp(kind,'numeric') && isnumeric(x)
    y = x;
else
    try
        y = full(double(x));
    catch
        throwAsCaller(MException(message('MATLAB:specgraph:private:specgraph:nonNumericInput')));
    end
end
end
%----------------------------

