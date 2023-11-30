function [d]=DialSim()
d=input('Enter a voltage value for the dial within the interval [0,4.5): ');
while d<0 || d>=4.5
    warning('You entered a value outside of the acceptable range of [0,4.5)!')
    d=input('Enter a voltage value for the dial within the interval [0,4.5): ');
end