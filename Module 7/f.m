% Ella Schafer  ENGR 1410-216   3/11/2023

clc;clear;
%% Zeno's Paradox
Dist=5;
steps=0;
while Dist>1.5*10^-10
    Dist=Dist/2;
    steps=steps+1;
end

%% Sample Reduction
load("ENGR 1410 Review 3 Data.mat","WFull3");
[row,col]=size(WFull3);

WRed=[WFull3(1,1);WFull3(2,1)];

C=1
for Val=2:col
    
    if abs(WFull3(2,Val)-WRed(2,C))>.25||WFull3(1,Val)==30+WRed(1,C)
        C=C+1
        WRed(2,C)=WFull3(2,Val)
        WRed(1,C)=WFull3(1,Val)
    end
end
