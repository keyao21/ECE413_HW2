function [freq] = str_to_freq(note)
% take in the str field of the note struct

if strcmp(class(note), 'double')
    freq = note;
else
    % note = note_struct.note;
    if strcmp(note,'B')
        freq = 493.8833;
    elseif strcmp(note,'A#')
        freq = 466.1638;
    elseif strcmp(note,'Bb')
        freq = 466.1638;
    elseif strcmp(note,'A')
        freq = 440;
    elseif strcmp(note,'G#')
        freq = 415.3047;
    elseif strcmp(note,'Ab')
        freq = 415.3047;
    elseif strcmp(note,'G')
        freq = 391.9954;
    elseif strcmp(note,'F#')
        freq = 369.9944;
    elseif strcmp(note,'Gb')
        freq = 369.9944;
    elseif strcmp(note,'F')
        freq = 349.2282;
    elseif strcmp(note,'E')
        freq = 329.6276;
    elseif strcmp(note,'D#')
        freq = 311.127;
    elseif strcmp(note,'Eb')
        freq = 311.127;
    elseif strcmp(note,'D')
        freq = 293.6648;
    elseif strcmp(note,'C#')
        freq = 277.1826;
    elseif strcmp(note,'Db')
        freq = 277.1826;
    elseif strcmp(note,'C')
        freq = 261.6256;
    elseif strcmp(note,'B8')
        freq = 7902.133;
    elseif strcmp(note,'A#8')
        freq = 7458.62;
    elseif strcmp(note,'Bb8')
        freq = 7458.62;
    elseif strcmp(note,'A8')
        freq = 7040;
    elseif strcmp(note,'G#8')
        freq = 6644.875;
    elseif strcmp(note,'Ab8')
        freq = 6644.875;
    elseif strcmp(note,'G8')
        freq = 6271.927;
    elseif strcmp(note,'F#8')
        freq = 5919.911;
    elseif strcmp(note,'Gb8')
        freq = 5919.911;
    elseif strcmp(note,'F8')
        freq = 5587.652;
    elseif strcmp(note,'E8')
        freq = 5274.041;
    elseif strcmp(note,'D#8')
        freq = 4978.032;
    elseif strcmp(note,'Eb8')
        freq = 4978.032;
    elseif strcmp(note,'D8')
        freq = 4698.636;
    elseif strcmp(note,'C#8')
        freq = 4434.922;
    elseif strcmp(note,'Db8')
        freq = 4434.922;
    elseif strcmp(note,'C8')
        freq = 4186.009;
    elseif strcmp(note,'B7')
        freq = 3951.066;
    elseif strcmp(note,'A#7')
        freq = 3729.31;
    elseif strcmp(note,'Bb7')
        freq = 3729.31;
    elseif strcmp(note,'A7')
        freq = 3520;
    elseif strcmp(note,'G#7')
        freq = 3322.438;
    elseif strcmp(note,'Ab7')
        freq = 3322.438;
    elseif strcmp(note,'G7')
        freq = 3135.963;
    elseif strcmp(note,'F#7')
        freq = 2959.955;
    elseif strcmp(note,'Gb7')
        freq = 2959.955;
    elseif strcmp(note,'F7')
        freq = 2793.826;
    elseif strcmp(note,'E7')
        freq = 2637.02;
    elseif strcmp(note,'D#7')
        freq = 2489.016;
    elseif strcmp(note,'Eb7')
        freq = 2489.016;
    elseif strcmp(note,'D7')
        freq = 2349.318;
    elseif strcmp(note,'C#7')
        freq = 2217.461;
    elseif strcmp(note,'Db7')
        freq = 2217.461;
    elseif strcmp(note,'C7')
        freq = 2093.005;
    elseif strcmp(note,'B6')
        freq = 1975.533;
    elseif strcmp(note,'A#6')
        freq = 1864.655;
    elseif strcmp(note,'Bb6')
        freq = 1864.655;
    elseif strcmp(note,'A6')
        freq = 1760;
    elseif strcmp(note,'G#6')
        freq = 1661.219;
    elseif strcmp(note,'Ab6')
        freq = 1661.219;
    elseif strcmp(note,'G6')
        freq = 1567.982;
    elseif strcmp(note,'F#6')
        freq = 1479.978;
    elseif strcmp(note,'Gb6')
        freq = 1479.978;
    elseif strcmp(note,'F6')
        freq = 1396.913;
    elseif strcmp(note,'E6')
        freq = 1318.51;
    elseif strcmp(note,'D#6')
        freq = 1244.508;
    elseif strcmp(note,'Eb6')
        freq = 1244.508;
    elseif strcmp(note,'D6')
        freq = 1174.659;
    elseif strcmp(note,'C#6')
        freq = 1108.731;
    elseif strcmp(note,'Db6')
        freq = 1108.731;
    elseif strcmp(note,'C6')
        freq = 1046.502;
    elseif strcmp(note,'B5')
        freq = 987.7666;
    elseif strcmp(note,'A#5')
        freq = 932.3275;
    elseif strcmp(note,'Bb5')
        freq = 932.3275;
    elseif strcmp(note,'A5')
        freq = 880;
    elseif strcmp(note,'G#5')
        freq = 830.6094;
    elseif strcmp(note,'Ab5')
        freq = 830.6094;
    elseif strcmp(note,'G5')
        freq = 783.9909;
    elseif strcmp(note,'F#5')
        freq = 739.9888;
    elseif strcmp(note,'Gb5')
        freq = 739.9888;
    elseif strcmp(note,'F5')
        freq = 698.4565;
    elseif strcmp(note,'E5')
        freq = 659.2551;
    elseif strcmp(note,'D#5')
        freq = 622.254;
    elseif strcmp(note,'Eb5')
        freq = 622.254;
    elseif strcmp(note,'D5')
        freq = 587.3295;
    elseif strcmp(note,'C#5')
        freq = 554.3653;
    elseif strcmp(note,'Db5')
        freq = 554.3653;
    elseif strcmp(note,'C5')
        freq = 523.2511;
    elseif strcmp(note,'B4')
        freq = 493.8833;
    elseif strcmp(note,'A#4')
        freq = 466.1638;
    elseif strcmp(note,'Bb4')
        freq = 466.1638;
    elseif strcmp(note,'A4')
        freq = 440;
    elseif strcmp(note,'G#4')
        freq = 415.3047;
    elseif strcmp(note,'Ab4')
        freq = 415.3047;
    elseif strcmp(note,'G4')
        freq = 391.9954;
    elseif strcmp(note,'F#4')
        freq = 369.9944;
    elseif strcmp(note,'Gb4')
        freq = 369.9944;
    elseif strcmp(note,'F4')
        freq = 349.2282;
    elseif strcmp(note,'E4')
        freq = 329.6276;
    elseif strcmp(note,'D#4')
        freq = 311.127;
    elseif strcmp(note,'Eb4')
        freq = 311.127;
    elseif strcmp(note,'D4')
        freq = 293.6648;
    elseif strcmp(note,'C#4')
        freq = 277.1826;
    elseif strcmp(note,'Db4')
        freq = 277.1826;
    elseif strcmp(note,'C4')
        freq = 261.6256;
    elseif strcmp(note,'B3')
        freq = 246.9417;
    elseif strcmp(note,'A#3')
        freq = 233.0819;
    elseif strcmp(note,'Bb3')
        freq = 233.0819;
    elseif strcmp(note,'A3')
        freq = 220;
    elseif strcmp(note,'G#3')
        freq = 207.6523;
    elseif strcmp(note,'Ab3')
        freq = 207.6523;
    elseif strcmp(note,'G3')
        freq = 195.9977;
    elseif strcmp(note,'F#3')
        freq = 184.9972;
    elseif strcmp(note,'Gb3')
        freq = 184.9972;
    elseif strcmp(note,'F3')
        freq = 174.6141;
    elseif strcmp(note,'E3')
        freq = 164.8138;
    elseif strcmp(note,'D#3')
        freq = 155.5635;
    elseif strcmp(note,'Eb3')
        freq = 155.5635;
    elseif strcmp(note,'D3')
        freq = 146.8324;
    elseif strcmp(note,'C#3')
        freq = 138.5913;
    elseif strcmp(note,'Db3')
        freq = 138.5913;
    elseif strcmp(note,'C3')
        freq = 130.8128;
    elseif strcmp(note,'B2')
        freq = 123.4708;
    elseif strcmp(note,'A#2')
        freq = 116.5409;
    elseif strcmp(note,'Bb2')
        freq = 116.5409;
    elseif strcmp(note,'A2')
        freq = 110;
    elseif strcmp(note,'G#2')
        freq = 103.8262;
    elseif strcmp(note,'Ab2')
        freq = 103.8262;
    elseif strcmp(note,'G2')
        freq = 97.99886;
    elseif strcmp(note,'F#2')
        freq = 92.49861;
    elseif strcmp(note,'Gb2')
        freq = 92.49861;
    elseif strcmp(note,'F2')
        freq = 87.30706;
    elseif strcmp(note,'E2')
        freq = 82.40689;
    elseif strcmp(note,'D#2')
        freq = 77.78175;
    elseif strcmp(note,'Eb2')
        freq = 77.78175;
    elseif strcmp(note,'D2')
        freq = 73.41619;
    elseif strcmp(note,'C#2')
        freq = 69.29566;
    elseif strcmp(note,'Db2')
        freq = 69.29566;
    elseif strcmp(note,'C2')
        freq = 65.40639;
    elseif strcmp(note,'B1')
        freq = 61.73541;
    elseif strcmp(note,'A#1')
        freq = 58.27047;
    elseif strcmp(note,'Bb1')
        freq = 58.27047;
    elseif strcmp(note,'A1')
        freq = 55;
    elseif strcmp(note,'G#1')
        freq = 51.91309;
    elseif strcmp(note,'Ab1')
        freq = 51.91309;
    elseif strcmp(note,'G1')
        freq = 48.99943;
    elseif strcmp(note,'F#1')
        freq = 46.2493;
    elseif strcmp(note,'Gb1')
        freq = 46.2493;
    elseif strcmp(note,'F1')
        freq = 43.65353;
    elseif strcmp(note,'E1')
        freq = 41.20344;
    elseif strcmp(note,'D#1')
        freq = 38.89087;
    elseif strcmp(note,'Eb1')
        freq = 38.89087;
    elseif strcmp(note,'D1')
        freq = 36.7081;
    elseif strcmp(note,'C#1')
        freq = 34.64783;
    elseif strcmp(note,'Db1')
        freq = 34.64783;
    elseif strcmp(note,'C1')
        freq = 32.7032;
    elseif strcmp(note,'B0')
        freq = 30.86771;
    elseif strcmp(note,'A#0')
        freq = 29.13524;
    elseif strcmp(note,'Bb0')
        freq = 29.13524;
    elseif strcmp(note,'A0')
        freq = 27.5;
    elseif strcmp(note,'G#0')
        freq = 25.95654;
    elseif strcmp(note,'Ab0')
        freq = 25.95654;
    elseif strcmp(note,'G0')
        freq = 24.49971;
    elseif strcmp(note,'F#0')
        freq = 23.12465;
    elseif strcmp(note,'Gb0')
        freq = 23.12465;
    elseif strcmp(note,'F0')
        freq = 21.82676;
    elseif strcmp(note,'E0')
        freq = 20.60172;
    elseif strcmp(note,'D#0')
        freq = 19.44544;
    elseif strcmp(note,'Eb0')
        freq = 19.44544;
    elseif strcmp(note,'D0')
        freq = 18.35405;
    elseif strcmp(note,'C#0')
        freq = 17.32391;
    elseif strcmp(note,'Db0')
        freq = 17.32391;
    elseif strcmp(note,'C0')
        freq = 16.3516;
    end
end


