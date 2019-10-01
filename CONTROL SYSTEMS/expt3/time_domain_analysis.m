% time domain analysis of second-order system
%                 100
%  G(s) =  -----------------
%            s^2 + 2s + 100

N = [100];        % numerator
D = [1 2 100];    % denominator

sys = tf(N,D);

% generate step response
step(sys);

% >>stepinfo(sys)
% 
%   struct with fields:
% 
%         RiseTime: 0.1127
%     SettlingTime: 3.8373
%      SettlingMin: 0.4685
%      SettlingMax: 1.7292
%        Overshoot: 72.9156
%       Undershoot: 0
%             Peak: 1.7292
%         PeakTime: 0.3142
