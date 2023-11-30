% Ella Schafer  ENGR 1410-216   3/9/2023
%% Problem Statement
% You are designing the interface for a security safe.
% The safe uses a potentiometer as the dial and a button to lock in that 
% value before turning to the next value. That is, the user would turn the 
% dial to the correct number. Once the dial is in the correct position, 
% the user would press a button to lock in that value. 
% If the lock had four values in the combination, 
% the user would then repeat this process three more times.
%% Housekeeping
clc;clear;
%% Variables to be used
% Inputs
% Attached - yes/no whether an Arduino is actually attached
% Range - upper value of numbers on the dial
% Combo - correct safe combination
% Status - status of safe - either Locked or Unlocked
% Max_volt - voltage value through potentiometer
% Attached - set to yes or no, tells whether the arduino is there or not
% Arnold - arduino


% Intermediate Variables
% Button - variable that stores button state 0 (unpressed) or 1 (pressed)
% Dial - variable that stores voltage from potentiometer 
% row - number of rows of the combination
% col - number of columns in the combination
% Inc_Count - used to add on to the Incorrect vector
% Counter - variable in for loop checking if the button is pressed then reading the voltage 
% check - variable in for loop for checking if Dial and Combo match
% Dial_Raw - [V] raw voltage values




% Outputs
% Status - status of safe after combination has been entered - either Locked or Unlocked
% Incorrect - vector containing index values of any incorrectly entered combination values

%% Inputs
% Generate_Attached_Range_Combo_Status % This sets the variable Attached to either 'yes' or 'no'.

%% Test Case 1

% Input
Range = 8;
Combo = [3 5 1 6];

% For the button prompt:
%    Enter multiple 0s to make sure you repeatedly are asked for another button input.
%    When you enter 1, you should immediately be prompted to enter a voltage. Test
%    this behavior between every voltage value entry.
% For the voltage prompt (enter one each time and button prompt should be asked between each):
%    1.42         1.71        0.16         2.52
% This should translate into an entered combination of [3 4 1 5], which is different that the correct combination stored in Combo.

% Output
%  Incorrect = [2 4];
%  Status = 'Locked';

%% Testing if the arduino works
Range=2;
Combo=[2 2];

%% Attached Status
Attached='yes'; % updates status of arduino being attached or not, done manually

%% Program
% Start writing your program here

%% Initalizing-all of this initializes extra variables

Dial=[]; %sets dial as an empty matrix
Dial_Raw=[]; %sets dial raw as an empty matrix
[row,col]=size(Combo); % sets row and col to the amt of rows and columns
Incorrect=[]; % sets incorrect as an empty matrix
Inc_Count=0;% sets inc count to zero
Max_Volt=4.5; %sets the max volt to 4.5
%section
%counter
%% Coding stuff
if strcmpi(Attached,'yes') % checks if the status is attached
    Arnold=arduino(); % names arduino "Arnold"

    for Counter=1:col % for 1-the number of columns of the combination
        Button=0;

        while Button==0 % do this while the button isn't being pressed
            Button=readDigitalPin(Arnold,'D2'); %set the button value to the value of the pin D2
            if Button==1
                Dial_Raw(1,Counter)=readVoltage(Arnold,'A0'); % set the raw dial value to whatever the value is
                Dial(1,Counter)=ceil(Range*(Dial_Raw(1,Counter)/Max_Volt));
                pause(1)
            end

        end
    end
else
    for Counter=1:col % runs the command for Range number of times
        Button=0;

        while Button==0 %while the button is zero, you will be caught in an infinite loop until the button is pressed
            Button=ButtonSim; % assigns button sim to button

            if Button==1 % if the button is pressed, do this
                Dial_Raw(1,Counter)=DialSim; %Assigns the value of Dial sim to 
                Dial(1,Counter)=ceil(Range*(Dial_Raw(1,Counter)/Max_Volt));
                pause(1)

            end
        end
    end
end

        

%% Comparison


for check=1:col %for the number of columns do this
    if Dial(1,check)~=Combo(1,check) %if the "check" value of dial doesn't equal the check value of Combo, do this
        Inc_Count=Inc_Count+1; %adds on to inc count to increase Incorrect
        Incorrect(1,Inc_Count)=check % for the 'Inc_Count'th value of incorrect, put in the value of check (shows location of the incorrect value)
   
    end
end




if isempty(Incorrect) %if incorrect is empty, do this
    Status='Unlocked' %set the character array 'Status' to 'Unlocked

    if strcmpi(Attached,'yes') %if the arduino is attached, do this
    Written=writeDigitalPin(Arnold,'D3',1); %light up the LED in D3

    end
else 
    Status='Locked' %Sets status to 'Locked'

end
