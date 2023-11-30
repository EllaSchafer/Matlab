clc;clear;


%% Test Case 1
mach = {'Polisher'; 'Lathe'}
PEr = [0.96; 0.45]
Pr = [386; 436]
% Test case output:


ProdData=table(mach,Pr,PEr)
ProdData.Properties.VariableNames={'MachineName','DailyProduction','DefectPercent'}