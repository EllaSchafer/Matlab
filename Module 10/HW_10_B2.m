%% Variables
% Inputs
% x - angle in degrees

% Output
% partA - ordinate values for part A
% partB - ordinate values for part B
% partC - ordinate values for part C

%% Program
% Start writing your program here
x=0:360;

subplot(1,3,1);plot(x,sind(x))
subplot(1,3,2);plot(x,3*sind(x))
subplot(1,3,3);plot(x,sind(3*x))

grid on;
xlabel('');
ylabel('');
xlim()
ylim()
axis()