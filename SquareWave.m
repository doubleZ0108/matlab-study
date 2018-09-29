function SquareWave(T,f,A,N)
%�ϳɷ����ĺ�����T->����ʱ�򳤶ȣ�f->����Ƶ��Hz��A->������ֵ��N->г���״�(Ҫ�ü��������ϳɣ�

figure;
axis equal;

t=0:0.0001:T;     %����ʱ�򳤶�
w=2*pi*f;       %����Ƶ��rad
subplot(2,1,1);
for n=1:N
    plot(t,4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t));
    hold on;
end
title('5�������ź�');

subplot(2,1,2);
sum=0;
for n=1:N
    sum=sum+4*A/pi*1/(2*n-1)*sin((2*n-1)*w*t);
end
plot(t,sum);
title('�ϳɵķ����ź�');
end