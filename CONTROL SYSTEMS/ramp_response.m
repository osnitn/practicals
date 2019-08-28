numerator = [2 7 5 0];
denominator = [1 6 9 6 5];
g = tf(numerator,denominator);

t = 0:0.01:30;
amp = 1;
ramp = amp*t;

[y,x] = lsim(g, ramp, t);
plot(y);