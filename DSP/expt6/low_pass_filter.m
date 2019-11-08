Fs = 100;
T  = 1/Fs;
t  = 0:T:1-T;
% generate signal
s  = sin(2 * pi * 10 * t);
% generate noise
noise = 0.5 * randn(size(t));
% input signal with random noise
x = s + noise;

plot(x)
shg
plot(x)

% low pass filter
d = designfilt('lowpassfir','FilterOrder',5,'CutOffFrequency',11,'SampleRate',Fs);

% output - filtered waveform
y = filter(d,x)

plot(y)

plot(X), hold on; plot(y)
