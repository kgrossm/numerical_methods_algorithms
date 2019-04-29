syms x y z
%Problem 1 and 2
%E1 = 5*z -7*y == 50;
%E2 = 4*y + 7 *z == -30;
%E3 = -4*x + 3*y - 7*z ==40;
%A = [0 -7 5;0 4 7; -4 3 -7];
%B = [50; -30; 40];
%C = A\B; %Answer to problem 2

%Problem 3
%InvA=A';

%Problem 4
%actualinv = A^-1;

%Problem 5
%a = [6 -1; 12 8; -5 4];
%b = [4 0;0.5 2];
%c = [2 -2; 3 1];
%multAB = a*b;
%multAC = a*c;
%multBC = b*c;
%multCB = c*b;

%Problem 9 and 10 (line 35 is for 10)
%syms v w x y z
%R1 = 50 == 6*v - x;
%R2 = 0 == 3*w - 3*v;
%R3 = 160 == 9*x - w;
%R4 = 0 == 11*y - 2*z - w - 8*x;
%R5 = 0 == 4*z - w - 3*v;
%A = [6 0 -1 0 0;-3 3 0 0 0; 0 -1 9 0 0;...
%     0 -1 -8 11 -2; -3 -1 0 0 4];
%B = [50;0;160;0;0];
%C = A\B;

%Problems 11 and 12
syms F1 F2 F3 H2 V2 V3
e1 = -F1*cosd(30) + F3*cosd(60) == 0;
e2 = -F1*sind(30) - F3*sind(60) == -1000;
e3 = F2 + F1*cosd(30) + H2 == 0;
e4 = F1*sind(30) + V2 == 0;
e5 = -F2 - F3*cosd(60) == 0;
e6 = F3*sind(60) + V3 == 0; 
A = [ 1*cosd(30) 0 -cosd(60) 0 0 0; 1*sind(30) 0 1*sind(60) 0 0 0;...
    -cosd(30) -1 0 -1 0 0; -sind(30) 0 0 0 -1 0;...
    0 1 1*cosd(60) 0 0 0; 0 0 -sind(60) 0 0 -1];
B = [0; -1000; 0; 0; 0; 0];
C = A\B;


