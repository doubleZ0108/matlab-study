%������λ�÷���

% syms lab lac lbc thetaA thetaC
% e1= (lab*cos(thetaA) + lbc*cos(thetaC) == lac);
% %������lac��thetaC��δ֪��
% e2= (lab*sin(thetaA) == lbc*sin(thetaC));
% 
% [lac,theta] = solve(e1,e2,lac,thetaC)   %���������������ָ��δ֪��
% %�������ʱ��,lacȡ��һ���ʱ,thetaҲҪȡ��һ���

%ͨ������ע�͵��Ĳ��ֿ��Խ��thetaA ��lac �ĺ���
%���ƹ�����ͼ
lab=1;
lbc=4;
lac= lab*cos(thetaA) + lbc*(1 - (lab .^ 2*sin(thetaA) .^ 2)/lbc.^2).^(1/2);
        %ע������lab��lbc�ǳ���,�������йص�������Բ���.��, ���Ǻ�lac�йصĶ�Ҫ��.������
thetaA=0:0.1:2*pi;

plot(thetaA*180/pi,lac)     %��thetaAת��Ϊ�Ƕ�����ͼ
xlabel('\ThetaA(Degree)');
ylabel('LAC(m)');

thetaC= asin((lab*sin(thetaA))/lbc);
figure
plot(thetaA*180/pi,thetaC*180/pi)
xlabel('\ThetaA(Degree)');
ylabel('\ThetaC(Degree)');
