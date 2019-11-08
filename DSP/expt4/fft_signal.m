clc;
clear all;
fs = 1000;
ts = 1/fs;
t = 0:ts:2-ts;
y = 10 * sin(2*pi*200*t) + 5 * sin(2*pi*400*t) + 12 * sin(2*pi*300*t);
N = 2^nextpow2(fs);

% fast fourier transform functions
yy  = fft(y,N);
yyy = fftshift (yy);
f = fs * (-N/2: N/2 -1)/N ;

% Plot graphs
subplot(2,1,1);
plot(t,y)
xlabel('Frequency (hz)');
ylabel('Time domain signal');

subplot(2,1,2);
plot(f, (2 * abs(yyy/N)));
title('Frequency spectrum of given signal');
xlabel('Frequency (hz)');
ylabel('Amplitude (volt)');