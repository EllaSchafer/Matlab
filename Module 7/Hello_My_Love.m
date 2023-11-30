        choice=menu('will you be my Valentine?', 'yes :)', 'no :(');

K=1;
while choice==1
    K=K+1;
    if choice==1
        result= msgbox('yay!!!');
    elseif choice==2
        result=choice;
        choice=menu('will you be my Valentine?', 'yes :)', 'no :(');
    end
end