function [x1,x2]=QuadEqn(a,b,c) %tells matlab you define equation quad eq is function name, then list imputs a, b, c0
%outputs are x1 and x2, if there was 1 you dont need square brackets, don't
%
x1 = (-b+sqrt(b^2-4*a*c))/(2*a); %a=C1 b=c2
x2 = (-b-sqrt(b^2-4*a*c))/(2*a);