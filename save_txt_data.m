%In this part we need to ender function name to our matlab function.
%save_txt_data(audiofile_name) We need to add our audiofile name between ""
%Our function will give our plot and save the .mat data with given format
%1 and 0 (ones and zeroes)

function save_txt_data(audiofile_name)
%We converted our names to string to process our recorded audio name
audioname=string(audiofile_name);
audioname = extractBefore(audioname,".");

%We obtain and save our filtered matrix
[txtdata]=spectrogram3(audiofile_name);
S.(audioname) = txtdata;
savename='datas_audio\'+audioname+'.mat';
save(savename, '-struct', 'S')
end
