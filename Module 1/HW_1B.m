% Ella Schafer ENGR1410-126 2023-1-15
%% problem statement 
% A rod on the surface of Jupiter’s moon Callisto has a volume 
% of 0.3 cubic meters. Write a MATLAB program that will determine the 
% weight of the rod in units of pounds-force. 
%% Housekeeping
clear; clc; %This clears the command window and workspace for ease of access
                    %This is a blank space for clarity
%% Variables to be used

% Inputs (What is given)
A=1.25; % [m/s^2] this is the Acceleration due to gravity on Callisto (A)
V=0.3; % [m^3]This is the volume of the rod (V)
SG=rand*21+0.5; % [-]This generates a random value for Specific Gravity(SG)
%It is known that the density of water is 1000 kg/M^3

%Intermediates
% D is Density of an object [Kg/m^3]
% M is the Mass of an object [Kg]

% Outputs (What is calculated)
% W - weight [lbf]

%% Equations
% Weight=force*Accleration
% Density= Mass/Volume
% Specific Gravity= Density Object/Density Water
% 1[N]=.225 [lbf]
%% Program
% Start writing your program here

D=SG*1000; % [Kg/m^3] this calculates the rod's density by multiplying its SG and water's density
M=D*V; % [Kg] This calculates the mass by multiplying Density and Volume to isolate Mass
W=M*A; % [N] This calculates the weight by multiplying the mass and acceleration
W=W*.225 % [lbf]This replaces the Weight in [N] into Weight in [lb f]