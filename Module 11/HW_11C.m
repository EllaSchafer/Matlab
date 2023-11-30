%% Variables to be used
% Input
% LogRho - logarithm of the density [g/cc]
% LogT - logarithm of the temperature [K]

% Intermediate
% PhaseData - N x 2 cell array containing boundary values where N is the number of phase divisions and the two columns are Log Density and Log Temperature values. The two values in each column should be stored as a 1 x 2 vector.

% Output
% mVals - column vector of the m values corresponding to the phase divisions listed in the table and stored in the cell array
% bVals - column vector of the b values corresponding to the phase divisions listed in the table and stored in the cell array

%% Inputs
% This generates the variables LogRho and LogT, replicating output created by the following two lines of code.
if ~exist('LogRho')
    LogRho=rand*12-10;
    LogT=rand*4+2;
end
% LogRho=input('Enter the logarithm of the Density [g/cc]: ');
% LogT=input('Enter the logarithm of the Temperature [K]: ');

%% Program
% Start writing your program here

PhaseData={[-10 0],[3.3 3.9];[0 2], [3.9 5.6];[0 0] [2 3.9]}
[r,c]=size(PhaseData)

mVals=[]
bVals=[]

figure()
xlabel('')
ylabel('')
text(-8,3,'')
grid on
bro=[]
Count=0
b=1
line_ys=[]
for kk=1:r
    L=PhaseData{kk,1}
    V=PhaseData{kk,2}
    if PhaseData{kk,1}(1)-PhaseData{kk,1}(2)==0
        plot([0,0],PhaseData{kk,2},'k');
        
        mVals(kk,1)=0
        bVals(kk,1)=2.95

    else
        
        L=PhaseData{kk,1}
        V=PhaseData{kk,2}
        Count=Count+1
        C=polyfit(L,V,1)
        mVals(Count,1)=C(1)
        bVals(Count,1)=C(2)
        line_ys(kk)=C(1)*LogRho+C(2);
        plot(PhaseData{kk,1},mVals(Count,1)*PhaseData{kk,1}+bVals(Count,1),'r');
        
    end
        
         
    hold on;
end
plot(LogRho, LogT)
if (LogRho<=0 ) && (LogT<=line_ys(1))
    PHASE='Molecular Fluid'
elseif ( LogRho > 0 ) && (LogT<=line_ys(2))
    PHASE='Metallic Fluid'
else
    PHASE='Plasma'
end

fprintf('For the log density %0.1f and log temperature %0.1f, the phase is %s',LogRho,LogT,PHASE)