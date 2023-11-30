%% Variables to be used
% Inputs
% x - the location where the slope of the line is being approximated

% Intermediate
% inc - the increment between the x_(i+1) and x_(i) which will start at 1

% Outputs
% slope - the final approximation of the slope at the specified point

%% Inputs
% This generates the scalar, X, with a random value which will be used as the point where the slope should be found
x = rand*9+1

%% Program
% Start writing your program here

y=5*x^2/(log10(7*x^4))
inc=1
P=1
xi=x+inc
yi=5*xi^2/(log10(7*xi^4))

slope=(yi-y)/(xi-x)
 slopei=slope

while P>.0001
    
    inc=inc/2
    xi=x+inc
   
    yi=5*xi^2/(log10(7*xi^4))
    slopei=slope
    slope=(yi-y)/(xi-x)
    P=abs(slope-slopei)/slopei

end