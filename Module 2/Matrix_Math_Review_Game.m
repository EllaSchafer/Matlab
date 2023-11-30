%% Matrix Math Review Game
% William Martin - General Engineering, Clemson University
% Last Revised: 2019-08-25

clear
clc
% warning prompt
wp1='Do not click the run button again, or after completion of the program the program will restart and erase the output message you need. If you double-clicked instead of single-clicked on the run button this will also happen so you should chose to end the program and rerun it. Additionally if you allowed MATLAB to convert this file to a Live Script file you will need to end the program and start from the original m-file.';
Note=questdlg(wp1,'Program Warning','OK','End Program','OK');
if strcmpi(Note,'End Program')
    error('You chose to end the program')
end
wp2='You have begun the program. You will be prompted for your name and section number in the command window after which you will be asked matrix math questions via pop-up windows and in the command window.';
Note=questdlg(wp2,'Program Warning','OK','OK');
%% Student Information
Student=input('Enter your name: ','s'); % Text input for student's name
Section=input('Enter your section number: '); % Numerical input for section

%% Program Selection and Control
ProgOpt={'Homework (all the below)', 'Dimensional Does it Work', 'Dot Operators', 'Matrix Math by Hand'}; % Creating selections for selection in the listdlg
[Indx,tf] = listdlg('ListString',ProgOpt,'SelectionMode','single'); % list that user can choose one topic from
while tf==0 % tf == 0 indicates that the user did not make a selection, so the list is repeatedly displayed until a selection is made 
    [Indx,tf] = listdlg('ListString',ProgOpt,'SelectionMode','single');
end

