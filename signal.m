clc
clear

%阶跃信号
t=-5:0.01:5;
f=(t>=0);       %跟C语言是一样的, f为一个逻辑值(要么是0要么是1)
plot(t,f)



%单位脉冲信号
t=-5:0.01:5;        %时间10s, 采样时间间隔0.01s
n=length(t);        %时间样本的长度
x=zeros(1,n);
k=floor(5/0.01);    %floor这里没啥用
x(k)=100;       %第k个采样点处赋值100
stairs(t,x)     %x的阶梯图


%符号函数 (提取符号)
t=-5:0.01:5;
f=sign(t);      %sign(x) -> x为正数返回1, 负数返回-1, 0返回0
plot(t,f);


%基本数字信号
n=1:10;
x=[2 -1 3 2 0 -3 4 1 -2 3];
stem(n,x);      %绘制离散序列数据

%单位脉冲数字信号
n=1:10;
x=((n-3)==0);   %单次脉冲出现在第3号位置
stem(n,x);

%单位阶跃数字信号
x1=ones(1,5);
x0=zeros(1,5);
stem(-5:-1,x0);
hold on
stem(0:4,x1);   %阶跃信号从0点开始
hold off


%两信号的合成
t=0:0.01:5;
f=exp(-2*t);
g=0.5*sin(4*pi*t);
h=f+g;
k=f.*g;

subplot(2,2,1);plot(t,f);
subplot(2,2,2);plot(t,g);
subplot(2,2,3);plot(t,h);
subplot(2,2,4);plot(t,k);
