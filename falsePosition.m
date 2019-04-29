function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%falsePosition : finds the root of a function
%  [root,fx,ea,iter] = falsePosition(func,x_l,x_u,es,maxiter)
%  Uses the falsePosition model in order to find the root of func
% Created by Krista Grossmann 02.27.2019 - 03.03.2019
%Inputs:
%     func - name of function, which should be defined by user
%     xl - lower bound of bracketing
%     xu - upper bound of bracketing
%     es - stopping criterion (will default to 0.0001%)
%     maxiter - the number of iterations desired (will default to 200)
%Outputs:
%     root - the x value of the root of func
%     fx - the function value of the root
%     ea - approximate relative error (%)
%     iter - how many iterations were performed

%Define errors, errors everywhere
format long
if nargin < 5 || isempty(maxiter)
    maxiter = 200;
    if nargin < 4 || isempty(es)
        es = 1*10^(-4);
        if nargin < 3
            error('Must be at least 3 input arguments')
        end
    end
end
%Make sure that the input arguments make sense, and define things before if
%some are not present

if xl>xu
    error('Lower bound must be higher than upper bound'), end
%Define the bracket bounds and verify that it has a root
f_l = func(xl);
f_u = func(xu);
root_change = f_l*f_u;
if root_change > 0
    error('No sign change, choose different interval'),end
if root_change == 0
    error('Bounds of interval are root, choose a different interval'); end
iter = 0; xr = xl; ea = 100; %in beginning, there are 0 iterations and error is 100%

%Code used to actually determine the root
while (1)
    xrold = xr;
    xr = (xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)))); %Define the root by using the
    %equation found in the book
    iter = iter+1;
    if xr ~= 0
        ea = abs((xr-xrold)/xr)*100; %calculate the amount of error
    end
    if func(xl)>func(xu)
        xl = xr;
    elseif func(xu)>func(xl)
        xu = xr;
    else
        ea = 0;n
    end
    %Define the stopping criterion
    if iter >= maxiter || ea <= es
        break %prevents loop from continuing for all eternity
    end
end
root = xr;
fx = func(root);

