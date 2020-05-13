syms x y z L1 L2 L3 q1 q2 q3
% 
% eqn1= x == (L2*cos(q2) + L3*cos(q2+q3)) * cos(q1);
% eqn2= y == (L2*cos(q2) + L3*cos(q2+q3)) * sin(q1);
% eqn3= z == L1 + L2*sin(q2) + L3*sin(q2+q3);
% 
% [q1,q2,q3] = solve(eqn1,eqn2,eqn3,q1,q2,q3)


syms u v
q1=atan(y/x);
eqn1= u == L2*cos(q2) + L3*cos(q2+q3);      % u=x/cos(q1)
eqn2= v == L2*sin(q2) + L3*sin(q2+q3);      % v=z - L1
[q2,q3] = solve(eqn1,eqn2,q2,q3)

% u=x/cos(q1);
% v=z - L1;
% q1 = atan(y/x);
% eqn1 = q2 == 2*atan((2*L2*v - (L2^2*((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2))/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2) - (L3^2*((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2))/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2) + (u^2*((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2))/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2) + (v^2*((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2))/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2) + (2*L2*L3*((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2))/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2))/(L2^2 + 2*L2*u - L3^2 + u^2 + v^2));
% eqn2 = q3 == -2*atan(((- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2)*(L2^2 + 2*L2*L3 + L3^2 - u^2 - v^2))^(1/2)/(- L2^2 + 2*L2*L3 - L3^2 + u^2 + v^2));
% [q2,q3]=solve(eqn1,eqn2,q2,q3)