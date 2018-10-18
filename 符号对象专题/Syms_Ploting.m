%用符号变量画图,非常方便,
%命令基本为ezplot等等, 就是eazyplot的音译

clear
syms x
ezplot(x^3-6*x^2+11*x-6)
grid on     %显示网格

%ezplot 画隐函数
clear
syms x y
ezplot((x^2+y^2)^4 == (x^2-y^2)^2,[-1,1])    %第二个参数用于指定x的范围
grid on
axis equal

%ezplot3 三维曲线
clear
syms t
fplot3(t^2*sin(10*t),t^2*cos(10*t),t)   %fplot也可以代替ezplot

%ezpolar 极坐标曲线
clear
syms t
ezpolar(1+cos(t))

%ezsurf 曲面
clear
syms x y
ezsurf(real(atan(x+i*y)))

%ezsurfc 曲面及其 等高线
clear
syms x y
ezsurfc(y/(1+x^2+y^2),[-5,5,-2*pi,2*pi],35)
    %第二个参数用来限制x和y的范围, 第三个参数为画图所用的线的数量
    
%ezmesh 曲面
clear
syms x y
ezmesh(x*exp(-x^2-y^2))     %正常画图的时候要用 .^ 符号来运算,但是ez画图函数不用
colormap([0,0,1])

%ezmeshc 同样这个也是画完图还能显示等高线


