function [S,L]=exm060201(N,R,str)
% exm060201.m
% 			N 				 
% 			R 				
% 			str 		 		
% 			S 				
% 			L 				
% exm060201      				
% exm060201(N)   			
% exm060201(N,R)  			
% exm060201(N,R,str) 		
% S=exm060201(...)          		
% [S,L]=exm060201(...)          	

%  

    switch nargin
        case 0
            N=100;R=1;str='-b';
        case 1
            R=1;str='-b';
        case 2
            str='-b';
        case 3
                                    %
        otherwise
            error('输入量太多。');
    end
    t=0:2*pi/N:2*pi;
    x=R*sin(t);y=R*cos(t); 
    if nargout==0
        plot(x,y,str,'LineWidth',3);	% 
    elseif nargout>2
        error('输出量太多。');
    else
        S=N*R*R*sin(2*pi/N)/2;		% 
        L=2*N*R*sin(pi/N);			% 
        fill(x,y,str,'LineWidth',3)		% 
    end
    axis image						% 
    set(gcf,'Color','white')	 		% 
    box on
    shg    
end