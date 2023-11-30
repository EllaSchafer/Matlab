%% Plotting
% Note: These Guided Notes are an M-file because the behavior of many of
% the plotting commands is not clear when run in an MLX file. Remember that
% you can run a section by selecting the "Run Section" in the Editor Ribbon
% or by pressing "Ctrl+Enter" on the keyboard.

% Enter starting vectors
H1 = [10, 15, 25, 35, 55];
H2 = [10, 30, 50, 70, 100];
P1 = [0.27, 0.41, 0.68, 0.95, 1.5];
P2 = [0.11, 0.33, 0.54, 0.76, 1.09];

%% 
% 1. What does the "figure" command do?

figure('color','w')

% Hint: Position the figure window you just created so you can see it as
% you run the following sections.
%%
% 2. What does the "plot" command do?

plot(H1,P1,'*k')

%%
% 3. What does the "plot" command do if there is already a plot in the
% figure window?

plot(H2,P2,'ob')

%%
% 4. What does the "close all" command do?

close all

%%
% 5. How many figure windows were created? How many plots?

figure('color','w')
plot(H1,P1,'xc')
figure('color','w')
plot(H2,P2,'dg')

%%
close all

%%
% 6. How many figure windows were created? How many plots? How is "hold on"
% different than "figure"?

figure('color','w')
plot(H1,P1,'xc')
hold on
plot(H2,P2,'dg')

%%
close all

%%
% 7. How many figure windows were created? How many plots?
figure('color','w')
plot(H1,P1,'+m', H2,P2,'sk')

%%
close all

%%
% Create vector of x values for a theoretical plot.
X1 = 1:5;
X2 = 1:0.1:5;

%%
% Plug x vectors into theoretical equation, y=2x^2, to get corresponding y
% vectors
Y1 = 2*X1.^2;
Y2 = 2*X2.^2;

%%
% 8. Why is data set 1 choppy and data set 2 smooth?

plot(X1,Y1,'-r',X2,Y2,'b--')
legend('Data Set 1', 'Data Set 2')

%%
close all

%%
% Setting a plot command equal to a variable is called "assigning a handle"
% to a plot. The handle is basically the plot's name. This is not commonly
% used in this class, except it is needed in MATLAB Grader. Notice that
% nothing changes or is different about the plot command.
Var=plot(X1,Y1,':m');