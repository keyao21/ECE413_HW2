function [SubtractiveSoundModel] = create_subtractive_sound( instrument,input_freq,constants )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%    [SubtractiveSoundModel] = create_subtractive_sound( instrument,note,constants )
% 
% This function creates the chord given the instrument, note, and
% contstants
%
% OUTPUTS
%   soundChord = The output sound vector
%
% INPUTS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% fm synthesis 
f = input_freq;

% Create time vector
t = 0:1/constants.fs:2;

x = (1-exp(-t)).*sawtooth(2*pi*f*t);

% biquad filter 
y(1) = 0; 
y(2) = 0; 
b = [0 -1];

for n=3:length(x)
    y(n) = x(n) + b(1)*x(n-1) + b(2)*x(n-2) - (2*0.6*cosd(n/100))*y(n-1) - 0.3*y(n-2);
end 

SubtractiveSoundModel = y;
end






