%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Mean of error function

function [err] =  MSE(y_pred, y_test)
err = sum((y_test - y_pred).^2)/length(y_test);
end

