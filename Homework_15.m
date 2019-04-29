%Homework_15 - Code written by Krista Grossmann
clear
clc

%Question 1
format short
Mat_1 = [10 2 -1; -3 -6 2; 1 1 5];
b = [27;-61.5;-21.5];
[L,U]= lu (Mat_1);
%disp(L)
%disp(U)

%Question 3 
d = L\b;
x = U\d; 
%disp(x)

%Question 4
format long
bT=[12; 18; -6];
d_r = L\bT;
x_r = U\d_r;
%disp(x_r)

%Question 5 and 7
format short
Mat_2 = [8 2 1; 3 7 2; 2 3 9];
[L,U] = lu(Mat_2);
disp(L)
disp(U)

%Question 6 and 7
q_6 = det(Mat_2);
%disp(q_6)