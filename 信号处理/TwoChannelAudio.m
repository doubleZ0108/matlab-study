%��˫������Ƶ�Ĵ���

%ֻ�Ǵ��������о͹��ˣ�ǰ��Ҫ��Hlp�˲������ú�
% [audio, FS] = audioread('test.mp3');
% audioNew = filter(Hlp,audio);
% audiowrite('new.wav', audioNew, FS);

[audio, FS] = audioread('test.mp3');
audioLeft = audio(:,1);
audioRight = audio(:,2);
subplot(3,2,1);
plot(audioLeft);
title('������ʱ����');
subplot(3,2,2);
plot(audioRight);
title('������ʱ����');

[M,N] = size(audio);
m = 0:M-1;
FAudio = fft(audio);
absAudio = abs(fftshift(FAudio));
angAudio = angle(fftshift(FAudio));
subplot(3,2,3);
plot(m-M/2, absAudio);
title('�����źŵķ�Ƶ����');
subplot(3,2,4);
plot(m-M/2, angAudio);
title('�����źŵ���Ƶ����');

audioNew = filter(Hlp,audio);
subplot(3,2,5);
plot(audioNew);
title('�˲����ʱ����');
FAudioNew = fft(audioNew);
subplot(3,2,6);
plot(m-M/2, abs(fftshift(FAudioNew)));
title('�˲���ķ�Ƶ����');

audiowrite('new.wav', audioNew, FS);