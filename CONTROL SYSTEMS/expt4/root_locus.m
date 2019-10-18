% Root locus of Transfer function
%                       1
% G(s) = ------------------------------
%          s^4 + 8 s^3 + 21 s^2 + 20s

ss = tf([1], [1 8 21 20 0]);
rlocus(ss);
