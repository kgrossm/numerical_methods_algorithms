function [L,U,P] = luFactor(A)
%LU Factorization function written by Krista Grossmann
%(04.01.2019-04.02.2019)
%Using a modified version of Gauss elimination to decompose for [A]
%Inputs:
% A - square matrix which is then decomposed
%Outputs:
% L - lower triangular matrix
% U - upper triangular matrix
% P - pivot matrix, used to account for changes in the pivoting
%To ensure you see all outputs instead of ans = L, be sure to call the
%outputs in the way of [L,U,P] = luFactor(A), or it will not make sense :-)

%Error testing
%Number of inputs
if nargin ~= 1
    error("Must have exactly one input");
end
%Making sure array is square matrix
[n,m] = size(A);
if n ~= m
    error("A must be a square matrix")
end

%The struggle begins (pivoting and decomposition)
P = eye(n,m); %initial pivot matrix is an identity matrix
%Separate by matrix dimensions (2, 3, 4, 5)
L = zeros(n,m);
U = A;

%Change pivot
for c = 1:1:(m-1)  %testing must be less than the full square, going column by column
    [~,row] = max(abs(U(:,c)));
    L(n,m) = 1;
    if row > c
        P([c row],:)= P([row c],:); %switch rows of pivots
        U([c row],:)= U([row c],:);
        for r = c:n
            L(r,c)= U(r,c)/U(c,c); %will go row by row in specific column to figure it out 
            row_subt = L(r,c)*U(c,:);
            row_this = U(r,:);
            if L(r,c) ~= 1 %safe to subtract
                Gauss_el1 = minus(row_this,row_subt);
                U(r,:) = Gauss_el1;
            end
        end
    else 
        for r = c:n
            L(r,c) = U(r,c)/U(c,c);
            row_subt = L(r,c)*U(c,:);
            row_this = U(r,:);
            if L(r,c) ~= 1
                Gauss_el1 = minus(row_this,row_subt);
                U(r,:) = Gauss_el1;
            end
        end     
    end %I don't know why, but L in the function screen, looks fine,
    %but when prompted in command window, it doesn't. Why?
end
end