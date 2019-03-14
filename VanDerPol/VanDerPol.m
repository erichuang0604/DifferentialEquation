%Save the following contents in a .m file and run the .m file
mu = 1;
k = 1;
dy_dt = @(t,y) [y(2);...
                      mu*(1-y(1)^2)*y(2)-k*y(1)];
odeopt = odeset ('RelTol', 0.00001, 'AbsTol', 0.00001,'InitialStep',0.5,'MaxStep',0.5);
[t,y] = ode45(dy_dt,[0 40], [1.0 2.0],odeopt);
subplot(1,3,[1 2]);plot(t,y(:,1),'r-',t,y(:,2),'g-'); xlabel('time'); legend('y(1)','y(2)');
subplot(1,3,3);plot(y(:,1),y(:,2)); xlabel('y(1)'); ylabel('y(2)');