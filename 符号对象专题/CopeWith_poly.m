%simplify用于符号表达式的化简
phi=sym(sqrt(5)/2)
f=phi^3+2*phi^2-phi-1
simplify(f)     %这里的例子不是很好orz

%expand用于符号表达式的展开     and我也不知道展开和化简的区别
clear
syms x
f=(x^2-1)*(x^4+x^3+x^2+x+1)*(x^4-x^3+x^2-x+1)
expand(f)

%factor用于符号表达式的因式分解
clear
syms x
g=x^3+6*x^2+11*x+6;
factor(g)       %结果的输出矩阵表示分解后为这三项的乘积