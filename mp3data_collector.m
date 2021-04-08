%This code block is help to mine our mp3 data form MP3_Files File. Just
%write mp3data_collector() to execute this command line

function mp3data_collector()
audio_files=dir('MP3_Files\*.mp3');
%This part opens our mp3 file by order and process one by one and collect
%them to our datas_audio folder.
for i=1:length(audio_files)
    aud_file=strcat('MP3_Files\',audio_files(i).name);
    audioname = extractAfter(aud_file,"MP3_Files\");

    save_txt_data(audioname);
end
%close all
end
