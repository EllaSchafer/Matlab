%% Indexing Cell 1

% Insert Header Here
%% Problem Statement
% There is a cell array *StudentInfo*, which contains student course and grade 
% information. Each row contains information for a single student. The first column 
% contains their name stored as a character array, the second column contains 
% an ID number stored as a scalar, the third column contains a list of course 
% names stored in a cell array, and the fourth column contains a vector of course 
% grades. 
%
% Write the code to complete the following requirements. Your code should work 
% no matter how many rows are in StudentInfo, though you can assume that you will 
% always have at least three rows for the following problems:
%
% # Save the student ID number for the first student in a numeric array named *FirstID*.
% # Save the name of the second student in a character array named *SecondName*.
% # Save the vector of grades for the last student in a numeric array named *Grades*.
% # Save the third course name of the second to last student in a character array named *ThirdCourse*.
% # Save the first letter of the first course name for the first student in  a character array named *Letter*.
% # Save the last course name for the second student as a character array in 
% the first cell of a cell array *Performance*. Save the corresponding grade (the 
% last grade from the vector for the second student) as numeric array in the second 
% cell of the cell array *Performance*. Note: Each row could have a different 
% number of classes, so make sure you are extracting the last one.
%% Variable List

% Inputs
% StudentInfo - Student information (cell array)
%   Column 1: Student Name (character array)
%   Column 2: ID number (scalar)
%   Column 3: List of courses (1xN cell array)
%   Column 4: Course grades (1xN vector)

% Output
% FirstID      - student ID number for the first student (numeric array)
% SecondName   - name of the second student (character array)
% Grades       - vector of grades for the last student (numeric array)
% ThirdCourse  - third course name of the second to last student (character array)
% Letter       - first letter of the first course name for the first student (character array)
% Performance  - last course name and grade for the second student (cell array)
%% Housekeeping Commands


%% Inputs
% This section is only needed when running the code in MATLAB. MATLAB Grader 
% automatically creates these variables.

% Test Case 1
StudentInfo={'Youssef Ho',	   732900, {'CDE 103','ABC 101','IJK 109','EFG 105','HIJ 1080'}, [65,97,81,63,100];
             'Esmai Coulson',  332013, {'ABC 101','FGH 1060','EFG 105','CDE 103','DEF 1040'}, [86,100,83,73,90];
             'Jaime Crane',    415699, {'DEF 1040','JKL 1100','EFG 105','FGH 1060','CDE 103','IJK 109'}, [79,82,69,75,81,75];
             'Deanne Sharma',  212385, {'DEF 1040','HIJ 1080','KLM 111','BCD 1020'}, [70,99,76,90];
             'Kaisha Campbell',766583, {'BCD 1020','FGH 1060','ABC 101','DEF 1040','IJK 109','HIJ 1080'}, [86,65,93,63,96,87];
             'Phebe Tillman',  958111, {'HIJ 1080','JKL 1100','BCD 1020','DEF 1040','EFG 105'}, [57,89,79,80,74]};
% Test case output:
% FirstID = 732900
% SecondName = 'Esmai Coulson'
% ThirdCourse = 'ABC 101'
% Letter = 'C'
% Performance = {'DEF 1040', 90}

% % Test Case 2
% StudentInfo={'Kaisha Campbell',805362, {'JKL 1100', 'GHI 107', 'BCD 1020', 'ABC 101', 'HIJ 1080'}, [96,62,64,60,98];
%              'Peter Chaney',   469566, {'KLM 111', 'JKL 1100', 'DEF 1040', 'BCD 1020', 'GHI 107', 'EFG 105'}, [86,90,85,69,79,83];
%              'Youssef Ho',     625179, {'GHI 107', 'ABC 101', 'KLM 111', 'JKL 1100', 'IJK 109'}, [79,88,71,71,76];
%              'Maegan Wickens', 295958, {'DEF 1040', 'IJK 109', 'ABC 101', 'KLM 111'}, [88,87,93,90];
%              'Phebe Tillman',  440367, {'IJK 109', 'CDE 103', 'FGH 1060', 'BCD 1020', 'JKL 1100'	'KLM 111'}, [66,86,84,63,90,60]};
% % Test case output:
% % FirstID = 805362
% % SecondName = 'Peter Chaney'
% % ThirdCourse = 'ABC 101'
% % Letter = 'J'
% % Performance = {'EFG 105', 83}

%% Program

% Start writing your code here
% Save the student ID number for the first student in a numeric array named
% FirstID.
FirstID=StudentInfo{1,2}

% Save the name of the second student in a character array named
% SecondName.
SecondName=StudentInfo{2}

% Save the vector of grades for the last student in a numeric array named
% Grades.
Grades=StudentInfo{end,4}

% Save the third course name of the second to last student in a character
% array named ThirdCourse.
ThirdCourse=StudentInfo{end-1,3}{3}

% Save the first letter of the first course name for the first student in a
% character array named Letter.
 Letter=StudentInfo{1,3}{1}(1) 
 
% Save the last course name for the second student as a character array in
% the first cell of a cell array Performance.
 Performance=StudentInfo{2,3}(end)
% Save the corresponding grade (the last grade from the vector for the
% second student) as numeric array in the second cell of the cell array
% Performance.
 Performance={Performance{1},StudentInfo{2,4}(end)}