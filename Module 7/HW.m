%% Variables to be used
% Inputs
% Def – matrix of defective part numbers

% Outputs
% Comp – matrix comparisions to weekly average

%% Inputs
% This generates the random size matrix, Def, with random values which will be used to evaluate your code
Def = randi(15,randi([5 20]),randi([10 15]))

%% Program
% Start writing your program here
[row,col]=size(Def)
Comp=[]
C=0
for m=1:row
    for n=1:(col-1)
        C=C+1
        if Def(m,n)==Def(m,end)
            Comp(m,n)=0
        elseif Def(m,n)>Def(m,end)
            Comp(m,n)=1
        elseif Def(m,n)<Def(m,end)
            Comp(m,n)=-1
        end

    end
end