%Ella Schafer   ENGR 1410-126   1/26/2023
%% Problem Statemet
% At your firm, you will regularly boil 100 mL of various liquids using a hot plate.
% You know that the time it takes to boil each liquid is dependent on the type and amount of liquid,
% as well as the room temperature (which can vary significantly in your lab), and the power of the hot plate. 
% You are to write a program that will estimate the amount of time it will take for the various liquids to boil.

%% Housekeeping
clc;clear;
%% Variables to be used
% Inputs
% T_room = Room Temperature for experiments [°F]
% T_room_water = Room Temperature for determining hot-plate power using water [°F]
% Time_water = Time for water to boil when determining hot-plate power [s]
% Stored inside LiquidDat.mat:
% MatDat = Material Data for all Liquids where: Col 1 = Boiling Point [°C]
%                                               Col 2 = Specific Heat [J/(g °C)]
%                                               Col 3 = Specific Gravity [-]

%V=0.100; % [L] %this is the volume of the liquid
%DW=1000; % [g/L] Density of water

% Intermediate variables (these must be defined)
% Power = Output power of the hotplate, as determined from boiling the water [W]
% m = vetor of mass of 100 mL of each liquid [g]
% DeltaT = vector of change in temperature between boiling and room temperature for each liquid [°C]
% Q = vector of heat energy required to make each liquid boil from room temperature [J] 

% Outputs
% MatDat = Material Data for all Liquids where: Col 4 = time until liquids boil [min]

%% Inputs - Only edit this section if you are testing this code in MATLAB
%Generate_T_room_T_room_water_Time_water % Comment this out to test in MATLAB. This generates the scalars T_room, T_room_water, and Time_water.

%% Test Case 1
% Use LiquidDat.mat
T_room = 75;    % [°F] Room temperature for experiments
T_room_water = 78; % [°F] Room temperature for determining hot-plate power using water
Time_water = 535; % [s] Time for water to boil when determining hot-plate power
% Output: Col 4 of MatDat = [9.12;1.55;0.49;12.88;23.40;18.18;14.26]

%% Program
load('LiquidDat.mat', 'MatDat'); %This loads MatDat, where it can then be used to take values from
DW=1000; % [g/L] This is the density of water
V=.100; % [L] this is the volume of the container of liquid

%% F to C conversions 
T_room=(T_room-32)*100/180; % [Degrees Celsius] this converts the room temperature from Farenheight to Celsius
T_room_water=(T_room_water-32)*100/180; % [Degrees Celsius] this converts the water room temperature from Farenheight to Celsius
DeltaT=MatDat(:,1)-T_room; % [Degrees Celsius] This calculates the change in temp by taking the boiling point (temp final)-the room temperature
DeltaTW=MatDat(1)-T_room_water; % [Degrees Celsius] This calculates the delta T for water to use in power calculations

%% Density Calculations
SG=MatDat(:,3); % [-] This indexes the 3rd column of MatDat, the Specific Gravity, to be used for Density calculations
D=SG*DW;% [g/L] This calculates the density of the liquids by multiplying the Specific Gravity by the Density of water

%% Power Calculations
m=D*V; % [g] This calculates the mass by multiplying the Density and Volume
QW=m(1).*MatDat(1,2).*DeltaTW; % [J] This calculates the heat energy of water by multiplying the mass, specific heat, and temp change of water
Power=QW./Time_water; % [W] This calculates the power of the plate by dividing the heat energy by the time 

%% Heat Calculations and Boiling Time
Q=m.*MatDat(:,2).*(DeltaT); % [J] This calculates the heat energy for all the liquids, not just water
Time_boil=Q/Power; % [s] This outputs a vector with all the time it takes to boil each liquid
Time_boil=Time_boil/60; % [min] This converts the boiling time into seconds
MatDat=[MatDat,Time_boil]; % this adds the boiling time into the fourth column of MatDat
