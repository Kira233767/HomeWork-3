%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ridge Regression Function
%%% Input : X(predictors), Y(response), lambda(regularizaiotn parameter)
%%% Output: w (renewed parameters)

function [w] = RidgeRegress(X, Y, lambda)
[a, b] = size(X' * X);

%calculate the invers part
den = X' * X + eye(a,b) * lambda;

if det(den) == 0  %Prevent that the projection matrix is not inversible 
    disp('The matrix is not inversible');
    w = 0;
else
    w = den^(-1) * X' * Y;
end

end