function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %


%   fprintf('Iteration = %d theta = [%f, ; %f]\nCost computed = %f\n', iter, theta(1,1), theta(2,1), computeCost(X, y, theta));

    theta11=theta(1,1)-(alpha/m)*sum((X*theta-y)*1);
    theta21=theta(2,1)-(alpha/m)*sum((X*theta-y).*X(:,2));
%    fprintf('theta1nou = %f theta2nou = %f\n', theta11, theta21);
    theta(1,1) = theta11;
    theta(2,1) = theta21;

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);
%    fprintf('Iter = %f J_history = %f\n', iter, J_history(iter));
%    pause;




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
