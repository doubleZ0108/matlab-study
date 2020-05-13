% syms LAB LBC LAC(t) thetaA(t) thetaC(t)
% e1=LAB * cos(thetaA(t)) + LBC * cos(thetaC(t)) == LAC(t);
% e2=LAB * sin(thetaA(t)) == LBC *sin(thetaC(t));
% e3=diff(e1,t);
% e4=diff(e2,t);
% 
% e5=diff(e3,t)
% e6=diff(e4,t)

syms LAB LBC LAC thetaA thetaC
syms thetaAdt thetaCdt LACdt
syms thetaAdtdt thetaCdtdt LACdtdt
e5 = - LAB*cos(thetaA)*thetaAdt^2 - LBC*cos(thetaC)*thetaCdt^2 - LAB*sin(thetaA)*thetaAdtdt - LBC*sin(thetaC)*thetaCdtdt == LACdtdt;
e6 = LAB*cos(thetaA)*thetaAdtdt - LAB*sin(thetaA)*thetaAdt^2 == LBC*cos(thetaC)*thetaCdtdt - LBC*sin(thetaC)*thetaCdt^2;

 [thetaCdtdt, LACdtdt] = solve(e5,e6,thetaCdtdt,LACdtdt)