Fs = 100;
T  = 1/Fs;
t  = 0:T:1-T;
% generate signal
s  = sin(2 * pi * 10 * t);
% generate noise
noise = 0.5 * randn(size(t));
% input signal with random noise
x = s + noise;

% Plot the input signal
figure;
plot(x);
title('Input Signal');
xlabel('Time (S)');
ylabel('Amplitude');


% low pass filter
d = designfilt('lowpassfir','FilterOrder',5,'CutOffFrequency',11,'SampleRate',Fs);

% output - filtered waveform
y = filter(d,x);

% Plot the input signal
figure;
plot(y,  'g');
title('filtered signal');
xlabel('Time (S)');
ylabel('Amplitude');

% Comparative representation of input and output waveforms
figure;
plot(x), hold on; plot(y);
title('Low Pass filter');
xlabel('Time (S)');
ylabel('Amplitude');