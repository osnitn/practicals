amplitude = 2;
[u,t] = gensig('square',5,30,0.1);

subplot(2,1,1)
plot(t, amplitude*u);
axis([0 30 -1.5*amplitude 1.5*amplitude]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Square Periodic Wave');

subplot(2,1,2)
[v1,t] = gensig('square',4,30,0.1);
[v2,t] = gensig('square',2,30,0.1);
[v3,t] = gensig('Square',6,30,0.1);
plot(t, u+v3+v2+v1);
axis([0 30 -5 5]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Square Wave with harmonics');
