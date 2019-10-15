% State space to transfer function conversion
% State Space matrix
A = [0 1 0; 0 0 1; -8 -50 -8];
% input matrix
B = [0; 0; 10];
% Output Matrix
C = [1 0 0];
% Direct Transmission matrix
D = [0];

% convert to Transfer function
[Num,Den] = ss2tf(A, B, C, D);

% transfer function
g = tf(Num,Den)