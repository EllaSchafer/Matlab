%% Variables to be used
% Input
% "E_Coli Incubation.xlsx" spreadsheet

% Outputs
% Unit - character array of temperature unit listed in spreadsheet 
% Temp - scalar containing temperature listed in spreadsheet
% Status - character array containing appropriate status message based on temperature

%% Inputs
%Generate_Spreadsheet % This creates the "E_Coli Incubation.xlsx" spreadsheet for your code
clc;clear;
%% Program
% Start writing your programs here
EC=readtable('E_Coli Incubation.xlsx')
Unit=EC.Var3{1}
Temp=EC.Var2(1)
if strcmpi(Unit,'Fahrenheit')
    if Temp>=(34*1.8+32)&&Temp<=(36*1.8+32)
        Status='In Range'
    else
        Status='Out of Range'
    end
elseif strcmpi(Unit,'Celsius')
    if Temp>=34&&Temp<=36
        Status='In Range'
    else
        Status='Out of Range'
    end
else
    Status='Invalid Unit'
end


