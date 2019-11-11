clc;
clear all;
fs = 100e3;
f  = 5e3;
ts = 1/fs;
t  = 0:ts: 5e-3-ts
X  = 5 * sin (2* pi* f * t);
Z  = awgn(X, 1);

% plot the output - sinusoidal signal;
figure;
plot(t,X);
title('Sinusoidal signal');

% Plot 2 - signal with noise
figure;
plot(t,Z);
title('Signal with noise');

nfft  = length(Z)
nfft2 = 2^nextpow2(nfft);

% fast fourier transformation
Fy = fft(Z, nfft2);
Fy = Fy(1:nfft2/2);

xfft = fs * (0:nfft2/2 - 1)/nfft2;

% plot3
figure;
plot(xfft, abs( Fy/max(Fy)));

order = 2; % order of filter
wc = f/(fs/2); % sampling rate
% Butterworth filter
[b,a] = butter(0, wc, 'fdesign.lowpass');
x_f_iir = filter(b,a,Z);

figure;
plot(t,x_f_iir);
title('Filtered Sinusoidal Wave');
