function J = costFunctionJ(X, y, theta)

% X is the "design matrix" contaning our training examples
% y is the class labels

m = size(X, 1);                         % number of traning examples
predictions = X*theta;                  % predictions of hypothesis function on all m examples
squaredErrors = (predictions - y) .^ 2; % squared errors

J = 1/(2*m) * sum(squaredErrors);
