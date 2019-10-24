function Hr=exm060301(flag )
% exm060301.m		
%			flag		
%			Hr		
 
    t=(0:50)/50*2*pi;
    x=sin(t);
    y=cos(t);
    Hr=@cirline;		% 
    feval(Hr,flag,x,y,t)
end
% -------------subfunction---------------------------
function cirline(wd,x,y,t)
% cirline(wd,x,y,t)	
% wd				
% t					
% x					
% y					
    switch wd
        case 'line'
            plot(t, x, 'b' ,t , y, 'r', 'LineWidth', 2)
        case 'circle'
            plot(x, y, '-g', 'LineWidth', 8),
            axis square off
        otherwise
            error('输入宗量只能取 ''line'' 或 ''circle'' ！ ')
    end
    shg
end