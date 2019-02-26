function [soundSample] = create_sound( instrument,notes,constants )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION
%    [soundSample] = create_sound( instrument,notes,constants )
% 
% This function creates the chord given the instrument, notes, and
% contstants
%
% OUTPUTS
%   soundChord = The output sound vector
%
% INPUTS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

freq_ratios = [1 16/15 9/8 6/5 5/4 4/3 64/45 3/2 8/5 5/3 9/5 15/8 2/1]; 

if strcmp(instrument.temperament, 'Just') && length(notes) > 1
    root_freq = str_to_freq(notes{1}.note);
    switch instrument.mode
        case {'Major'}
            notes{2}.note = root_freq*freq_ratios(5);
            notes{3}.note = root_freq*freq_ratios(8);   
        case {'Minor'}
            notes{2}.note = root_freq*freq_ratios(4);
            notes{3}.note = root_freq*freq_ratios(8);   
        otherwise
            error('Improper mode')
    end 
end

if length(notes)==1
    switch instrument.sound
        case {'Additive'}
            [soundSample] = create_bell_sound(instrument, str_to_freq(notes.note), constants);
        case {'Subtractive'}
            [soundSample] = create_subtractive_sound(instrument, str_to_freq(notes.note), constants);
        case {'FM'}
            [soundSample] = create_fmbell_sound(instrument, str_to_freq(notes.note), constants);
        case {'Waveshaper'}
            [soundSample] = create_clarinet_sound(instrument, str_to_freq(notes.note), constants);    
        otherwise
            error('Inproper sound specified')
    end
else
    switch instrument.sound
        case {'Additive'}
            soundSample = create_bell_sound(instrument, str_to_freq(notes{1}.note), constants);
            for i=2:length(notes)
                soundSample = sum([soundSample; create_bell_sound(instrument, str_to_freq(notes{i}.note), constants)]);
            end
        case {'Subtractive'}
            soundSample = create_subtractive_sound(instrument, str_to_freq(notes{1}.note), constants);
            for i=2:length(notes)
                soundSample = sum([soundSample; create_subtractive_sound(instrument, str_to_freq(notes{i}.note), constants)]);
            end
        case ['FM']
            soundSample = create_fmbell_sound(instrument, str_to_freq(notes{1}.note), constants);
            for i=2:length(notes)
                soundSample = sum([soundSample; create_fmbell_sound(instrument, str_to_freq(notes{i}.note), constants)]);
            end
        case ['Waveshaper']
            soundSample = create_clarinet_sound(instrument, str_to_freq(notes{1}.note), constants);
            for i=2:length(notes)
                soundSample = sum([soundSample; create_clarinet_sound(instrument, str_to_freq(notes{i}.note), constants)]);
            end    
        otherwise
            error('Inproper sound specified')
    end

end





