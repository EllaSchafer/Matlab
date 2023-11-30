%% Variables to be used
% Inputs
% StreamData.mat is a .mat file as described in the problem statement

% Intermediate variables
% Stream - table with the following columns
%    ChannelName - names of the channels corresponding to the measurements
%    WaterLevel - height of water in channel in feet [ft]
%    ChannelWidth - width of the rectangular channel in feet [ft]
%    Velocity - velocity of flow in meters per second [m/s]

% Outputs
% Stream - table with the original data plus the newly calculated column
%     containing the flow rate in m^3/s
% StreamSorted - table with same data as Stream, but sorted in order of
%     increasing flow rates

%% Test Case 1 run with StreamData.mat
% Test case output:
% FlowRate column in Stream table:
%     [0.28; 0.25; 1.49; 2.28; 4.52; 1.02]
% Order of Channel Names in StreamSorted table:
%     {'Channel B'; 'Channel A'; 'Channel F'; 'Channel C'; 'Channel D'; 'Channel E'}
%% Program
% Start writing your program here
load('StreamData.mat')

FlowRate=Stream.WaterLevel.*Stream.ChannelWidth.*Stream.Velocity*.3048*.3048
FlowRate=num2cell(FlowRate)
FlowRate=cell2table(FlowRate)
Stream=[Stream,FlowRate]
StreamSorted=sortrows(Stream, "FlowRate")
