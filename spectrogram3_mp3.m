%This code part is for our MP3 DATA MINING!!!!!!!!!!
%This code block is creates spectrogram graph with given limits and values.
%This part also filters our spectrogram with threshold value and print the
%our 1,0 matrix of figure and obtain our fingerprint.
%CALL COMMAND:
%    [fingerprinted matrix value name]=spectrogram3('audiofile name')
function [spg2]=spectrogram_mp3(audiofile)
%[y,fs]=audioread('Church_record.wav');
%y=y(:);
[a,fs2]=resample_number(audiofile,5500);

%This part is our key part of spectrogram to get best result after
%filtering.
window=hamming(512);
noverlap=256;
nfft=1024;

[S,F,T,P]=spectrogram(a,window,noverlap,nfft,fs2,'yaxis');

%This part takes SURF and print our graph for visualize and test our
%spectrogram. Not much necessary for our whole program. It just looks cool!
surf(T,F,10*log10(P),'edgecolor','none');
axis tight;
view(0,90);
colormap(hot)
set(gca,'clim',[-80,-30]);

%Our tested threshold coefficiant is here (0,00032)
threshold = 0.00032*max(P,[],'all'); % equivalement in linear scale to thresholded dB of max (in dB) 

spg_thres = zeros(size(P));
ind = find(P>threshold);
spg_thres(ind) = 1;

%This part cut in half our doubled spectrogram matrix of MP3 files and
%also we filtered lower frequencies to get rid of environmental noise

[boy,en]=size(spg_thres);
spg2=[];
a=23;
for ii=a:513
spg2(ii-(a-1),:)=spg_thres(ii,1:floor(en/2)+1);
end
%spg2=spg1(:,floor(en/2)-1:end);

%This part gives us filtered image of our audio.
figure(),imagesc(T,F,spg2);
axis('xy');
xlabel("Samples")
ylabel("Normalized Frequency (x pi radians/sample)")
colormap gray
c=colorbar;
end
