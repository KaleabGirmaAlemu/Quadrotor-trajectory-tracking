function out = body2x_tf(x)
%UNTITLED13 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    out = [cosd(45), -sind(45), 0;
            sind(45), cosd(45), 0;
            0   ,   0,  1] * x;

end
