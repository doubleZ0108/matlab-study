function SquareWave(T,f,A,N)
%合成方波的函数：T->方波时域长度，f->方波频率Hz，A->方波幅值，N->谐波阶次(要用几个波来合成）

figure;
axis equal;

t=0:0.0001:T;     %方波时域长度
w=2*pi*f;       %方波频率rad
subplot(2,1,1);
for n=1:N
    plot(t,4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t));
    hold on;
end
title('5组正弦信号');

subplot(2,1,2);
sum=0;
for n=1:N
    sum=sum+4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t);
end
plot(t,sum);
title('合成的方波信号');
end