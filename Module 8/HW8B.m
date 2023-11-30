%% Variables to be used
% Inputs
% z – initial value **For the MATLAB Grader test, this value will be different from the z=100/810 value stated in the problem statement to check for hard-coded values.

%% Inputs
% This generates a random value for the scalar z.
if ~exist('z','Var')
    z=rand;
end

%% Code
% Write your statement here
fprintf('\n%0.1f',z)