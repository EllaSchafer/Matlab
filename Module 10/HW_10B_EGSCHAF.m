% Ella Schafer  ENGR-1410 126   3/30/23

%% Problem Statement
% There is currently an effort in the United States to replace incandescent 
% light bulbs with more energy-efficient technologies, including compact 
% fluorescent lights (CFLs) and light-emitting diodes (LEDs). 
% The lumen [lm] is the SI unit of luminous flux, a measure of 
% the perceived power of light. Luminous flux is adjusted to reflect
% the varying sensitivity of the human eye to different wavelengths of light.

% To test the power usage, you run an experiment and measure the following data.
% Create a proper plot of these data, with electrical consumption (EC) on the ordinate.

%% Housekeeping
clc;clear;clear all;

%% Variables to be used
% Input
% Flux_i - Luminous flux [lm] for incandescents
% Flux_c - Luminous flux [lm] for CFLs
% Flux_L - Luminous flux [lm] for LEDs

% incandescent - electrical consumption [W] of incandescents
% cfl - electrical consumption [W] of CFLs
% leds - electrical consumption [W] of LEDS

%% Program
% Start writing your program here

%% initializing data
Flux_i=[80, 400, 600, 750, 1400]; % [lm] takes values fom the table that correlate with the LF of incandescent
Flux_c=[200, 400, 750, 1250, 1400]; % [lm] takes the LF values of CFL bulbs
Flux_L=[80, 200, 400, 600, 750]; % [lm] takes the LF values for LED bulbs

incandescent=[16, 38, 55, 68, 105]; % [W] takes the EC values of Incandescent bulbs
cfl=[5, 10, 18, 27, 33]; % [W] takes EC values of CFL
leds=[1.7, 3, 6, 9, 12]; % [W] EC values of LED lights

%% Creating a figure
figure('Color','w') % creates a figure with a white background

%% Ploting the data
plot(Flux_i,incandescent,'ob','MarkerFaceColor','b');hold on; % plots incandescent data, 
% ob=blue circles, and marker face color b turns the face solid blue, hold
% on keeps the plots on the same graph

plot(Flux_c,cfl,'sr','MarkerFaceColor','r'); hold on; %plots CFL data,
% sr=red square, marker face color r turns the face solid red, hold on
% keeps the graphs in the same figure

plot(Flux_L,leds,'dk') %plots the led data, dk=black diamonds

%% Legend creation
legend('electrical consumption [W] of incandescent)', ...
    'electrical consumption [W] of CFLs','electrical consumption [W] of LEDS') % adds a legend

%% axsis labeling and management
xlim([0,1500])% sets the max and min x values
ylim([0,110])% sets y min and max

xlabel('Luminous flux (LF) [lm]') % labels the x-axis
ylabel('electrical consumption (EC) [W]') % labels the y-axis

%% grids
grid on; % adds a grid to the graph