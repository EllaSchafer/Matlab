% Variables to be used
% Inputs
% Stocks - cell array containing
%     top element - cell array containing single row of stock abbreviations (character arrays)
%     bottom element - matrix 3 x N matrix of purchase price (row 1), current price (row 2), and number of stocks (row 3)

% Outputs
% CurrentHigh - character array of stock with the highest current price
% Cheapest - character array of stock with the lowest purchase price
% Best - cell array containing character array of stocks which have increased by 25% in value
% Profits - 2 x 1 cell array containign
%     element 1 - single-row cell array of stocks found in Best
%     element 2 - single-row vector contain profit from selling each stock in Best
% Total Profits - scalar containing total profit from selling all stocks in Best
clc;clear
%% Inputs
% Test Case 1
Stocks = {{'APL' 'BBT' 'ZZT'}; [29.76 11.69 38.06; 23.83 15.77 37.25; 58 48 3]}
% Test case output:
% CurrentHigh = 'ZZT'
% Cheapest = 'BBT'
% Best = {'BBT'}
% Profits = {{'BBT'}; 195.84}
% TotalProfits = 195.84

%% Program
% Write your program here

%% a
Stonks=cell2mat(Stocks(2,1))
[Mix,Loc]=max(Stonks(2,:))
CurrentHigh=Stocks{1,1}{1,Loc}

%% b
[MIN,LOC]=min(Stonks(2,:))
Cheapest=Stocks{1,1}{1,LOC}

%% C
D=(Stonks(2,:)-Stonks(1,:))./Stonks(1,:)*100
B=find(D>25)
Best=Stocks{1,1}{1,B}

%% D
pro=(Stonks(2,:)-Stonks(1,:)).*Stonks(3,:)
Profits={Best;pro(1,B)}

%% e
To=cell2mat(Profits(2,:))
TotalProfits=sum(To)