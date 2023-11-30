%% Variables to be used
% Inputs
% AM – vector with even number of elements

% Outputs
% PDS – scalar containing the product of even elements divided by the sum of odd elements

%% Inputs
% This generates a vector, AM, of random size with random values which will be used to evaluate your code.
AM = rand(1,randi(15)*2)*20

%% Program
% Start writing your program here
AM =[9 3 5 0.5 10 4]
PDS = 0.25     %Detailed calculation: (3*0.5*4)/(9+5+10) = 0.25
C=0
odd=0
even=1

PDS=0
for H=1:2:length(AM)
    C=C+1
   odd=AM(1,H)+odd
   even=AM(H+1)*even
   
   PDS=even/odd

end