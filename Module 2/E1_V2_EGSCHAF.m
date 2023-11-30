%Ella Schafer   1410-216    1/30/23

clc;clear;

%% Data
G=[9.8 3.7 1.6];
M=[25:65;50:-.5:30];

%% Travel
X=(2*M(2,:).^2).*(cos(M(1,:)).*sin(M(1,:)))/G(3);

nval=41;

%% calculations
S=(pi*X(2:4:end)/max(X)).^(1/7)/(log(nval)+exp(.6));