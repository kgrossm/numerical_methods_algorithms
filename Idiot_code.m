clear
clc
Type=input("Type in your favorite number here: ");
if Type==1
    disp('The lonliest number am I right?');
elseif Letter==1
    format short
    fprintf('Your favorite number is %d? Negative numbers are cool!',Type);disp('You are an idiot');
elseif Type==0
    disp('You got that Socratic vibe, I like it');
elseif Type>=2
    format short
    fprintf('Nice, %d is a great positive number',Type);
else
    disp('You are an idiot');
end