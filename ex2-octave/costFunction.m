function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
sizeTheta = size(theta)(1);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

hx = X * theta;
sig = sigmoid(hx);
part1 = y' * log(sig);
part2 = (1-y)' * log(1 - sig);
J = -(part1 + part2)/m;

diff = sig - y;
grad(1) = sum(diff)/m;
for i = 2:sizeTheta
   xi = X(:,i);
   grad(i) =  sum(diff' * xi)/m;
end
% =============================================================

end
