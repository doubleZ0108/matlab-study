syms x y z L1 L2 L3 q1 q2 q3

eqn1= x == (L2*cos(q2) + L3*cos(q2+q3)) * cos(q1);
eqn2= y == (L2*cos(q2) + L3*cos(q2+q3)) * sin(q1);
eqn3= z == L1 + L2*sin(q2) + L3*sin(q2+q3);

[q1,q2,q3] = solve(eqn1,eqn2,eqn3,q1,q2,q3)

% eqn1= x == (L2*cos(q2) + L3*cos(q2+q3))*cos(atan(y/x));
% eqn2= z == L1 + L2*sin(q2) + L3*sin(q2+q3);
% [q2,q3]=solve(eqn1,eqn2,q2,q3)
