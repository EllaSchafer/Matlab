%% Variables to be used
% Inputs
% d - distance from the light [m]
% RA - Resistance of photoresistor A
% RB - Resistance of photoresistor B
% RC - Resistance of photoresistor C

% Outputs
% m_RA - m value from power model for photoresistor A trendline
% b_RA - b value from power model for photoresistor A trendline
% m_RB - m value from power model for photoresistor B trendline
% b_RB - b value from power model for photoresistor B trendline
% m_RC - m value from power model for photoresistor C trendline
% b_RC - b value from power model for photoresistor C trendline

%% Program
% Start writing your program here
figure()
d=[1,3,6,10];
RA=[79,400, 1100, 2500]
RB=[150 840 2500 4900]
RC=[460 2500 6900 15000]

C=1:10
plot(d,RA,'sr');hold on;
CA=polyfit(log10(d),log10(RA),1)
m_RA=CA(1)
b_RA=10.^CA(2)
YA=b_RA*C.^m_RA
plot(C,YA,'r','LineStyle',':')


plot(d,RB,'ok')
CB=polyfit(log10(d),log10(RB),1)
m_RB=CB(1)
b_RB=10.^CB(2)
YB=b_RB*C.^m_RB
plot(C,YB,'k','LineStyle','--')


plot(d,RC,'db')
CC=polyfit(log10(d),log10(RC),1)
m_RC=CC(1)
b_RC=10.^CC(2)
YC=b_RC*C.^m_RC
plot(C,YC,'b')

text(10,10,'','EdgeColor','borderlo')
text(10,10,'')
text(10,10,'')

grid on;
xlabel('');
ylabel('');
xlim()
ylim()
axis()
legend('RA','RB','RC')









%% 
%% Variables to be used
% Inputs
% Y - year
% MGS - minimum gear size

% Outputs
% m - m value from exponential model
% b - b value from exponential model

%% Program
% Start writing your program here

Y=[0 5 7 16 25 31 37];
MGS=[.8 .4 .2 .09 .007 2E-4 8E-6]

figure()
plot(Y,MGS,'sr')
hold on
C=polyfit(Y,log10(MGS),1)
m=C(1)
b=exp(C(2))
xpf= 0:30
ypf=b * exp(m * xpf)
plot(xpf,ypf,'r')
YY=2.5*exp(-.5*xpf)
plot(xpf,YY,'b')
text(10,10,'','Color','r')
text(10,10,'','Color','b','LineWidth',)
grid on;
xlabel('');
ylabel('');
xlim()
ylim()
axis()


