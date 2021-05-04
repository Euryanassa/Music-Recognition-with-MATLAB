%compare_algorithm('counting_stars.mat','girenfile.mat')
function [MAX]=compare_algorithm(Music1,Sample1)

load("datas_audio/"+Music1)
load("datas_audio/"+Sample1)
Music1 = extractBefore(Music1,".");
Sample1 = extractBefore(Sample1,".");
M1=eval(Music1);
S1=eval(Sample1);
[a,b] = size(M1);
[c,d] = size(S1);
sira = 1;
list1=[];
for SS = 1:b-d+1
    count = 0;
    total_white=0;
    for jj = sira:d+(sira-1)
        for ii = 1:57
            if M1(ii,jj)==1 || S1(ii,jj-sira+1)==1
                total_white=total_white+1;
                if M1(ii,jj)==S1(ii,jj-sira+1)
                    count=count+1;          
                end
            end
        end
    end
    sira=sira+1;
    CC=count/total_white;
    list1(end+1) = CC;
end
MAX=max(list1);
end

