%Homework 7 Problem 2 Code
% Written by Krista Grossmann 02.10.2019

clear
clc

var = 1;
while (1)
    if var == 0
        break
    elseif var/2 ==0
        break
    else
        var=var/2;
    end
end
fprintf('The smallest positive real number is %e',var);

    