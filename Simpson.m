function [I] = Simpson(x,y)
%Simpson function written by Krista Grossmann
%(04.17.2019-04.18.2019)
%Using Simpson's 1/3 rule in conjunction with trapeziodal rule in order to
%integrate experimental data
%Inputs:
% x - independent values of tabulated data
% y - dependent values of tabulated data
%Outputs:
% I - output value found using the Simpson's 1/3 method

%Check if inputs are the same length
[~,length_x] = size(x);
[~,length_y] = size(y);
if length_x ~= length_y
    error('Inputs must be the same length.');
end

%Check that x-input is equally spaced
x1 = x(1,1);x2 = x(1,length_x);
space = linspace(x1,x2,length_x); %if it is equally spaced then this will be equivalent to x
equal_det = x ./ space; 
if equal_det(1,(length_x-1)) ~= 1 %final value and first value will be the same, have to test middle value
    error('x input must have equally spaced intervals'); 
end
 
%Check to see if x has an odd number of intervals - even number of x points
odd = rem(length_x,2); 
interval = length_x -1;
if odd == 0 %even number of points - have to do Trap rule
    warning('The trapezoidal rule has to be used on the final interval.');
    doom = zeros(1,(length_x));
    for i = 2:(interval-1) 
        if rem(i,2) == 0 %even midpoints multiplied by 4
        doom(1,i) = 4*(y(1,i));
        else %odd midpoints multiplied by 2
        doom(1,i) = 2*(y(1,i));
        end
    end
    doom(1,1) = y(1,1); doom(1,length_x-1) = y(1,length_x);
    add = sum(doom);
    initial = ((x2-x1)*add)/(3*(interval));
    trap = ((x(1,length_x)-x(1,length_x-1))*(y(1,i)+y(1,i+1))/2);
    I = initial + trap; 
    
else %just need to do the Simpson's 1/3 rule
    doom = zeros(1,length_x);
    for i = 2:interval        
        if rem(i,2) == 0
        doom(1,i) = 4*(y(1,i));
        else
        doom(1,i) = 2*(y(1,i));
        end
    end
    doom(1,1) = y(1,1); doom(1,length_x) = y(1,length_x);
    top = sum(doom);
    I = ((x(1,length_x)-x(1,1))*top)/(3*(length_x-1));
end

