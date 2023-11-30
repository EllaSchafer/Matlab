%% 7C-integration midpt
clc;clear;
% Test Case 1
Xmin = 2;
Xmax = 10;
inc = 2;
% Test case output:
% area = 823.4722

% Start writing your program here
C=0
B=[]
BB=[]
for H=Xmin:inc:Xmax
    C=C+1
    B(1,C)=H
    G=(H+H-inc)/2
   BB(1,C)=((G^2+2^G)/log(G))*inc

 
end
area=sum(BB(2:end))

%% HW7C-integration variable inc

%% Variables to be used
% Inputs
% Xmin - the minimum limit of the range
% Xmax - the maximum limit of the range

% Outputs
% area - the final approximation of the area under the curve for the given range

%% Inputs

clc;clear;

% Test Case 1
Xmin = 0;
Xmax = 10;
% Test case output:
% area = 131.3823

% This generates the scalars, Xmin and Xmax, with random values which will be used to evaluate your code

inc=1;
Percent=1;
area=0
C=0
Old_store=[]
New_store=[]


% Program
% Start writing your program here
while Percent>0.0001
    inc=inc/2
    for Bro= Xmin:inc:Xmax
        C=C+1;
        Old_area=area;

        Old_store(1,C)=Old_area;
        
    
        Bruh=(2*Bro-inc)/2;
        y=(8*sin(Bruh)+.5*Bruh^2-Bruh);
        area=y*inc;
        New_store(1,C)=area;
    end
    Percent=(area-Old_area)/Old_area;
end







%%
clc;clear;

% Test Case 1
Xmin = 0;
Xmax = 10;

C=0
B=[]
BB=[]
area=0
C=0

OldArea=area;
Percent=1
inc=2
while Percent>.0001
    inc=inc/2
    C=0
    area=0
    OldArea=area;

    for H=Xmin:inc:Xmax
        OldArea=area;
        C=C+1;
        B(1,C)=H;
        G=(H+H-inc)/2;
        area=(8*sin(G)+.5*G^2-G)*inc+area;   
    end
    Percent=(area-OldArea)/OldArea

end

