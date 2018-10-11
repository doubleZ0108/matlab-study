%符号表达式的微积分

%微分 diff()
syms x
f=sin(x)^2;
diff(f)              %求一阶导数

clear
syms x y
f=sin(x)^2 + cos(y)^2;
diff(f,y)            %一阶偏导数

clear
syms x y
f(x,y)=x^3*y^3;
save = diff(f,y,2)   %二阶偏导数
syms a
save(a+1,a)       %将x,y用具体的值带入到二阶偏导数中
diff(diff(f,y),x)   %混合偏导


%积分 int()
clear
syms x
f=sin(x)^2;
int(f)              %一元函数不定积分

clear
syms x y n
f=x^n+y^n;
int(f,y)            %把y当做积分变量,进行不定积分
int(f,n)            %..n...........

clear
syms x
int(2*x, [0,1])     %求yf(x)=2x的定积分,积分上下限为第二个参数
