%求解代数方程
clear
syms x
solve(x^2-1)
solve(x^2+4*x+1==0)
solve(x^2==2*x-4)

%求解符号方程
syms a b c
solve(a*x+b*x==c,x)     %多个符号变量的时候要指定未知数
solve(a*x+b*x==c,a)

%求解多元代数方程
clear
syms x y
[a,b] = solve(x+y==1, x-11*y==5)


%求解一元微分方程
clear
syms a y(x)     %y为x的函数
dsolve(diff(y) == -a*y)     %其中C几代表常数,每次运行不一样属正常情况
syms f(t)
dsolve(diff(f) == f+sin(t))

%求解有初始条件的微分方程
clear
syms a b y(t)
dsolve(diff(y) == a*y, y(0)==b)

%求解二阶微分方程, 有初始条件和边界条件
clear
syms a y(t)
Dy = diff(y);
dsolve(diff(y,2) == -a*y, y(0)==1, Dy(pi/a)==0)

%求解二元常微分方程
clear
syms x(t) y(t)
[x,y] = dsolve(diff(x)==y, diff(y)==x)

%MATLAB使用solve命令的一些注意事项
clear
syms x a
solve(x^4+2*x+a==0,x)   %正常只能计算到三次,所以这个的返回为
                        % root(z^4 + 2*z + a, z, 1)
                        %  root(z^4 + 2*z + a, z, 2)
                        %  root(z^4 + 2*z + a, z, 3)
                        %  root(z^4 + 2*z + a, z, 4)
solve(x^4+2*x+a==0,x,'MaxDegree',4) %硬要算要加第三和第四参数

solve(cos(2*x)+sin(x)==1)   %正常只会返回           0 这几个解,如果想要全部解要用MuPud模块
                                          %      pi/6
                                          %  (5*pi)/6