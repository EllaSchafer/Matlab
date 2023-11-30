clc;clear;
Message='Jeremy, Will You Be My Valentine?';
key=3;
Random_CA=char(randi([65,122],[1,length(Message)*key]));
Random_CA(3:3:end)=Message

%Key=Random_CA(3:3:end)