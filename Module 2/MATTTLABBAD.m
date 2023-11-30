%% Variables to be used
% Inputs
% M99 - matrix containing at least two rows and two columns

% Outputs
% Corn - corner elements of M99 flipped diagonally

%% Inputs
% This generates the input variable, M99, with random values which will be used to evaluate your code
M99=randi(100,randi(14)+1,randi(14)+1)-20

%% Code
% Write your statements here
a=flip(M99,1)
a=flip(a,2)
corn=a(1:(end-1):end,1:(end-1):end)