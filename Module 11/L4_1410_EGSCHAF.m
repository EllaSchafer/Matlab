% Ella Schafer  ENGR 1410   4/13/2023

%% Problem Statement
%d write a program that will read in the data from the workbook and give
% the user two options (1) create a summary plot that contains all the
% experimental data or (2) create a detail plot of an individual data set 
% with the experimental data, theoretical trendline, and trendline equation.
% At the end of the program, the user should be asked if they want to create 
% a new summary plot, detail plot, or end the program.

%% Housekeeping
clc;clear;close all;

%% Variable List
% Inputs
% Information - table of values of material and format
% Data - table of time and temperature difference

% Intermediates
% time - time values from data [min]
% temp - temp values from data [deg C]
% r - rows of Information
% c - columns of Information
% C_Sum - for counter for Summary loop
% Form - variable used to get the format in summary
% C - polyfit data for the graph
% m - slope for the graph [min/deg C]
% b - y intercept for the graph [deg C]
% Choice - value of what the user chooses


%% Program
%% Inputs
Information=readtable('Cooling Data.xlsx','Sheet','Information'); % inputs information sheet into matlab as table
Data=readmatrix('Cooling Data.xlsx','Sheet','Data','Range','B1'); % inputs data shet into matlab as table

time=Data(1:2:end,:); % [min], the times in minutes
temp=Data(2:2:end,:); % [deg C], celcius values

[r,c]=size(Information); %gets row and column sizes of Information
Form='Form'; % initializes Form

%% Asking Graph Type
Choice=questdlg('What type of plot do you want to create?','Plot','Summary','Detail','Detail');
% Makes a questdlg box asking the type of plot, giving the 2 options, since
% detail is there twice it is the one that is highlighted

while isempty(Choice) % While the user doesn't pick something, do this
    warning('Invalid Selection!') %gives the user a warning message, code still runs
    Choice=questdlg('What type of plot do you want to create?','Plot' ,'Summary','Detail','Detail');
    % Makes a questdlg box asking the type of plot, giving the 2 options, since
    % detail is there twice it is the one that is highlighted

end

%% Summary + Detail initial

% Summary
if strcmpi(Choice,'Summary') % if the user chooses summary
    figure('Color','w') %creates a figure for summary

    for C_Sum=1:r %for the amt of rows, do this
        Form=Information{C_Sum,2}{1};% takes the format information from Information
        plot(time(C_Sum,:),temp(C_Sum,:),Form,'MarkerFaceColor',Form(1)); 
        % time(C_Sum,:),temp(C_Sum,:) - takes the C_sum'th row of time and
        % temp and graphs that as data

        % Form - currently holds the format data for the graph the
        % for loop is focusing on at the moment

        % 'MarkerFaceColor',Form(1) - indexes the first part of form, which
        % is the color data and makes that the marker face color

        hold on; % makes all of the graphs on the same figure
    end

    % Proper Plot Elements
    legend(Information{:,1}) %creates a Legend
    axis([0,10, 0,100]); % makes x axsis from 0 to 10, makes y axsis from 0 to 100
    grid on;
    title('Summary Plot EGSCHAF')
    xlabel('Time (t) [min]')
    ylabel('Temperature Difference (T) [\circC]')


% Detail
elseif strcmpi(Choice,'Detail') %if the user chooses Detail use this
    % List Dialouge
    List_Det=listdlg('PromptString','Select Material','ListString',Information{:,1},'SelectionMode','single'); % creates a list dialogue for different materials
    
    % Error Message
    if isempty(List_Det) % if the user doesn't pick a choice do this
        error('A selection must be made') % create an error message and terminates the program
    end

    % Making initial graph
    figure('Color','w') %creates a figure for summary
    Form_Det=Information{List_Det,2}{1}; % takes the format information from Information
    plot(time(List_Det,:),temp(List_Det,:),Form_Det,'MarkerFaceColor',Form_Det(1)) % plots the specific material's graph
    hold on; % keeps graphs together


    % Treadlines
    % Polyfit
    C=polyfit(time(List_Det,:),log(temp(List_Det,:)),1); % creates a polyfit for the specific material's graph
    % looking at them, all plots are linear, so followed linear plot rules
    m=C(1);% [min/deg C] slope value from polyfit
    b=exp(C(2)); % [deg C] intercept value from

    % Graphing Treadlines
    plot(time(List_Det,:),b*exp(m*time(List_Det,:)),Form_Det(1)) % plots treadlines
    text(time(List_Det,4)+1,temp(List_Det,4)+1,sprintf('y = %0.2fe^%0.2f*x',b,m),'EdgeColor',Form_Det(1),'Color',Form_Det(1)) % adds text

    % Proper Plot Elements
    axis([0,10, 0,100]); % axis limits
    grid on; %creates a grid
    title(sprintf('%s',Information{List_Det,1}{1})) %creates title
    xlabel('Time (t) [min]')  % lables x axis
    ylabel('Temperature Difference (T) [\circC]') % lables y axis

