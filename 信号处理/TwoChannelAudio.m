%对双声道音频的处理

%只是处理这三行就够了，前面要把Hlp滤波器设置好
% [audio, FS] = audioread('test.mp3');
% audioNew = filter(Hlp,audio);
% audiowrite('new.wav', audioNew, FS);

[audio, FS] = audioread('test.mp3');
audioLeft = audio(:,1);
audioRight = audio(:,2);
subplot(3,2,1);
plot(audioLeft);
title('左声道时域波形');
subplot(3,2,2);
plot(audioRight);
title('右声道时域波形');

[M,N] = size(audio);
m = 0:M-1;
FAudio = fft(audio);
absAudio = abs(fftshift(FAudio));
angAudio = angle(fftshift(FAudio));
subplot(3,2,3);
plot(m-M/2, absAudio);
title('声音信号的幅频特性');
subplot(3,2,4);
plot(m-M/2, angAudio);
title('声音信号的相频特性');

audioNew = filter(Hlp,audio);
subplot(3,2,5);
plot(audioNew);
title('滤波后的时域波形');
FAudioNew = fft(audioNew);
subplot(3,2,6);
plot(m-M/2, abs(fftshift(FAudioNew)));
title('滤波后的幅频特性');

audiowrite('new.wav', audioNew, FS);