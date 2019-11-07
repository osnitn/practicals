amplitude = 2;
[u,t] = gensig('sine',5,30,0.1);

subplot(2,1,1)
plot(t, amplitude*u);
axis([0 30 -1.5*amplitude 1.5*amplitude]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine Periodic Wave');

subplot(2,1,2)
[noise,t] = gensig('sine',4,30,0.1);
plot(t, u+noise);
axis([0 30 -5 5]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine Wave with noise');
