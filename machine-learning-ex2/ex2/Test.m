data = load('ex2data2.txt');
X = data(:, [1, 2]); y = data(:, 3);
X = mapFeature(X(:,1), X(:,2));
m=length(y);
% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);
fprintf('%d',size(initial_theta,1));
% Set regularization parameter lambda to 1
lambda = 1;

h1=(initial_theta'*X')';
h=1./(1+exp(-h1));
%fprintf('%f ',y'*log(h));

grad=((1/m*((((h-y)'*X))))+((lambda/m)*initial_theta)')';
fprintf(' H %d:%d, M %d, X %d:%d, G %d:%d',size(h),m,size(X),size(grad));
fprintf('\n %d',grad);
