function [L,U,P] = luFactortest(A)
%LU Factorization function written by Krista Grossmann (04.01.2019-04.
%Inputs:
% A - square matrix which is then decomposed
%Outputs:
% L - lower triangular matrix
% U - upper triangular matrix
% P - pivot matrix, used to account for changes in the pivoting

%Error testing
%Number of inputs
if nargin ~= 1
    error("must have exactly one input");
end
%Making sure array is square matrix
[n,m] = size(A);
if n ~= m
    error("A must be a square matrix")
end
sz = size(A);
n = sz(1);
L = eye(n);
P = eye(n);
U = A;
 
for i=1:sz(1)
 
    % Row reducing    
    if U(i,i)==0
        maximum = max(abs(U(i:end,1)));
        for k=1:n
           if maximum == abs(U(k,i))
               temp = U(1,:);
               U(1,:) = U(k,:);
               U(k,:) = temp;
 
               temp = P(:,1);
               P(1,:) = P(k,:);
               P(k,:) = temp;
           end
        end
 
    end
 
    if U(i,i)~=1
        temp = eye(n);
        temp(i,i)=U(i,i);
        L = L * temp;
        U(i,:) = U(i,:)/U(i,i); %Ensures the pivots are 1.
    end
 
    if i~=sz(1)
 
        for j=i+1:length(U)
            temp = eye(n);
            temp(j,i) = U(j,i);
            L = L * temp;
            U(j,:) = U(j,:)-U(j,i)*U(i,:);
 
        end
    end
 
 
end
P = P';
end