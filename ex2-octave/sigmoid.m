function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


[row,col] = size(g);
if row ==1 && col ==1 
  g=1/(1+1/(e^z));
else 
  for i=1:row 
    for j=1:col
      val = z(i,j);
      g(i,j)=1/(1+1/(e^val));
     endfor
  endfor
endif

% =============================================================

end
