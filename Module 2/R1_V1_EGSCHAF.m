%Ella Schafer   ENGR 1410-216   1/27/23

clear;clc;
 %% Variable creation
 ENR=[6,-1,15];
 RDM=randi([1,75],[3,4]);

 %% Equations
 Z=15*exp(ENR(end-1)+7);

 A=RDM(:,1);
 B=transpose(ENR);
 C=RDM(:,end);

 P=(-B+sqrt(B.^3+.5*A.*C))./A.*B;

%% Totals
rowTotal= sum(RDM,2);