%This code is an execution code for whole program. You should just write
%BOOM() to execute program! Have Fun!
function [YourMusic]=BOOM()
%This command calls recorder1(rec_time) .m file
recorder1(5);

%This part of the code calls compare algorithms and get best match for our
%program and displays your matched song name and time spent while program
%was searching song.
mat_file=dir('datas_audio\*.mat');
YourMusic='NaN';
Higher=0;
tic
for i=1:length(mat_file)
    aud_file=strcat('datas_audio\',mat_file(i).name);
    audioMAT = extractAfter(aud_file,"datas_audio\");
    if audioMAT~=string('recordedmusic.mat')
        [C_OUT]=compare_algorithm(audioMAT,'recordedmusic.mat');       
        if C_OUT>Higher
            Higher=C_OUT;
            YourMusic=extractBefore(audioMAT,".");
        end       
    end
end
toc
end
