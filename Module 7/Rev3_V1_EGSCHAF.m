% Ella Schafer  Engr 1410-216   3/10/2023

clc;clear;
%% zeno's Paradox
Dist=5;
Steps=0;
while Dist>1.5*10^-10
    Dist=Dist/2;
    Steps=Steps+1;
end

%% Sample Reduction
load("ENGR 1410 Review 3 Data.mat",'WFull3')
[row,col]=size(WFull3);
WRed=[];
C=1
for count=2:col
    Bro=abs(WFull3(2,count)-WFull3(2,count-1));
    if bro>.25||WFull3(1,count)>WRed(1,count)+30
        C=C+1
        WRed(2,C)=WFull3(2,C);
        WRed(1,C)=WFull3(1,C);
    end
end


