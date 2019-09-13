% 已知函数模型为: y = a*x^2 + b*x + c
% 已知函数过点: (0,0) (1,1) (-1,-1)
% 求解 a,b,c
% 求解后绘制函数图像

syms x y a b c

x1 = 0; y1 = 0;
eq1 = y1 == a*x1^2 + b*x1 + c;

x2 = 1; y2 = 1;
eq2 = y2 == a*x2^2 + b*x2 + c;

x3 = -1; y3 = -1;
eq3 = y3 == a*x3^2 + b*x3 + c;

[a,b,c] = solve(eq1,eq2,eq2, a,b,c);        % 注意参数的顺序

y = a*x^2 + b*x + c;
figure;

x_min = -10; x_max = 10;
y_min = -5; y_max = 150;
ezplot(y, [x_min, x_max, y_min, y_max]);    % 第二个参数指定x轴和y轴的区间
