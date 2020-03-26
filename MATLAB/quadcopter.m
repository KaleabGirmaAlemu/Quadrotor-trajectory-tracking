clear all
param;  %º”‘ÿ≤Œ ˝
addpath('./models')
addpath('./control')
addpath('./plotting')
addpath('./math_utils')
global params;

% Simulation times, in seconds.
start_time = 0;
end_time = params.simu_time;
dt = params.dt;
times = start_time:dt:end_time;
% Number of points in the simulation.
N = numel(times);
x_out = zeros(3,N);
%Initial simulation state.
x = [0; 0; 0];
x_last = x;
xdot = zeros(3, 1);
theta = zeros(3, 1);
theta_last = theta;
thetadot = zeros(3,1);
% Physical constant
m = 1;
g = 9.8;
k = 1;
kd = 0;
I = diag([0.04 0.04 0.008]);
L = 0.25;
b = 0.007;

index = 0
x_out = zeros(3,N);             % mass position [X-Y-Z]
i = [2.45 2.45 2.45 2.45];
%Step through the simulation, updating the state.
tic
for t = times
    index = index + 1
    omega = thetadot2omega(thetadot, theta);
    a = acceleration(i, theta, xdot, m, g, k, kd);
    omegadot = angular_acceleration(i, omega, I, L, b, k);
    omega = omega + dt * omegadot;
    thetadot = omega2thetadot(omega, theta);
    theta = theta + dt * thetadot;
    xdot = xdot + dt * a;
    x = x + dt * xdot;
     
 
    i = rotor_input(x, xdot, theta, thetadot, x_last, theta_last);
    x_last = x;
    theta_last = theta;

    if params.using_vr
        copter.translation = x';
        copter.rotation = theta2rotation(theta);
    else
        quadplot(x, theta, i)
    end
    pause(0.01);
    x_out(:, index) = x;
      
end
toc
figure(5)
plot(times,x_out(1,:))
figure(6)
plot(times,x_out(2,:))
figure(7)
plot(times,x_out(3,:))

rmpath('./models')
rmpath('./control')
rmpath('./plotting')
rmpath('./math_utils')




