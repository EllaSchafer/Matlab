%% Variables
% Input
% p - scalar
% pw - character array
% entered - character array
% B - scalar
p=1
pw='Fight'
entered='FiGHT'
B=3
% Output
% C1 - logical output for part a
% C2 - logical output for part b
% C3 - logical output for part c

%% Inputs - Only edit this section if you are testing this code in MATLAB
%Generate_p_pw_entered_B % Comment this out to test in MATLAB. This generates the variables p, pw, entered, B

%% Start wrting your program here
% Part a
C1=p>7&&p<15
% Part b
C2=~strcmp(entered,pw)&&strcmpi(entered,pw)
% Part c
C3=B<=0||B>20