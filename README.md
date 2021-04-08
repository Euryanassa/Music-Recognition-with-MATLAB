# Music-Recognition-AI-with-MATLAB-by-Altemur
Music Recognition AI with MATLAB by Altemur

| Command | Description |
| --- | --- |
| `BOOM` | Execution command for whole code. It finds your music |
| `spectrogram3` | This code block is creates filtered spectrogram graph with given limits and values. |
| `spectrogram3_mp3` | Same with spectrogram3 but it also filters mp3 files and it used by mp3data_collector function |
| `save_txt_data` | Our function will give our plot and save the .mat data with given format 1 and 0 (ones and zeroes) |
| `mp3data_collector` | This code block is help to mine our mp3 data form MP3_Files File. |
| `resample_number` | It classify mp3 and wav files and resamples to our audio signal |

### BOOM()
This code is an execution code for whole program. You should just write BOOM() to execute program! Have Fun!
Firstly it calls recorder1() function to record our music for 5 second.
Secondly, it calls compare algorithms and get best match for our program and displays your matched song name and time spent while program was searching song.

#### Example Output:
##### Call Command:
>BOOM()
##### Output:
Start speaking.
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
[ATO_GRAPHS](https://user-images.githubusercontent.com/67932543/114042937-893a2800-988e-11eb-92f0-16f038d683f2.png)



