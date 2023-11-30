% math game
% enter name
%name enter your age
%quest dlg summation or multiplication
% what is random number+randmon mumber, if wrong, say "wrong! try again
%then go back to summation, multiplication, stop
%when stop say thx for playing
clc;clear

NAME=input('Please enter name:','s')
age=input(sprintf('%s please enter your age:',NAME))
first=questdlg('what game:','game selection','summation','Multiplication','summation')

while isempty(first)
    first=questdlg('what game:','game selection','summation','Multiplication','summation')
    warning('make a selection bro')
end

if strcmpi(first,'summation')
    x=randi(10)
    y=randi(10)
    z=x+y
    answer=input(sprintf('whats %0.0f+%0.0f',x,y))
    while answer~=z
        warning('u messed up, try again kid')
        answer=input(sprintf('whats %0.0f+%0.0f',x,y))
    end
elseif strcmpi(first,'Multiplication')
    x=randi(10)
    y=randi(10)
    z=x*y
    fprintf('%0.0f*%0.0f',x,y)
    answer=input(sprintf('whats %0.0f*%0.0f',x,y))
    while answer~=z
        warning('u messed up, try again kid')
        answer=input(sprintf('whats %0.0f*%0.0f',x,y))
    end
end
first=questdlg('what game:','game selection','summation','Multiplication','Stop','summation')
while ~strcmpi(first,'Stop')
    
    
    while isempty(first)
        first=questdlg('what game:','game selection','summation','Multiplication','summation')
        warning('make a selection bro')
    end   
    if strcmpi(first,'summation')
        x=randi(10)
        y=randi(10)
        z=x+y
        answer=input(sprintf('whats %0.0f+%0.0f',x,y))
        while answer~=z
            warning('u messed up, try again kid')
            answer=input(sprintf('whats %0.0f+%0.0f',x,y))
        end
    elseif strcmpi(first,'Multiplication')
        x=randi(10)
        y=randi(10)
        z=x*y
        fprintf('%0.0f*%0.0f',x,y)
        answer=input(sprintf('whats %0.0f*%0.0f',x,y))
        while answer~=z
            warning('u messed up, try again kid')
            answer=input(sprintf('whats %0.0f*%0.0f',x,y))
        end
    end
    first=questdlg('what game:','game selection','summation','Multiplication','Stop','summation')
end