function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    J_history(iter) = computeCost(X, y, theta);
    sum0=0;
    sum1=0;
    sum2=0;
    for i=1:m
    sum0=sum0+X(i,:)*theta-y(i);
    sum1=sum1+(X(i,:)*theta-y(i))*X(i,2);
    sum2=sum2+(X(i,:)*theta-y(i))*X(i,3);
    end
   theta(1)=theta(1)-alpha*(1/m)*sum0;
   theta(2)=theta(2)-alpha*(1/m)*sum1;
   theta(3)=theta(3)-alpha*(1/m)*sum2;
end

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end


