function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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
%	if iter > 3 
%		if J_history(iter - 1) > J_history(iter - 2)
%			break;
%		else
%
%		end
%	end	
%	sum1 = 0;
%	sum2 = 0;
%        for i = 1:m,
%		 sum1 = sum1 + theta(1) + theta(2)*X(i,2) - y(i)  ;
%	end
%	temp1 = theta(1) - (alpha / m ) * sum1;
	
%	for i = 1:m,
%		sum2 = sum2 + ( (theta(1) + theta(2)*X(i,2) - y(i) ) ^ 2 )*X(i,2);
%	end

%	temp2 = theta(2) - (alpha / m ) * sum2;

%	theta(1) = temp1;
%	theta(2) = temp2;

	temp1 = theta(1) - alpha / m * sum(theta(1) + theta(2) * X(:, 2) - y);
	temp2 = theta(2) - alpha / m * sum((theta(1) + theta(2) * X(:, 2) - y) .* X(:, 2));
	theta(1) = temp1;
	theta(2) = temp2;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
  %  fprintf('updated value of j_history %f\n', J_history(iter));

end

%end
