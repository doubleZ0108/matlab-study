%符号表达式的变量替代

syms x
f=2*x^2-3*x+1;
subs(f, 1/3)        %调用的这个函数返回值为2/9
                    %但是f并没有发生改变,subs命令只是用参数替代变脸并返回结果
                    
clear
syms x y
f=x^2*y+5*x*sqrt(y);
subs(f,x,3)     %将变量x用3替代,然后直接返回
subs(f,y,x)     %将y用x替代
subs(f,{x,y},{3,2})     %将x和y分别用3和2替代


clear
syms x
f=x^3 - 15*x^2 - 24*x + 350;
A=[1 2 3;4 5 6];
subs(f,A)       %把A矩阵的每个值带入f中,结果返回同尺寸矩阵