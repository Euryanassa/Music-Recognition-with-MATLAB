%This is our recorder for our system.
%It records sound with:
%Fs = 44100
%Channel = Mono (1)
%Bits = 16
%to execute, recorder1(Time How Long You Wish)

function recorder1(rec_time)
%We created recorder object to record with given values
recObj= audiorecorder(44100,16,1);

%Recording Process
disp('Start speaking.')
recordblocking(recObj,rec_time);
disp('End of Recording.');

%It plays sound if you wish
%play(recObj);

%In this part we save our file as wav file
y=getaudiodata(recObj);
audiowrite('recordedmusic.wav', y, 44100);
save_txt_data('recordedmusic.wav');
end
