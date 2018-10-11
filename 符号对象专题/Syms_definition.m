%定义符号变量,注意变量之间是空格,不能是逗号
syms x y    
a=x+y   %这样变量a也成为符号变量

clear

%定义符号函数,两种方法等价
syms f(x,y)     %这里x,y不用提前定义,会直接变成符号变量
f(x,y)=x+2*y;   %实例化
f(1,2)          %代入数值
clear
syms x y
f(x,y)=x+2*y;
f(1,2)

clear

%定义符号矩阵
syms x
f(x)=[x,x^2;x^3,x^4];
f(2)

clear

%使用 sym 创建符号数字
a=sym('2');
sqrt(a)     %输出结果是2^(1/2),而不是数值结果1.414, 我们一直是在用符号来运算
phi=sym(sqrt(5))
f=phi^2-phi-1;      %最终的结果不会算到小数,而是保留 根号五

