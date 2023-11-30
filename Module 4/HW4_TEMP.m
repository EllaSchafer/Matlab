%% Variables to be used
% Inputs
% Clemson_Temp.xlsx is a spreadsheet as described in the problem statement
% Year - character array which contains the sheet name corresponding to the year for which the stats are to be calculated

% Intermediate
% TempData - matrix containing all the numeric data from the Excel sheet

% Outputs
% MonthMax - 12x1 vector of the monthly maximums
% MonthMin - 12x1 vector of the monthly minimums
clc;clear
%% Inputs - Only edit this section if you are testing this code in MATLAB
%Generate_Year % Comment this out to test in MATLAB. This generates the variable Year.
% You also have to read in the Excel sheet. You will need to create your own copy of the Excel file to use when you run this code in MATLAB.
%% Test Case 1
% Run with attached Clemson_Temp.xlsx file
Year='Y2008'
% Test case output:
% MonthMax: [72; 70; 77; 85; 88; 99; 101; 101; 93; 85; 78; 74]
% MonthMin: [13; 23; 25; 33; 42; 54; 55; 60; 49; 31; 16; 20]
%% PROGRAM
% Start writing your program here
TempData=readmatrix("Clemson_Temp.xlsx",'Sheet',Year)
TD=TempData(2:end,3:end)
MonthMax=max(TD(1:2:end,:),[],2)
MonthMin=min(TD(2:2:end,:),[],2)
