%% Variables to be used
% Inputs
% Q - heat energy in joules
% DT - temperature change in Kelvin
% Mass - mass in kg

% Outputs
% m - slope of trendline
% b - y-intercept of trendline
% Cp - specific heat of the material

%% Program
% Start writing your program here
mass=5;
Q=[17 40 58];
T=[2 5 7];
figure()
plot(Q,T,'rs'); hold on
C=polyfit(Q,T,1)
m=C(1);
b=C(2)
xint=5:70
yint=m*xint+b
plot(xint,yint)
xlabel('')
ylabel('')
xlim()
ylim()
grid on
Cp=1/m/mass;
TD=sprintf('\\deltaT = %0.2f Q',m)
text(10,5,TD)