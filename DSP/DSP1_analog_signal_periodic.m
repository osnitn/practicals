amplitude = 2;
[u,t] = gensig('sine',5,30,0.1);

plot(t, amplitude*u);
axis([0 30 -1.5*amplitude 1.5*amplitude]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sine Periodic Wave')