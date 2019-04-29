%Define variables
z = linspace(-5,5);
%Define function
f_z = (1/(sqrt(2*pi)))*exp((-z.^(2)/2));
%Plot function
plot(z,f_z);
hold on
grid on
title('Standard Normal Probability Density Function');
xlabel('Z');
ylabel('Frequency');
hold off