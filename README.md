# Music-Recognition-with-MATLAB-by-Altemur
### For full version of the code, Please Mail Me:altemur.celikayar@gmail.com
Music Recognition AI with MATLAB by Altemur

| Command | Description |
| --- | --- |
| `BOOM` | Execution command for whole code. It finds your music |
| `spectrogram3` | This code block is creates filtered spectrogram graph with given limits and values. (UPDATE) both mp3 and recorded file enters Spectrogram in spectrogram3.m file (To ask this file, mail me please)|
| `save_txt_data` | Our function will give our plot and save the .mat data with given format 1 and 0 (ones and zeroes) |
| `mp3data_collector` | This code block is help to mine our mp3 data form MP3_Files File. |
| `resample_number` | It classify mp3 and wav files and resamples to our audio signal |
| `compare_algorithm` | It compares matrix of recorded file with mp3 and finds the highest percentage of match |
| `recorder1` | Records audio with 44100/16Bit/1Channel |

### BOOM()
This code is an execution code for whole program. You should just write BOOM() to execute program! Have Fun!
Firstly it calls recorder1() function to record our music for 5 second.
Secondly, it calls compare algorithms and get best match for our program and displays your matched song name and time spent while program was searching song.

#### Example Output:
##### Call Command:
>BOOM()
##### Output:
>Start speaking.
End of Recording.
Elapsed time is 2.974238 seconds.
ans =
    'Tears_Weekend'

### spectrogram3()

This code block is creates spectrogram graph with given limits and values.
This part also filters our spectrogram with threshold value and print the
our 1,0 matrix of figure and obtain our fingerprint.
CALL COMMAND:
>[fingerprinted matrix value name]=spectrogram3('audiofile name')
It also takes SURF plot and print our graph for visualize and test our !spectrogram. Not much necessary for our whole program. It just looks cool!
#####
![ATO_GRAPHS](https://user-images.githubusercontent.com/67932543/114042937-893a2800-988e-11eb-92f0-16f038d683f2.png)

### spectrogram_mp3() 
Same with spectrogram but it filters only mp3 files and only mp3data_collector.m uses this spectrogram command for mining.

![ATO2_Filtered to half](https://user-images.githubusercontent.com/67932543/114043646-25642f00-988f-11eb-9199-30ce593aa407.png)

### save_txt_data()

This part we enter function name to our matlab function. We need to add our audiofile name between ""
Our function will give our plot and save the .mat data with given format in 1 and 0 (ones and zeroes)
>save_txt_data(audiofile_name)
>
### mp3data_colector()

This code block is help to mine our mp3 data form MP3_Files File. Just write mp3data_collector() to execute this command line. It opens our mp3 files by order and process one by one and collect them from our datas_audio folder.

### resample_number()

It resamples our audio signal to process as fast as possible.
>[y_new,Fs_new]=resample_number(audio_file,Fs_value) 

