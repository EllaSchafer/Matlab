function [b]=ButtonSim()
b=input('Enter a 0 or 1 to indicate if the button is currently being pushed (1) or not (0):  ');
while b~=0 && b~=1
    warning('You did not enter 0 or 1!')
    b=input('Enter a 0 or 1 to indicate if the button is currently being pushed (1) or not (0):  ');
end