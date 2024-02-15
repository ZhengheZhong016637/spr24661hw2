function problem2
close all;
tmax = 100;
tspan = [0 tmax];
y_0 = [0.994; 0; 0; -2.00158510637908252240537862224;];
options = odeset('RelTol',1e-12,'AbsTol',1e-12);
T = zeros(3,1);
tic 
[~,y] = ode45(@AO,tspan,y_0,options);
T(1) = toc;
figure;
plot(y(:,1),y(:,2))
title('Solution of Arentorf Problem for t\in [0,100] with ODE45');
xlabel('x');
ylabel('y');
tic 
[~,y] = ode78(@AO,tspan,y_0,options);
T(2) = toc;
figure;
plot(y(:,1),y(:,2))
title('Solution of Arentorf Problem for t\in [0,100] with ODE78');
xlabel('x');
ylabel('y');
tic 
[~,y] = ode89(@AO,tspan,y_0,options);
T(3) = toc;
figure;
plot(y(:,1),y(:,2))
title('Solution of Arentorf Problem for t\in [0,100] with ODE89');
xlabel('x');
ylabel('y');
figure;
bar(["ode45" "ode78" "ode89"],T)
title('CPU time for various ODE method');

    function dydt = AO(t,y)
        dydt = zeros(4,1);
        mu = 0.012277471;       
        r1 = ((y(1)+mu)^2+y(2)^2)^0.5;
        r2 = ((y(1)-1+mu)^2+y(2)^2)^0.5;
        dydt(1) = y(3);
        dydt(2) = y(4);
        dydt(3) = y(1)+2*y(4)-(1-mu)*(y(1)+mu)/r1^3-mu*(y(1)-1+mu)/r2^3;
        dydt(4) = y(2)-2*y(3)-(1-mu)*y(2)/r1^3-mu*y(2)/r2^3;    
    end

end