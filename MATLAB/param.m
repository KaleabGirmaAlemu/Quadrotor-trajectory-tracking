global params;
%% ������Ʋ���
params.using_vr = true;     %ʹ��vrmlģʽ��ʾ
params.range = 5;           %�ӿڴ�С
params.simu_time = 150;     %����ʱ�䡣���ڵ����������⣬ʵ������ʱ���ȷ���ʱ�䳤��
params.dt = 0.05;           %���沽��
params.motion_noise = 0.1;    %ִ����������[0, motion_noise^2]�ĸ�˹�ֲ���
%% Ŀ��λ��
params.h = 2;
params.theta_desired = [0 0 0]'
%% PID����
%�߶�PID����
params.Kp_h = 2;
params.Kd_h = 5;
params.Ki_h = 0.025;
%��̬PID����
params.Kp_pose = 2;	
params.Kd_pose = 2;
params.Ki_pose = 0;

%% 