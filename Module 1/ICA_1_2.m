%Ella Schafer ENGR 1420 

%% Problem statement
%The maximum radius a falling liquid drop can have without breaking apart is given by the equation:  
%where  is the liquid surface tension,  is the acceleration due to gravity, 
% and  is the density of the liquid. Use this expression to determine the surface tension 
% in units of joules per meter squared [J/m^2].

%% Variables to be used
% Inputs
% R - maximum radius of a drop [in]
% SG - Specific gravity of liquid

% Intermediate variables
% rho_w - density of water [kg/m^3]
% g - acceleration due to gravity [m/s^2] 
% rho - density of liquid [kg/m^3]

% Outputs
% sigma - surface tension [J/m^2]

%% Inputs
% This generates random values for R and SG which will be used to evaluate your code.
R=.25;
SG=.79;

%% Program
% Start writing your program here
g=9.8;
R=R/12/3.28;
rho_w=1000;
rho=SG*rho_w; % [kg/m^3]
sigma=R^2*g*rho;
