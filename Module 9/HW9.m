%% Variables to be used
% Inputs
% V – vector entered by user
% Note: because MATLAB Grader cannot accept user input, call the script "Generate_UserInput_V" anywhere you would ask the user to input a vector,
% like in line 14. The "Generate_UserInput_V" script effectively replaces the following line of code:
V = input('Enter a 1 x 5 vector: ');

% Outputs
% V – vector entered by user (corrected if entered transposed)

%% Program
% Start writing your program here

% Generate_UserInput_V % In MATLAB Grader use this line in place of asking the user to enter a vector. This generates a variable V, as if the user had entered it in response to the input function.

[r,c]=size(V)

if r~=1&&c~=5
   V=transpose(V)
   V = input('Enter a 1 x 5 vector: ');
   [r,c]=size(V)
   if r~=1&&c~=5
        V=transpose(V)
        V = input('Enter a 1 x 5 vector: ');
        [r,c]=size(V)
        if r~=1&&c~=5
            V=transpose(V)
            V = input('Enter a 1 x 5 vector: '); 
            [r,c]=size(V)
        end
    end
end
fprintf('The resulting 1 x 5 vector is:\n%0.0f %0.0f %0.0f %0.0f %0.0f ',V)
%%
KK=0

while KK<3
    Generate_UserInput_V
    [r,c]=size(V)
    if r==1&&c==5
        KK=873
    elseif r==5&&c==1
        V=transpose(V)
        KK=873
    else
           KK=KK+1
           if KK<3
                warning()
           elseif KK==3
               error()
           end
    end
end

fprintf('The resulting 1 x 5 vector is:\n%0.0f %0.0f %0.0f %0.0f %0.0f ',V)