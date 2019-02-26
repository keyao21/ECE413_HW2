function [additiveSoundSample] = create_bell_sound( instrument,input_freq,constants )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%    [additiveSoundSample] = create_sound( instrument,note,constants )
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

%% additive synthesis 

% Create time vector
t = 0:1/constants.fs:constants.durationChord;

% Create multiple sinusoids (with distinct freqs and amps) according to
% Jerse 4.28

% Amplitude, duration, and frequencies of each spectral component of the
% bell
AMP = 1;
A(1) = AMP;
A(2) = AMP*.67;
A(3) = AMP;
A(4) = AMP*1.8;
A(5) = AMP*2.67;
A(6) = AMP*1.67;
A(7) = AMP*1.46;
A(8) = AMP*1.33;
A(9) = AMP*1.33;
A(10) = AMP;
A(11) = AMP*1.33;

DUR = 20;  % according to Jerse
D(1) = DUR;
D(2) = DUR*.9;
D(3) = DUR*.65;
D(4) = DUR*.55;
D(5) = DUR*.325;
D(6) = DUR*.35;
D(7) = DUR*.25;
D(8) = DUR*.2;
D(9) = DUR*.15;
D(10) = DUR*.1;
D(11) = DUR*.075;
D_ = D.^-1;

% FREQ = str_to_freq(notes.note);  % middle A harcode for now...
FREQ = input_freq;
R(1,:) = FREQ*.56;
R(2,:) = FREQ*.56 + 1;
R(3,:) = FREQ*.92;
R(4,:) = FREQ*.92 + 1.7;
R(5,:) = FREQ*1.19;
R(6,:) = FREQ*1.7;
R(7,:) = FREQ*2;
R(8,:) = FREQ*2.74;
R(9,:) = FREQ*3;
R(10,:) = FREQ*3.76;
R(11,:) = FREQ*4.07;

modulated_amps = A(:).*exp(-t).*sin(2.*pi.*D_(:).*t ); % 11 x length(t)
t_dup = repmat(t, length(A), 1); % 11 x length(t)

components = modulated_amps.*sin( 2.*pi.*R(:,:).*t_dup );
sum_components = sum( components );

additiveSoundSample = sum_components;
end

