close all;
% f1 = @(x,y) (x+1).^2+y.^2-1;
% 
% f2 = @(x,y) (1+x+x.^2-y.^2).^2+(y+2.*x.*y).^2-1;
% 
% f3 = @(x,y) (1+x+0.5.*x.^2-0.5.*y.^2+x.^3-3.*x.*y.^2).^2+(y+x.*y+3.*x.^2.*y-y.^3).^2-1;

% I = eye(4);
% one = ones(4,1);
% A = [0,0,0,0;
%     0.5,0,0,0;
%     0,0.5,0,0;
%     0,0,1,0];
% b=[1/6,2/6,2/6,1/6];
% f4 = @(x,y) (1+x.*b*(I+x.*A+(x.^2-y.^2).*A^2+(x.^3-3.*x.*y.^2).*A^3)*one).^2+(y.*b*(y.*A+2.*x.*y.*A^2+(3.*x.^2.*y-y.^3).*A^3)*one).^2-1;
% 
I = eye(7);
one = ones(7,1);
A = [0,0,0,0,0,0,0;
    1/5,0,0,0,0,0,0;
    3/40,9/40,0,0,0,0,0;
    44/45,-56/15,32/9,0,0,0,0;
    19372/6561,-25360/2187,64448/6561,-212/729,0,0,0;
    9017/3168,-355/33,46732/5247,49/176,-5103/18656,0,0;
    35/384,0,500/1113,125/192,-2187/6784,11/84,0];
b=[5179/57600,0,7571/16695,393/640,-92097/339200,187/2100,1/40];
%f5 = @(x,y) (1+x.*b*(I+x.*A+(x.^2-y.^2).*A^2+(x.^3-3.*x.*y.^2).*A^3+(x.^4-6.*x.^2.*y.^2+y.^4).*A^4)*one).^2+(y.*b*(y.*A+2.*x.*y.*A^2+(3.*x.^2.*y-y.^3).*A^3+(4.*x.^3.*y-4.*x.*y.^3).*A^4)*one).^2-1;

% h = fimplicit(f5, 'linewidth', 1);
% hold on
% xmin = -5;
% xmax = 5;
% ymin = -5;
% ymax = 5;
% axis([xmin xmax ymin ymax])
% axis square
% xlabel('Re(h\lambda)')
% ylabel('Im(h\lambda)')
% %fill(h.XData, h.YData, 'b', 'FaceAlpha', .1)
% plot([0;0],[ymin;ymax])
% plot([xmin;xmax],[0;0])
% 
% x = -5:0.1:5;
% y=x;
% [X,Y] = meshgrid(x,y);
% 
% Z=sin(X)+cos(Y);
% contour(X,Y,Z,[1,1])
% 
% function z = f(x,y)
%     z=x+y;
% end