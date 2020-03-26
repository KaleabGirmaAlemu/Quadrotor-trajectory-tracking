% Convert derivatives of roll, pitch, yaw to omega.
function omega = thetadot2omega(angles)
    phi = angles(1);
    theta = angles(2);
    psi = angles(3);

    Rz = [cos(psi) -sin(psi) 0
        sin(psi) cos(psi) 0
        0 0 1];
    Rx = [1 0 0;
        0 cos(phi) -sin(phi);
        0 sin(phi) cos(phi)];
    Ry = [cos(theta) 0 sin(theta);
        0 1 0;
        -sin(theta) 0 cos(theta)];
    R = Rz*Rx*Ry
    Rtrans = transpose(R); % R transpose
    Rder = diff(R); % time derivative of R
    omegaX = simplify(Rder*Rtrans, 'Steps', 20); % 3X3 skew-symmetric matrix (with omega)
    omega = [omegaX(3,2); omegaX(1,3); omegaX(2,1)] % 3X1 angular velocity vector omega
    %----------------------------
    % where diff(x,t) is equal to x_dot, e.g. diff(phi(t), t) == phi_dot ...
    % !!! psi(1, t) == psi_dot !!!
% 
% 
%     
%     W = [
%         1, 0, -sin(theta)
%         0, cos(phi), cos(theta)*sin(phi)
%         0, -sin(phi), cos(theta)*cos(phi)
%     ];
%     omega = W * thetadot;
end