end

hold off; % stops the continuation of merging graphs


%% Infinite while loop
while ~strcmpi(Choice,'Stop')
    %Asking
    Choice=questdlg('What type of plot do you want to create?','Plot','Summary','Detail','Stop','Stop');
    % Makes a questdlg box asking the type of plot, giving the 2 options, since
    % detail is there twice it is the one that is highlighted
    
    while isempty(Choice) % While the user doesn't pick something, do this
        warning('Invalid Selection!') %gives the user a warning message, code still runs
        Choice=questdlg('What type of plot do you want to create?','Plot' ,'Summary','Detail','Detail');
        % Makes a questdlg box asking the type of plot, giving the 2 options, since
        % detail is there twice it is the one that is highlighted
    
    end
    % Summary + detail 
    if strcmpi(Choice,'Summary') % if the user chooses summary
    figure('Color','w') %creates a figure for summary

        for C_Sum=1:r %for the amt of rows, do this
            Form=Information{C_Sum,2}{1};% takes the format information from Information
            plot(time(C_Sum,:),temp(C_Sum,:),Form,'MarkerFaceColor',Form(1)); 
            % time(C_Sum,:),temp(C_Sum,:) - takes the C_sum'th row of time and
            % temp and graphs that as data
    
            % Form - currently holds the format data for the graph the
            % for loop is focusing on at the moment
    
            % 'MarkerFaceColor',Form(1) - indexes the first part of form, which
            % is the color data and makes that the marker face color
    
            hold on; % makes all of the graphs on the same figure
        end

    % Proper Plot Elements
    legend(Information{:,1}) %creates a Legend
    axis([0,10, 0,100]); % makes x axsis from 0 to 10, makes y axsis from 0 to 100
    grid on;
    title('Summary Plot EGSCHAF')
    xlabel('Time (t) [min]')
    ylabel('Temperature Difference (T) [\circC]')


    % Detail
    elseif strcmpi(Choice,'Detail') %if the user chooses Detail use this
        % List Dialouge
        List_Det=listdlg('PromptString','Select Material','ListString',Information{:,1},'SelectionMode','single'); % creates a list dialogue for different materials
        
        % Error Message
        if isempty(List_Det) % if the user doesn't pick a choice do this
            error('A selection must be made') % create an error message and terminates the program
        end
    
        % Making initial graph
        figure('Color','w') %creates a figure for summary
        Form_Det=Information{List_Det,2}{1}; % takes the format information from Information
        plot(time(List_Det,:),temp(List_Det,:),Form_Det,'MarkerFaceColor',Form_Det(1)) % plots the specific material's graph
        hold on; % keeps graphs together
    
    
        % Treadlines
        % Polyfit
        C=polyfit(time(List_Det,:),log(temp(List_Det,:)),1); % creates a polyfit for the specific material's graph
        % looking at them, all plots are linear, so followed linear plot rules
        m=C(1);% [min/deg C] slope value from polyfit
        b=exp(C(2)); % [deg C] intercept value from
    
        % Graphing Treadlines
        plot(time(List_Det,:),b*exp(m*time(List_Det,:)),Form_Det(1)) % plots treadlines
        text(time(List_Det,4)+1,temp(List_Det,4)+1,sprintf('y = %0.2fe^%0.2f*x',b,m),'EdgeColor',Form_Det(1),'Color',Form_Det(1)) % adds text

        % Proper Plot Elements
        axis([0,10, 0,100]); % axis limits
        grid on; %creates a grid
        title(sprintf('%s',Information{List_Det,1}{1})) %creates title
        xlabel('Time (t) [min]')  % lables x axis
        ylabel('Temperature Difference (T) [\circC]') % lables y axis
    end
end