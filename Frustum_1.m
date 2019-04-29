clear
clc
%Code for general volume of thingy
Vol_cyl=pi*19*(12.5)^2;
Vol_f=((pi*14)/3)*((23^2)+(23*12.5)+(12.5^2));
Vol_tot=Vol_cyl+Vol_f;
%Ask user for input
h=input('What is the total height of the liquid in the tower?  ');
%Distinguish between cylinder and frustum
if h<= 19
    v = pi*h*((12.5)^2);
elseif h==23
    v = Vol_tot;
else
    z=h-19;
    r_h=12.5+(((23-12.5)/14)*z);
    Vol_fru=((pi*z)/3)*(((r_h)^2)+(r_h*12.5)+(12.5^2));
    v = Vol_fru+Vol_cyl;
end
fprintf('Your volume of evil is %d.', v);