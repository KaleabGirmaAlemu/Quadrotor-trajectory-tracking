function thetadot = omega2thetadot(omega, theta)
%UNTITLED13 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    phi = theta(1);
    psi = theta(3);
    theta = theta(2);
    thetadot = inv([1  0           -sin(theta);
             0  cos(phi)    cos(theta)*sin(phi);
             0  -sin(phi)   cos(theta)*cos(phi)]) * omega ;

end

