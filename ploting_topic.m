%绘图专题

%二维曲线
%最简单的常规画图语句
x=0:pi/100:pi*2;
y=sin(x);
plot(x,y);

xlabel('x');  %标记坐标轴
ylabel('sin(x)');
title('Plot of the Sine Function');  %添加上方的标题

hold on; %画完一个图之后想让第二个图跟上面的图再一张画纸上，需要添加这条语句

y2=cos(x);
plot(x,y2,'r--'); %注意这里的参数应该是y2了，   第三个参数表示线的颜色和符号，这里是红虚线

legend('sin','cos');  %在旁边添加标识指明这两条曲线分别对应什么函数

figure  %重开另一个窗口

%三维曲面
[x,y]=meshgrid(-2:.2:2);  %分配一个网格
z=x.^2+y.^2;  %这里要用 （.^） 否则会被当做矩阵来处理的

%两种显示样式
subplot(2,1,1); %前两个参数含义是创建一个多大的矩阵，第三个参数是填充在第几个位置
mesh(x,y,z);
subplot(2,1,2);
surf(x,y,z);

figure

%三维曲线
t=0:pi/50:10*pi;
st=sin(t);
ct=cos(t);
plot3(st,ct,t);

axis equal; %另各坐标刻度相等



figure
%信号处理方面的一个应用
t = 0:0.0001:1;  %方波时域长度1秒
w = 2*pi*2;  %方波频率2Hz
A = 5;  %方波幅值为5
subplot(2,1,1);
for n = 1:5  %采用5组正弦波形来合成，值越大越精确
plot(t, 4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t));
hold on;
end
title('5组正弦信号');
subplot(2,1,2);
sum = 0;
for n = 1:5
sum = sum + 4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t);
end
plot(t, sum);
title('合成的方波信号');