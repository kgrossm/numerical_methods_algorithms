clear
clc
%Name the variables
t = linspace(0,0.8);
q0 = 10;
R = 60;
L = 9;
C = 0.00005;
%Function name
q_t = q0.*exp((-R.*t)/(2*L)).*cos((sqrt((1/L*C)...
    -((R/2*L)^2)).*t));
q = q0*exp((-R*t)/(2*L)).*cos(sqrt((1/L*C)-(R/(2*L))^(2))*t);
%Plot the function
plot(t,q,'b');
hold on
title('Charge on Capacitor over Time');
xlabel('Time (t) [s]');
ylabel('Charge (q) [C]');
grid on
hold off
