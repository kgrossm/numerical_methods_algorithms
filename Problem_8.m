clear
clc
%Define variables
TF = 32:3.6:93.2; %Farenheit temp range
TC = (5/9)*(TF-32); %To Celsius coversion
%Define function
rho = 5.5280E-8*TC.^3-8.5016E-6*TC.^2+6.5622E-5*TC+0.9997;
%Complete the plot
plot(TC,rho,'k');
hold on
title('Density of Freshwater Based on Temperature');
xlabel('Temperature (T_C) [C]');
ylabel('Density of Freshwater (rho) [g/cm^3]');
grid on
hold off
