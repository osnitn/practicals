% transfer function to state space model conversion for
%                   10
%   G(s) = -------------------------
%           s^3 + 8 s^2 + 50 s + 8

% Transfer function
num = [10];
den = [1 8 50 8];

% Conversion to state space 
[a, b, c, d] = tf2ss(num, den)

[n,d] = ss2tf(A,B,C,D);

g = tf(n,d)