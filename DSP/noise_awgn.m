% generate raw sine signal
[x,t] = gensig('sine',5,30,0.1);

% add Gaussian white noise using awgn()
y = awgn(x,0.01,'measured');

% Plot the signals
plot(t,[x y],'LineWidth',1.5)
legend('Original Signal','Signal with AWGN')
xlabel('Time (sec)');
ylabel('Amplitude');