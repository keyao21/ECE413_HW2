function [FMSoundSample] = create_fmbell_sound( instrument,input_freq,constants )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%    [FMSoundSample] = create_create_fmbell_sound_sound( instrument,note,constants )
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

% Create time vector
% t = 0:1/constants.fs:constants.durationChord;

% Create bell according to Jerse 5.9

AMP = 1;

DUR = 15;  % according to Jerse
DUR_inv = DUR.^-1;

% FREQ_M = 280; 
% FREQ_C = 200;


FREQ_C = input_freq;
FREQ_M = (280/200)*FREQ_C;

IMAX = 10;

t = 0:1/constants.fs:DUR;

MOD_FREQ = AMP.*exp(-t).*IMAX.*sin(2.*pi.*FREQ_M.*t);
FMSoundSample = AMP.*exp(-t).*sin( 2.*pi.*FREQ_C.*t + MOD_FREQ );


end

