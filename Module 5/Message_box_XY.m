choice=menu('Choose','add','subtract', 'multiply', 'divide');

prompt={'Enter x' 'Enter y'};
dlg_title='Input';
num_lines=1;
def={'',''};
answer=inputdlg(prompt, dlg_title, num_lines, def);

x=str2num(answer{1});

y=str2num(answer{2});

if choice==1
    result=x+y;
elseif choice==2
    result=x-y;
elseif choice==3
    result=x*y;
else
    result=x/y;
end

h=msgbox(['Result = ' num2str(result)]);