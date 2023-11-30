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

B=1
C=1
A(1,C)=B
G(1,C)=B
R=0
while ~(G(1,C)>=Target)
    C=C+1;
    B=B+2;
    R=B+R;
    A(1,C)=B;
    G(1,C)=R;
end
disp(A);
disp(G);
lastNum=A(1,end);
NN=G(1,C);