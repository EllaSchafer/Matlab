%% Variables to be used
% Inputs
% Target - the target value

% Outputs
% lastNum - the last number added to the sum to make the total be greater than the Target value
clc;clear
%% Inputs
% This generates a scalar Target, replacing the user input in the following line.
if ~exist('Target','var')
    Target=randi([2 50])
end
% Target = input('Enter the target value: ');

%% Program
% Start writing your program here
Target=9
LastNum=1
Bro=0
while Bro<Target
    LastNum=LastNum+2;
    Bro=Bro+LastNum;
end
disp(LastNum)