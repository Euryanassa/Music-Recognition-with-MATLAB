function mp3data_info()
audio_files=dir('All_mp3_DATAS\*.mp3');

for i=1:length(audio_files)
    audio_file=strcat('All_mp3_DATAS\',audio_files(i).name);
    audioname = extractAfter(audio_file,"All_mp3_DATAS\");
    [y,Fs] = audioread(audio_file);
    % code to resample audio
    Fs_new = 5500;
    % Take ratio from our old sample
    [Numer, Denom] = rat(Fs_new/Fs);
    y_new = resample(y(:), Numer, Denom);
    fprintf('%s :\n\n nor y: %i\n\n new Y: %i\n\n',audioname,length(y),length(y_new))
end
