Fs = 16000;
f = 2;
n = [0:1/Fs:10];
x = 40 * sin(2*pi*n*f);

subplot(2,1,1);
plot(x);
%axis([0 25 -1.1 1.1]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine Wave without noise');

%y = awgn(x,30);
noise_sig = rand(3, length(x));
y = x+noise_sig;

subplot(2,1,2);
plot(y);
%axis([0 25 -1.1 1.1]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine Wave with noise');
