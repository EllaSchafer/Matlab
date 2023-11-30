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

inc=1
inc2=1
xi=x
P=1
y=5*x^2/(log10(7*x^4))
yi=5*xi^2/(log10(7*xi^4))
slope=(yi-y)/(xi-x)
G=slope
slope2=slope
xi2=x
yi2=5*xi2^2/(log10(7*xi2^4))
%% 
while P>.01
    inc=inc/2
    xi=x+inc
    yi=5*xi^2/(log10(7*xi^4))
    slope=(yi-y)/(xi-x)
    
    inc2=inc/2
    xi2=x+inc
    yi2=5*xi2^2/(log10(7*xi2^4))
    slope2=(yi2-y)/(xi2-x)
    P=abs(slope2-slope)/slope*100
    
end

disp(slope)