%% random code
 for Section=1:(4.5/Range):4.5
                     Section_Top=Section(1,Counter)+4.5/Range
                     if Dial_Raw(1,Counter)<Section(1,Counter)&&Dial_Raw(1,Counter)>Section_Top(1,Counter)
                           Dial(1,Counter)=Section(1,Counter)
                    end
 end









 if strcmpi(Attached,'yes') % checks if the status is attached
    Arnold=arduino(); % names arduino "Arnold"
    for Counter=1:Range
        Button=readDigitalPin(Arnold,'D2');
        while Button==0
            Dial(1,Counter)=readVoltage(Arnold,'A0');
            C=1;
                while Dial_Raw(1,Counter)>Sections(1,C)
                    C=C+1;
                end
                Dial(1,Counter)=C;      
            pause()
      
        end
    end
 else
















      while Dial_Raw(1,Counter)>Sections(1,C) % while the raw voltage value is greater than the section, do this
                C=C+1; %add to the counter of sections, going through sections 

            end
            Dial(1,Counter)=C-1; % assigns the counter number-1 to dial     
            pause(1) %pauses so the machine has time to work

















            while Dial_Raw(1,Counter)>Sections(1,C) %while the raw data is greater than the sections value, do this
                    C=C+1; %add to the counter so you can go through sections over time

                end
                Dial(1,Counter)=C-1;   %set the dial value to 1-C, this is because C represents a value 1 greater than the value    
                pause(1) % pause for a second so the code can run








        if Button==1 %if the button is equal to 1
            Dial_Raw(1,Counter)=DialSim; % assign the "counter" number of Dial to whatever dial sim is
            C=1;
            while Dial_Raw(1,Counter)>Sections(1,C)
                C=C+1;
            end
             Dial(1,Counter)=C;    
            pause() % allows for a pause because the code runs so fast
        end










        