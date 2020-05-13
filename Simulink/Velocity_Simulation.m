%机构速度仿真

% syms lab lac(t) lbc thetaA(t) thetaC(t)
% e1= (lab*cos(thetaA(t)) + lbc*cos(thetaC(t)) == lac(t));
% %方程中lac和thetaC是未知数
% e2= (lab*sin(thetaA(t)) == lbc*sin(thetaC(t)));
% e3=diff(e1,t)
% e4=diff(e2,t)
% 
% e3 =...
% - lab*sin(thetaA(t))*diff(thetaA(t), t) - lbc*sin(thetaC(t))*diff(thetaC(t), t) == diff(lac(t), t)
% e4 =...
% lab*cos(thetaA(t))*diff(thetaA(t), t) == lbc*cos(thetaC(t))*diff(thetaC(t), t)

syms lab lbc lac thetaA thetaC
syms thetaAdt thetaCdt lacdt
e3 = - lab*sin(thetaA)*thetaAdt - lbc*sin(thetaC)*thetaCdt == lacdt;
e4 = lab*cos(thetaA)*thetaAdt == lbc*cos(thetaC)*thetaCdt;
[thetaCdt, lacdt] = solve(e3,e4,thetaCdt, lacdt)
