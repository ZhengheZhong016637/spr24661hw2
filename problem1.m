function problem1
close all;
tmax = 1000;
tspan = [0 tmax];
y_0 = [2;0];
%T = zeros(3,3);

% for j = 1:3
%     u = 10^j;
%     for i=1:3
%         tol = 10^(-(3+3*i));
%         options = odeset('RelTol',tol,'AbsTol',tol);
%         tic
%         [~,y] = ode15s(@VDP,tspan,y_0,options);
%         T(i,j) = log(toc);
%     end
% end
% hold on;
% a1 = plot([3;6;9],T(:,1),'-o'); M1 = "mu = 10";
% a2 = plot([3;6;9],T(:,2),'-o'); M2 = "mu = 100";
% a3 = plot([3;6;9],T(:,3),'-o'); M3 = "mu = 1000";
% legend([a1,a2,a3],[M1,M2,M3])
% title('CPU time for ODE15s to solve van der Pol Equation');
% xlabel('Reltol = Abstol = \epsilon');
% ylabel('CPU time');

u=1000;
tol = 10^-9;
options = odeset('RelTol',tol,'AbsTol',tol);
[~,y] = ode15s(@VDP,tspan,y_0,options);

plot(y(:,1),y(:,2))
title('Solution of van der Pol Equation (\mu = 1000) with ODE15s');
xlabel('y_1');
ylabel('y_2');   

function dydt = VDP(t,y)
    dydt = zeros(2,1);
    dydt(1) = y(2);
    dydt(2) = u*(1-y(1)^2)*y(2)-y(1);
end
end