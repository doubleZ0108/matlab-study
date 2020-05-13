%机构的位置分析

% syms lab lac lbc thetaA thetaC
% e1= (lab*cos(thetaA) + lbc*cos(thetaC) == lac);
% %方程中lac和thetaC是未知数
% e2= (lab*sin(thetaA) == lbc*sin(thetaC));
% 
% [lac,theta] = solve(e1,e2,lac,thetaC)   %最后两个参数用于指明未知数
% %保留解的时候,lac取第一组解时,theta也要取第一组解

%通过上面注释掉的部分可以解出thetaA 和lac 的函数
%复制过来画图
lab=1;
lbc=4;
lac= lab*cos(thetaA) + lbc*(1 - (lab .^ 2*sin(thetaA) .^ 2)/lbc.^2).^(1/2);
        %注意这里lab和lbc是常数,和他们有关的运算可以不用.乘, 但是和lac有关的都要用.乘运算
thetaA=0:0.1:2*pi;

plot(thetaA*180/pi,lac)     %把thetaA转化为角度来画图
xlabel('\ThetaA(Degree)');
ylabel('LAC(m)');

thetaC= asin((lab*sin(thetaA))/lbc);
figure
plot(thetaA*180/pi,thetaC*180/pi)
xlabel('\ThetaA(Degree)');
ylabel('\ThetaC(Degree)');
