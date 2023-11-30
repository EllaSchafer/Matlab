%example question 1
Y=1; %specifically scalars, so didn't need to worry about . operators
T=2;

X=(2+Y^(4*T+3))/(Y+5^T)

%% Example question 2
mass=90;
% Dat=[6000 6200 6400 6600 6800 7000];
% T=2*pi*sqrt(mass./Dat);
% Dat=[Dat;T]; %oncatination would have also worked
% meanValues=[mean(Dat(1:2:end)),mean(Dat(2:2:end))];

%% Proper example 2, use colun as a range
mass=90;
Dat=6000:200:7000;%need a bracket if you put scalars together but range notation doesnt
%need, would't be wrong if u put brackets.
Dat(2,:)=2*pi*(mass./Dat).^.5; %indexing to put in second row
meanValues=mean(Dat,2);%didn't include comma 2 it will do colums, but with this will take of ROWS

%7 3 5