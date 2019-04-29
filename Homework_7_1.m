% Homework 7 Problem 1 code
%By: Krista Grossmann 02.10.2019

Epsilon = 1;

while (1)
    if 1 + Epsilon <= 1 %epsilon must be so small that it registers as 0 when added to 1
        break, end
    Epsilon = Epsilon/2;
end
Epsilon=Epsilon*2; %step in line 9 reduces epsilon beyond smallest point
%line 11 brings that Epsilon value back to it's true value. 
