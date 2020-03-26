function vr_rotation = theta2rotation(pose)
%% ŷ����ת��Ƕ�
% ���ڱ�ʾvrml�е���ת���㷨����л������ʽ http://www.xieguofang.cn/Maths/3D_Rotation/Guofang_Xie%27s_Formulas_for_3D_Rotation_Ch.htm
    R = rotation(pose);
    theta = acos((trace(R)-1)/2);
    n = 1/(2 * sin(theta)) * [R(3,2)-R(2,3),R(1,3)-R(3,1),R(2,1)-R(1,2)];
    vr_rotation = [n, theta];
end