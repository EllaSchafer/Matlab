% Variables to be used
% Inputs
% Pipe Properties.xlsx workbook which contains information about pipes and fluids

% Outputs
% Pipes - table with all the original data read in from Excel plus a new
% column named Friction which stores the friction factor [-] for each pipe
clc;clear;
%% Program
% Start writing your program here
% (-2*log10((k/D)/3.7+2.51/(RE*sqrt(f2))))^(-2)
% RE=u*D/n;
% f   - initial estimate of the friction factor [-]
% k   - roughness height [m]
% D   - pipe diameter [m]
% u   - fluid speed [m/s]
% n   - kinematic viscosity [m^2/s]
%%
% Test Case
% Pipe Properties.xlsx
% OuTput
% Pipes.Friction = [0.0251; 0.1381; 0.0252; 0.0267; 0.0874; 0.0767; 0.1151; 0.1316; 0.0239; 0.0522]
Pipes=readtable("Pipe Properties.xlsx")
k=Pipes.Roughness_m_
D=Pipes.Diameter_m_
u=Pipes.FluidSpeed_m_s_
n=Pipes.KinematicViscosity_m_2_s_
RE=[]
Friction=[]
for bro=1:height(Pipes)
RE=u(bro)*D(bro)/n(bro)
     if RE<2300
        Pipes.Friction(bro)=64/RE
     else
        Pipes.Friction(bro)=(1/(-1.8*log10((k(bro)./D(bro)./3.7).^1.11+6.9./RE))).^2
     end

end