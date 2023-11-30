k=0;
while true
    k=k+1;
    if k>randi(999,1)



choice=menu('will you be my Valentine?', 'yes :)', 'no :(');
if choice==1
    result= msgbox('yay!!!');
elseif choice==2
    result=choice;
    choice=menu('will you be my Valentine?', 'yes :)', 'no :(');
        end
    end
end
