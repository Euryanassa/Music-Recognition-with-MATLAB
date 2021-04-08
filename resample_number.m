function [y_new,Fs_new]=resample_number(audio_file,Fs_value)
% Code to read audio files with selection
Checker=extractAfter(audio_file,'.');
%Classing process to use this code for both data mining and execution
%process. wav files are recorded, mp3 files are songs to mine!
if Checker=='mp3'
    audio_file='MP3_Files\'+string(audio_file);
end
[y,Fs] = audioread(audio_file);
% code to resample audio
Fs_new = Fs_value;
% Take ratio from our old sample
[Numer, Denom] = rat(Fs_new/Fs);
y_new = resample(y(:), Numer, Denom);
end