Correct=0; % Running count of number of correct answers
Attempts=0; % Running count of number of questions attempted
while Correct < 25 % loop that repeats around until 25 correct responses have been made
    Attempts=Attempts+1;
    % NOTE: to end loop use CTRL+C (press CTRL and C keys at the same time)
    % conditional which depends on question type selected
    if strcmpi(ProgOpt(Indx),'Dimensional Does it Work') || (strcmpi(ProgOpt(Indx),'Homework (all the below)') && mod(Correct+1,5)~=0 && Correct<20)
        %% Dimensional Does it Work
        TF=randi(3); % Generate distribution of correct to incorrect answers
        AM=randi(3); % Generate distribution of addition to multiplication questions
        Dim=randi(14,1,4)+1; % Generate random dimension values (all forced to be >1 so no issues with scalars)
        if AM==1 % Addition (~1/3 of questions)
            if TF==1 && Dim(1)~=Dim(3) && Dim(2) ~= Dim(4) % Invalid Problem
                prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, is A+B valid?',Dim(1),Dim(2),Dim(3),Dim(4));
                ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                while strcmpi('',ANSW) % Checking for response
                    ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                end
                if strcmp(ANSW,'No') % Correct Answer
                    Correct=Correct+1;
                    fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
                else % Incorrect Answer
                    fprintf('Incorrect. You cannot add a (%0.0f x %0.0f) matrix to a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(3),Dim(4));
                end
            else % Valid Problem
                prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, is A+B valid?',Dim(1),Dim(2),Dim(1),Dim(2));
                ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                while strcmpi('',ANSW) % Checking for response
                    ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                end
                if strcmp(ANSW,'Yes') % Correct Answer
                    Correct=Correct+1;
                    fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
                else % Incorrect Answer
                    fprintf('Incorrect. You can add a (%0.0f x %0.0f) matrix to a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(1),Dim(2));
                end
            end
        else % Multiplication (~2/3 of questions)
            if TF==1 && Dim(2)~=Dim(3) % Invalid Problem
                prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, is A*B valid?',Dim(1),Dim(2),Dim(3),Dim(4));
                ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                while strcmpi('',ANSW) % Checking for response
                    ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                end
                if strcmp(ANSW,'No') % Correct Answer
                    Correct=Correct+1;
                    fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
                else % Incorrect Answer
                    fprintf('Incorrect. You cannot multiply a (%0.0f x %0.0f) matrix by a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(3),Dim(4));
                end
            else % Valid Problem
                prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, is A*B valid?',Dim(1),Dim(2),Dim(2),Dim(3));
                ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                while strcmpi('',ANSW) % Checking for response
                    ANSW=questdlg(prompt,'Dimensional Does it Work?','Yes','No','Yes');
                end
                if strcmp(ANSW,'Yes') % Correct Answer
                    Correct=Correct+1;
                    fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
                else % Incorrect Answer
                    fprintf('Incorrect. You can multiply a (%0.0f x %0.0f) matrix by a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(2),Dim(3));
                end
            end
        end
        
    elseif strcmpi(ProgOpt(Indx),'Matrix Math by Hand') || (strcmpi(ProgOpt(Indx),'Homework (all the below)') && mod(Correct+1,5)==0 && Correct<20)
    %% Matrix Math by Hand
        Dim=randi(3,1,3); % Generate random dimension values
        M1=randi(10,Dim(1),Dim(2)); % Generate Matrix 1
        M2=randi(10,Dim(2),Dim(3)); % Generate Matrix 2       
        
        % Displaying initial matrices
        fprintf('Multiply the following two matrices, vectors, or scalars:\n')
        fprintf('%3.0f',M1(1,:))
        fprintf('  *  ')
        fprintf('%3.0f',M2(1,:))
        for ii=2:max(Dim(1),Dim(2))
            fprintf('\n')
            if Dim(1)>=ii
                fprintf('%3.0f',M1(ii,:))
            else
                fprintf('%s',blanks(3*Dim(2)))
            end
            fprintf('     ')
            if Dim(2)>=ii
                fprintf('%3.0f',M2(ii,:))
            end
        end
        fprintf('\n\n')
        
        % Asking for user's answer
        ANSW=input('Enter the product using correct MATLAB matrix notation, i.e. [x,x;x,x]: ');
        Soln=M1*M2;
        if isequal(ANSW,Soln) % Correct Answer
            Correct=Correct+1;
            fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
        else % Incorrect Answer
            fprintf('Incorrect. The correct answer is:\n')
            % Displaying Correct Matrix
            for ii=1:Dim(1)
                fprintf('%5.0f',Soln(ii,:))
                fprintf('\n')
            end
            fprintf('\n')
        end
        
    else
    %% Dot Operators
        Dot=randi(2); % Generate if problem needs dot
        Dim=randi(14,1,3)+1; % Generate random dimension values (all forced to be >1 so no issues with scalars)
        if Dim(1)==Dim(2) % Preventing a square matrix as it could work with and without a dot
            Dim(2)=Dim(2)+1;
        end
        if Dot==1 % No Dot Needed
            prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, does A*B require a dot (element-by-element) operator?',Dim(1),Dim(2),Dim(2),Dim(3));
            ANSW=questdlg(prompt,'Dot (Element-by-Element) Operators','Yes','No','Yes');
            while strcmpi('',ANSW) % Checking for response
                ANSW=questdlg(prompt,'Dot (Element-by-Element) Operators','Yes','No','Yes');
            end
            if strcmp(ANSW,'No') % Correct Answer
                Correct=Correct+1;
                fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
            else % Incorrect Answer
                fprintf('Incorrect. You do not need a dot (element-by-element) operator to multiply a (%0.0f x %0.0f) matrix by a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(2),Dim(3));
            end
        else % Dot Needed
            prompt=sprintf('If A is a (%0.0f x %0.0f) matrix and B is a (%0.0f x %0.0f) matrix, does A*B require a dot (element-by-element) operator?',Dim(1),Dim(2),Dim(1),Dim(2));
            ANSW=questdlg(prompt,'Dot (Element-by-Element) Operators','Yes','No','Yes');
            while strcmpi('',ANSW) % Checking for response
                ANSW=questdlg(prompt,'Dot (Element-by-Element) Operators','Yes','No','Yes');
            end
            if strcmp(ANSW,'Yes') % Correct Answer
                Correct=Correct+1;
                fprintf('Correct! (%0.0f Correct/ %0.0f Attempts)\n\n',Correct,Attempts)
            else % Incorrect Answer
                fprintf('Incorrect. You do need a dot (element-by-element) operator to multiply a (%0.0f x %0.0f) matrix by a (%0.0f x %0.0f) matrix.\n\n',Dim(1),Dim(2),Dim(1),Dim(2));
            end
        end
    end
end

%% Results
% Displaying your results and information
fprintf('Program: %s\n',ProgOpt{Indx})
fprintf('Congrats! You have correctly answered 25 questions out of %0.0f attempts (%0.1f%% success rate).\n',Attempts,Correct/Attempts*100)
fprintf('%s\t\tENGR 1410-%0.0f\t\t%s\n\n',Student,Section,datetime(now,'ConvertFrom','datenum'))