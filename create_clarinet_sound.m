function [WaveshapingSoundSample] = create_clarinet_sound( instrument,input_freq,constants )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%    [WaveshapingSoundSample] = create_clarinet_sound( instrument,note,constants )
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


%%
t = 0:1/constants.fs:constants.durationChord;

% f = str_to_freq(note);
f = input_freq;
asd_env = asd_envelope(t, 255); 

C_signal = asd_env.*sin(2.*pi.*f.*t) + 256;
TF_out = F(C_signal);
AMP = 1;
WaveshapingSoundSample = AMP.*TF_out;




end



